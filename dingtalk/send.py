#! /usr/bin/env python
# coding: utf-8

import requests
import json

dingding_url = "https://oapi.dingtalk.com/robot/send?access_token=c6d5a2936381dfc29394f3c336bea5fad962d90ffd31809e92d95a1xxxxxxxxx" # 这个 url 从 PC 端钉钉群组->管理机器人里获得

headers = {"Content-Type": "application/json; charset=utf-8"}

post_data = {
    "msgtype": "text", 
    "text": {
        "content": u"我就随便这么一发"
    },
    "at": {
        "atMobiles": ["176xxxxx619"]
    }
}

r = requests.post(dingding_url, headers=headers, 
        data=json.dumps(post_data))
print(r.content)
