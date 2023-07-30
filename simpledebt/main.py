import urllib3


def create_http_response():
    return urllib3.response.HTTPResponse()

create_http_response().getheaders()