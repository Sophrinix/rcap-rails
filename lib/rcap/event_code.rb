module CAP
  class EventCode < Parameter

    XML_ELEMENT_NAME = 'eventCode' # :nodoc:

		XPATH = "cap:#{ XML_ELEMENT_NAME }" # :nodoc:

    def to_xml_element # :nodoc:
      xml_element = REXML::Element.new( XML_ELEMENT_NAME )
      xml_element.add_element( NAME_ELEMENT_NAME ).add_text( self.name )
      xml_element.add_element( VALUE_ELEMENT_NAME ).add_text( self.value )
      xml_element
    end

		def self.from_xml_element( event_code_xml_element ) # :nodoc:
			EventCode.new( :name => CAP.xpath_text( event_code_xml_element, NAME_XPATH ),
										 :value => CAP.xpath_text( event_code_xml_element, VALUE_XPATH ))
		end
  end
end
