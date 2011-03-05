module RCAP
	# A Circle object is valid if
  # * it has a valid lattitude and longitude
	# * it has a radius with a value greater than zero
  class Circle < Point
    include Validation

		# Expresed in kilometers 
		attr_accessor( :radius )

    validates_presence_of( :radius )
    validates_numericality_of( :radius , :greater_than => 0 )

    XML_ELEMENT_NAME = 'circle' # :nodoc:

    XPATH = 'cap:circle' # :nodoc:

    def initialize( attributes = {} )
      super( attributes )
      @radius = attributes[ :radius ]
    end

		# Returns a string representation of the circle of the form
		#  lattitude,longitude,radius
    def to_s  # :nodoc:
      "#{ self.lattitude },#{ self.longitude },#{ self.radius }"
    end

    def inspect # :nodoc:
      "(#{ self.lattitude},#{ self.longitude },#{ self.radius })"
    end

    def to_xml_element # :nodoc:
      xml_element = REXML::Element.new( XML_ELEMENT_NAME )
      xml_element.add_text( self.to_s )
      xml_element
    end

    def to_xml # :nodoc:
      self.to_xml_element.to_s
    end

    def self.parse_circle_string( circle_string ) # :nodoc:
      lattitude, longitude, radius = circle_string.split( ',' )
      [ lattitude, longitude, radius ].map{ |e| e.to_f }
    end

    def self.from_xml_element( circle_xml_element ) # :nodoc:
      lattitude, longitude, radius = self.parse_circle_string( circle_xml_element.text )
      circle = self.new( :lattitude => lattitude,
                         :longitude => longitude,
                         :radius => radius )
    end

		# Two circles are equivalent if their lattitude, longitude and radius are equal.
    def ==( other )
      [ self.lattitude, self.longitude, self.radius ] == [ other.lattitude, other.longitude, other.radius ]
    end

    def self.from_yaml_data( circle_yaml_data ) # :nodoc:
      lattitude, longitude,radius = circle_yaml_data
      self.new( :lattitude => lattitude, :longitude => longitude, :radius => radius )
    end

    def to_h # :nodoc:
      RCAP.attribute_values_to_hash( [ 'radius', self.radius ],
                                     [ 'lattitude', self.lattitude ],
                                     [ 'longitude', self.longitude ])
    end

    def self.from_h( circle_hash ) # :nodoc:
      self.new( :radius => circle_hash[ 'radius' ], :lattitude => circle_hash[ 'lattitude' ], :longitude => circle_hash[ 'longitude' ])
    end
  end
end
