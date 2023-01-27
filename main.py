#!/usr/bin/env python
from pycookiecheat import chrome_cookies
import secretstorage
from urllib.error import URLError
import sys
import requests


# Uses Chrome's default cookies filepath by default
def getCookie(url):
    try:
        bus = secretstorage.dbus_init()
        collection = secretstorage.get_default_collection(bus)
        for item in collection.get_all_items():
            if item.get_label() == 'Chrome Safe Storage':
                MY_PASS = item.get_secret()
                cookies = chrome_cookies(url, password=MY_PASS)
                return(cookies)
        else:
            raise Exception('Chrome password not found!')
    except URLError:
        print(f"Invalid url: {url}") 

if __name__=='__main__':
    if len(sys.argv)!=2:
        print("Please use syntax main.py <url>")
        raise Exception("Invalid argumensts")

    cookie=getCookie(sys.argv[1])
    print(cookie)
