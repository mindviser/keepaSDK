/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech) (4.0.0-beta2).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.api;

import org.openapitools.model.Category;
import io.swagger.annotations.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Map;
import java.util.Optional;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2019-03-02T22:59:41.539Z[Etc/UTC]")

@Validated
@Api(value = "category", description = "the category API")
public interface CategoryApi {

    default Optional<NativeWebRequest> getRequest() {
        return Optional.empty();
    }

    @ApiOperation(value = "Returns Amazon category information from Keepa API.", nickname = "category", notes = "Retrieve category objects using their node ids and (optional) their parent tree.", response = Category.class, responseContainer = "List", tags={ "category", })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "search results matching criteria", response = Category.class, responseContainer = "List"),
        @ApiResponse(code = 400, message = "bad input parameter") })
    @RequestMapping(value = "/category",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    default ResponseEntity<List<Category>> category(@NotNull @ApiParam(value = "Your private API key.", required = true) @Valid @RequestParam(value = "key", required = true) String key,@NotNull @ApiParam(value = "Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au)", required = true, allowableValues = "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13") @Valid @RequestParam(value = "domain", required = true) Integer domain,@NotNull @ApiParam(value = "The category node id of the category you want to request. For batch requests a comma separated list of ids (up to 10, the token cost stays the same). Alternatively you can specify the value 0, which will retrieve a list of all root categories.", required = true) @Valid @RequestParam(value = "category", required = true) Integer category,@NotNull @ApiParam(value = "Whether or not to include the category tree for each category. (1 = include, 0 = do not include.)", required = true, allowableValues = "0, 1") @Valid @RequestParam(value = "parents", required = true) Integer parents) {
        getRequest().ifPresent(request -> {
            for (MediaType mediaType: MediaType.parseMediaTypes(request.getHeader("Accept"))) {
                if (mediaType.isCompatibleWith(MediaType.valueOf("application/json"))) {
                    ApiUtil.setExampleResponse(request, "application/json", "{  \"catId\" : 281052,  \"parent\" : 502394,  \"children\" : [ 3109924011, 7242008011, 3017941, 2476680011, 330405011, 2476681011, 3109925011 ],  \"highestRank\" : 6549,  \"name\" : \"Digital Cameras\",  \"productCount\" : 1522,  \"domainId\" : 1}");
                    break;
                }
            }
        });
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);

    }

}
