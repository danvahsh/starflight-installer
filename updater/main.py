import requests
import json

def read_index():
    online_index = requests.get('https://raw.githubusercontent.com/danvahsh/starflight-installer-meta/main/index.json')

    return_info = dict(status_code=online_index.status_code, text=online_index.text)

    return return_info

def check_index(json_text):
    index_info = json.loads(read_index()['text'])

    if index_info['index_type'] == "SFUPDATERINDEX" and index_info['version'] == 1.0

def read_json(json_text):
    main_index = json.loads(read_index()['text'])
    versions = json.loads(main_index['versions'])

def main_updater():
    json_index = read_index()

    if json_index['staus_code'] != 200
        break


print(input('press enter to exit'))