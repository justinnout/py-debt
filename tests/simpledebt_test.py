import pytest
from urllib3._collections import HTTPHeaderDict

from simpledebt.urllib3 import create_http_response


def test():
    headers = {
        "a": "b",
    }
    assert HTTPHeaderDict(headers) == create_http_response(headers).getheaders()
