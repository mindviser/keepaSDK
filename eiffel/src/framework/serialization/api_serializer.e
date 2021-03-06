note
 description:"[
		Keepa API
 		The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.
  		OpenAPI spec version: 1.0.0
 	    Contact: info@keepa.com

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"

class
	API_SERIALIZER


feature -- Access

	serializer (f: FUNCTION [TUPLE [content_type:STRING; type:ANY],STRING]; a_content_type: STRING; a_type: ANY): STRING
			-- Serialize an object of type `a_type' using the content type `a_content_type'.
		do
			Result := f.item ([a_content_type, a_type])
		end
end
