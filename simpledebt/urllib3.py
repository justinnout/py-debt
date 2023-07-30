import urllib3


def create_http_response(headers=None):
    return urllib3.response.HTTPResponse(headers=headers)
