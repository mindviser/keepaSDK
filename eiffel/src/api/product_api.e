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
	PRODUCT_API

inherit

    API_I


feature -- API Access


	product (key: STRING_32; domain: INTEGER_32; asin: STRING_32; code: STRING_32): detachable LIST [CATEGORY]
			-- Retrieve the product for the specified ASIN and domain.
			-- Retrieves the product object for the specified ASIN and domain. If our last update is older than one hour it will be automatically refreshed before delivered to you to ensure you get near to real-time pricing data.  You can request products via either their ASIN (preferred) or via UPC and EAN codes. You can not use both parameters, asin and code, in the same request. Keepa can not track Amazon Fresh and eBooks.
			-- 
			-- argument: key Your private API key. (required)
			-- 
			-- argument: domain Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au) (required)
			-- 
			-- argument: asin The ASIN of the product you want to request. For batch requests a comma separated list of ASINs (up to one hundred). (optional, default to null)
			-- 
			-- argument: code The product code of the product you want to request. We currently allow UPC, EAN and ISBN-13 codes. For batch requests a comma separated list of codes (up to one hundred). Multiple ASINs can have the same product code, so requesting a product code can return multiple products. (optional, default to null)
			-- 
			-- 
			-- Result LIST [CATEGORY]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/product"
			l_request.fill_query_params(api_client.parameter_to_tuple("", "key", key));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "domain", domain));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "asin", asin));
			l_request.fill_query_params(api_client.parameter_to_tuple("", "code", code));


			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<>>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [CATEGORY] } l_response.data ({ LIST [CATEGORY] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	


end
