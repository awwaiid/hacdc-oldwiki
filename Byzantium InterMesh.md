The InterMesh is the network of meshes that is separate from the
internet either functionally (bandwidth/latency limitations) or fully
(completely disconnected).

## Services Needed

All these services need to be distributed throughout the InterMesh.

I think we should err on the side of "Secure by default". To make it
easy to grow the mesh we can't really set up encryption at OSI layers 1
and 2 (getting people to configure that in a hurry isn't going to work,
though we might have some luck if we did with [QR
codes](http://skattertech.com/2011/01/quick-tip-use-a-qr-code-to-share-wifi-passwords-with-android/)).
I think any services offered on the mesh should offer SSL/TLS by default
(we'll have to go with self-signed certs).

-   captive portal
    -   to let people know about the services we are providing
-   Webmail
    -   Something that works like
        [privacybox.de](https://privacybox.de/index.en.html) would be
        ideal in that it's got a short learning curve and a UI that's
        easy to use from a smartphone or PDA.
-   Twitter equivalent
    -   [status.net](http://status.net/)
-   Common chat networks
    -   AIM compatible eqiv.
    -   Gtalk compatible equiv.
    -   Facebook chat compatible equiv.
        -   In short, IM-over-HTTPS.
    -   IRC
        -   [Mibbit](http://www.mibbit.com/) or something that works
            like it.
        -   [CryptoCat](https://crypto.cat/) I think we should get in
            touch with the person running this project.
-   Collaborative notes
    -   Mediawiki
    -   Etherpad
-   File uploads
    -   Image dump ala [Plixi](http://plixi.com/).
-   Streaming audio (low priority)
    -   Yes, I'd plug my police scanner into my computer and stream what
        I pick up.
-   Voice over IP
    -   Asterisk
        -   Configure a conference bridge that people with softphones
            can talk on.
        -   We'll have to test what kind of latency we get with such a
            setup.
        -   Voicemail
        -   Microblog-to-speech using Festival?

```{=mediawiki}
{{Template:Byzantium}}
```
