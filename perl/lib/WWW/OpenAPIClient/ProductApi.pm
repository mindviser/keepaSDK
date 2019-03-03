=begin comment

Keepa API

The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.

OpenAPI spec version: 1.0.0
Contact: info@keepa.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::ProductApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# product
#
# Retrieve the product for the specified ASIN and domain.
# 
# @param string $key Your private API key. (required)
# @param int $domain Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au) (required)
# @param string $asin The ASIN of the product you want to request. For batch requests a comma separated list of ASINs (up to one hundred). (optional)
# @param string $code The product code of the product you want to request. We currently allow UPC, EAN and ISBN-13 codes. For batch requests a comma separated list of codes (up to one hundred). Multiple ASINs can have the same product code, so requesting a product code can return multiple products. (optional)
{
    my $params = {
    'key' => {
        data_type => 'string',
        description => 'Your private API key.',
        required => '1',
    },
    'domain' => {
        data_type => 'int',
        description => 'Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au)',
        required => '1',
    },
    'asin' => {
        data_type => 'string',
        description => 'The ASIN of the product you want to request. For batch requests a comma separated list of ASINs (up to one hundred).',
        required => '0',
    },
    'code' => {
        data_type => 'string',
        description => 'The product code of the product you want to request. We currently allow UPC, EAN and ISBN-13 codes. For batch requests a comma separated list of codes (up to one hundred). Multiple ASINs can have the same product code, so requesting a product code can return multiple products.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'product' } = { 
        summary => 'Retrieve the product for the specified ASIN and domain.',
        params => $params,
        returns => 'ARRAY[Category]',
        };
}
# @return ARRAY[Category]
#
sub product {
    my ($self, %args) = @_;

    # verify the required parameter 'key' is set
    unless (exists $args{'key'}) {
      croak("Missing the required parameter 'key' when calling product");
    }

    # verify the required parameter 'domain' is set
    unless (exists $args{'domain'}) {
      croak("Missing the required parameter 'domain' when calling product");
    }

    # parse inputs
    my $_resource_path = '/product';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
    }

    # query params
    if ( exists $args{'domain'}) {
        $query_params->{'domain'} = $self->{api_client}->to_query_value($args{'domain'});
    }

    # query params
    if ( exists $args{'asin'}) {
        $query_params->{'asin'} = $self->{api_client}->to_query_value($args{'asin'});
    }

    # query params
    if ( exists $args{'code'}) {
        $query_params->{'code'} = $self->{api_client}->to_query_value($args{'code'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Category]', $response);
    return $_response_object;
}

1;