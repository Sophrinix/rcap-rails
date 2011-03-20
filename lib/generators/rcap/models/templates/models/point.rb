# A Point object is valid if
# * it has a latitude within the minimum and maximum latitude values
# * it has a longitude within the minimum and maximum longitude values
class Point < ActiveRecord::Base
  include Validation

  MAX_LONGITUDE = 180
  MIN_LONGITUDE = -180
  MAX_LATITUDE = 90
  MIN_LATITUDE= -90

  attr_accessor( :latitude )
	attr_accessor( :longitude )

  validates_numericality_of( :latitude, :longitude )
  validates_inclusion_of( :latitude, :in => MIN_LATITUDE..MAX_LATITUDE )
  validates_inclusion_of( :longitude, :in => MIN_LONGITUDE..MAX_LONGITUDE)

  def initialize( attributes = {} )
    @latitude = attributes[ :latitude ]
    @longitude = attributes[ :longitude ]
  end

	# Returns a string representation of the point of the form
	#  latitude,longitude
  def to_s
    "#{ self.latitude },#{ self.longitude }"
  end

  def inspect # :nodoc:
    '('+self.to_s+')'
  end

	# Two points are equivalent if they have the same latitude and longitude
	def ==( other )
		[ self.latitude, self.longitude ] == [ other.latitude, other.longitude ]
	end

  LATITUDE_KEY = 'latitude_hash'  # :nodoc:
  LONGITUDE_KEY = 'longitude_hash'  # :nodoc:

  def to_h # :nodoc:
    RCAP.attribute_values_to_hash(
      [ LATITUDE_KEY, self.latitude ],
      [ LONGITUDE_KEY, self.longitude ])
  end

  def self.from_h( point_hash ) # :nodoc:
    self.new( :latitude => point_hash[ LATITUDE_KEY ], :longitude => point_hash[ LONGITUDE_KEY ])
  end
end
