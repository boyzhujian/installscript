def response(flow):
    with open("file_to_write_data_to.txt", "ab") as ofile:
        ofile.write(flow.request.pretty_url.encode())

        if flow.request.content:
            ofile.write(flow.request.content)

        if flow.response.content:
            ofile.write(flow.response.content)

        # Add other separators etc. however you want
        ofile.write(b"-------")

        
#useage mitmdump -s savebody.py
