import requests
import json
import sys

def request_index():
    online_index = requests.get('https://raw.githubusercontent.com/danvahsh/starflight-installer-meta/main/index.json')

    return_info = dict(status_code=online_index.status_code, text=online_index.text)

    return return_info

raw_index = request_index()

def check_index(json_text):
    index_info = json.loads(raw_index['text'])

    if index_info['index_type'] == "SFUPDATERINDEX" and index_info['index_style_version'] == 1.0:
        pass

def load_json(json_text):
    index = json.loads(raw_index()['text'])

def main_updater():
    json_index = index()

    if json_index['staus_code'] != 200:
        pass


print(input('press enter to exit'))