/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.ProductApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.
 * Version: 1.0.0
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
goog.provide('API.Client.ProductApi');

goog.require('API.Client.category');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.ProductApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('ProductApiBasePath') ?
                   /** @type {!string} */ ($injector.get('ProductApiBasePath')) :
                   'https://virtserver.swaggerhub.com/magicCashew/keepa/1.0.0';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('ProductApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('ProductApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.ProductApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Retrieve the product for the specified ASIN and domain.
 * Retrieves the product object for the specified ASIN and domain. If our last update is older than one hour it will be automatically refreshed before delivered to you to ensure you get near to real-time pricing data.  You can request products via either their ASIN (preferred) or via UPC and EAN codes. You can not use both parameters, asin and code, in the same request. Keepa can not track Amazon Fresh and eBooks.
 * @param {!string} key Your private API key.
 * @param {!number} domain Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au)
 * @param {!string=} opt_asin The ASIN of the product you want to request. For batch requests a comma separated list of ASINs (up to one hundred).
 * @param {!string=} opt_code The product code of the product you want to request. We currently allow UPC, EAN and ISBN-13 codes. For batch requests a comma separated list of codes (up to one hundred). Multiple ASINs can have the same product code, so requesting a product code can return multiple products.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.category>>}
 */
API.Client.ProductApi.prototype.product = function(key, domain, opt_asin, opt_code, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/product';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'key' is set
  if (!key) {
    throw new Error('Missing required parameter key when calling product');
  }
  // verify required parameter 'domain' is set
  if (!domain) {
    throw new Error('Missing required parameter domain when calling product');
  }
  if (key !== undefined) {
    queryParameters['key'] = key;
  }

  if (domain !== undefined) {
    queryParameters['domain'] = domain;
  }

  if (opt_asin !== undefined) {
    queryParameters['asin'] = opt_asin;
  }

  if (opt_code !== undefined) {
    queryParameters['code'] = opt_code;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
