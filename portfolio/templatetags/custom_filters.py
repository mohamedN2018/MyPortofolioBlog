from django import template
from urllib.parse import urlparse

register = template.Library()


@register.filter
def domain_name(url):
    if not url:
        return ''
    else:
        parsed_url = urlparse(url)
        domain = parsed_url.netloc
    if domain.startswith('www.'):
        domain = domain[4:]
    return domain

