

Movement:

j, k        down, up
h, l        left, right (in some contexts)
space       page down
pg up/down  page up/down
arrows      up, down, left, right

Global keys:

c  client replay
H  edit global header set patterns
I  set ignore pattern
i  set interception pattern
M  change global default display mode
   automatic: automatic detection
   hex: Hex
   html: HTML
   image: Image
   javascript: JavaScript
   json: JSON
   css: CSS
   urlencoded: URL-encoded data
   raw: raw data
   xml: XML
   wbxml: WBXML
   amf: AMF (requires PyAMF)
o  toggle options:
   anticache: prevent cached responses
   anticomp: prevent compressed responses
   showhost: use Host header for URL display
   killextra: kill requests not part of server replay
    norefresh: disable server replay response refresh
   upstream certs: sniff cert info from upstream server
q  quit / return to flow list
Q  quit without confirm prompt
R  edit replacement patterns
s  add/remove scripts
S  server replay
t  set sticky cookie expression
T  set tcp proxying pattern
u  set sticky auth expression


Flow List

A      accept all intercepted flows
a      accept this intercepted flow
C      clear flow list or eventlog
d      delete flow
D      duplicate flow
e      toggle eventlog
F      toggle follow flow list
l      set limit filter pattern
L      load saved flows
r      replay request
V      revert changes to request
w      save flows 
W      stream flows to file
X      kill and delete flow, even if it's mid-intercept
tab    tab between eventlog and flow list
enter  view flow
|      run script on this flow
