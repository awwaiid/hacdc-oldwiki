I wanted to post this to blabber, but it seemed like it was going to be
long and drawn out, require some illustrations, and was going to need
some revisions along the way, so I figured I would start a draft here.

I've been reading various postings on mailing lists and popular web
sites regarding the limited pool we have of IPv4 addresses, and how this
pool was due to run out sometime "soon". Estimates vary, but it seems
that it will happen in two to three years if IP allocation continues at
the same rate it has in the past.

There are many connections that take place on the internet on a regular
basis, but we will start with one of the most common, a web page
requested through a browser. Many steps (and sub-steps) take place in
this transaction, and most of them are not visible to the end user.

Let us assume we want to view HacDC's home page. The following things
take place:

1\) Client establishes connection to server a) Client asks local DNS
server for the IP address for www.hacdc.org b) Local DNS server finds
the authoritative DNS server for hacdc.org c) Authoritative DNS server
replies with IP address for www.hacdc.org (208.72.84.15) d) Local DNS
server forwards this response back to the client e) Client opens TCP
connection to port 80 on server at 208.72.84.15 f) Server acknowledges
connection

2\) Client requests the main page from server a) client tells server
"HTTP / 1.1" b) server tells client "200 OK here's your page thank you
drive through"

3\) Client displays page
