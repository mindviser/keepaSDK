/**
 * Keepa API
 * The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.
 *
 * OpenAPI spec version: 1.0.0
 * Contact: info@keepa.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import * as models from './models';

export interface Category {
    /**
     * Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au)
     */
    domainId: Category.DomainIdEnum;

    /**
     * The category node id used by Amazon. Represents the identifier of the category. Also part of the Product object’s categories and rootCategory fields. Always a positive Long value. Note - The id 9223372036854775807 (max signed long value) denotes a blank category with the name “?”. We use this in cases where a product is listed in no or non-existent categories.
     */
    catId: number;

    /**
     * The name of the category.
     */
    name: string;

    /**
     * List of all sub categories. null or [] (empty array) if the category has no sub categories.
     */
    children: Array<number>;

    /**
     * The parent category’s Id. Always a positive Long value. If it is 0 the category is a root category and has no parent category.
     */
    parent: number;

    /**
     * The highest (root category) sales rank we have observed of a product that is listed in this category. Note- Estimate, as the value is from the Keepa product database and not retrieved from Amazon.
     */
    highestRank: number;

    /**
     * Number of products that are listed in this category. Note- Estimate, as the value is from the Keepa product database and not retrieved from Amazon.
     */
    productCount: number;

}
export namespace Category {
    export enum DomainIdEnum {
        NUMBER_1 = <any> 1,
        NUMBER_2 = <any> 2,
        NUMBER_3 = <any> 3,
        NUMBER_4 = <any> 4,
        NUMBER_5 = <any> 5,
        NUMBER_6 = <any> 6,
        NUMBER_7 = <any> 7,
        NUMBER_8 = <any> 8,
        NUMBER_9 = <any> 9,
        NUMBER_10 = <any> 10,
        NUMBER_11 = <any> 11,
        NUMBER_12 = <any> 12,
        NUMBER_13 = <any> 13
    }
}