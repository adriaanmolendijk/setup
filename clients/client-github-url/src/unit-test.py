from src.app import address_to_url
from src.app import origin_url_to_address


def test_print_url():
    address = 'google.com'
    url = address_to_url(address)
    assert url == 'https://google.com'


def test_origin_url_to_address():
    origin_url = 'git@github.com:adriaanmolendijk/github-remote-url.git'
    root_address = origin_url_to_address(origin_url)
    assert root_address == 'github.com/adriaanmolendijk/github-remote-url'
