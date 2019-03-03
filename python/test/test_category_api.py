# coding: utf-8

"""
    Keepa API

    The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.  # noqa: E501

    OpenAPI spec version: 1.0.0
    Contact: info@keepa.com
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest

import openapi_client
from openapi_client.api.category_api import CategoryApi  # noqa: E501
from openapi_client.rest import ApiException


class TestCategoryApi(unittest.TestCase):
    """CategoryApi unit test stubs"""

    def setUp(self):
        self.api = openapi_client.api.category_api.CategoryApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_category(self):
        """Test case for category

        Returns Amazon category information from Keepa API.  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()