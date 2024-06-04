#!/usr/bin/python3
"""This moduled defines top_ten function.
"""
import urllib.request
import urllib.parse
import json


def top_ten(subreddit):
    """This function prints the titles of the
    first 10 hot posts listed for a given subreddit.
    """
    url = 'https://www.reddit.com/r/{}/hot.json?count=10'.format(subreddit)
    req = urllib.request.Request(url)
    req.redirect = False
    try:
        respone = urllib.request.urlopen(req)
    except Exception:
        print(None)
    obj = json.loads((respone.read().decode('utf-8')))
    for idx in range(10):
        if (idx >= len(obj['data']['children'])):
            break
        print(obj['data']['children'][idx]['data']['title'])
