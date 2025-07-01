from django import template
from urllib.parse import parse_qs, urlencode

register = template.Library()

@register.filter
def url_replace(query_string, new_param):
    """
    Replace or add a GET parameter in the query string.

    new_param should be in the format 'key=value'.
    """
    if not query_string:
        query_dict = {}
    else:
        query_dict = parse_qs(query_string)

    if '=' not in new_param:
        return query_string

    key, value = new_param.split('=', 1)
    query_dict[key] = [value]

    # Flatten query_dict to a query string
    return urlencode(query_dict, doseq=True)