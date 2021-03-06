=begin
#Keepa API

#The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.

OpenAPI spec version: 1.0.0
Contact: info@keepa.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CategoryApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CategoryApi' do
  before do
    # run before each test
    @instance = OpenapiClient::CategoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CategoryApi' do
    it 'should create an instance of CategoryApi' do
      expect(@instance).to be_instance_of(OpenapiClient::CategoryApi)
    end
  end

  # unit tests for category
  # Returns Amazon category information from Keepa API.
  # Retrieve category objects using their node ids and (optional) their parent tree.
  # @param key Your private API key.
  # @param domain Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au)
  # @param category The category node id of the category you want to request. For batch requests a comma separated list of ids (up to 10, the token cost stays the same). Alternatively you can specify the value 0, which will retrieve a list of all root categories.
  # @param parents Whether or not to include the category tree for each category. (1 &#x3D; include, 0 &#x3D; do not include.)
  # @param [Hash] opts the optional parameters
  # @return [Array<Category>]
  describe 'category test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
