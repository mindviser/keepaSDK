import connexion
import six

from openapi_server.models.category import Category  # noqa: E501
from openapi_server import util


def category(key, domain, category, parents):  # noqa: E501
    """Returns Amazon category information from Keepa API.

    Retrieve category objects using their node ids and (optional) their parent tree. # noqa: E501

    :param key: Your private API key.
    :type key: str
    :param domain: Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au)
    :type domain: int
    :param category: The category node id of the category you want to request. For batch requests a comma separated list of ids (up to 10, the token cost stays the same). Alternatively you can specify the value 0, which will retrieve a list of all root categories.
    :type category: int
    :param parents: Whether or not to include the category tree for each category. (1 &#x3D; include, 0 &#x3D; do not include.)
    :type parents: int

    :rtype: List[Category]
    """
    return 'do some magic!'
