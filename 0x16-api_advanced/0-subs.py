#!/usr/bin/python3
"""This moduled defines function returns the number
of subscribers for a given subreddit
"""
import urllib.request
import urllib.parse
import json


def number_of_subscribers(subreddit):
    """ This function returns the number of subscribers
    for a given subreddit.
    """
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    req = urllib.request.Request(url)
    try:
        respone = urllib.request.urlopen(req)
    except Exception:
        return (0)
    obj = json.loads((respone.read().decode('utf-8')))
    subs = obj['data']['subscribers']
    return(subs)
