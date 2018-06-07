#coding=utf-8

def request(context,flow):
    #print "This is a request."
    pass

def response(context,flow):
    #print dir(flow.response)
    if "100" in flow.response.content:
        try:
            flow.response.content = "666"
        except Exception as e:
            pass
