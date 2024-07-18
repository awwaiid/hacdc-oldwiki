## HacDC's Live Status Prototype

This is a mock-up demonstrating the two existing forms of output from
the HacDC lab occupancy sensor.

At the moment, the system can report status to the world in two ways:

-   A text occupancy message suitable for inclusion on the Live Status
    page
-   Updates to a public Google Calendar account

### Future Changes

The sensor is currently reporting its status via a extremely convoluted
mechanism. As a result of this mechanism, I cannot run the live status
system entirely within HacDC. In order to fix this problem and provide
access to the real-time data for all takers, the wiki must be updated
to:

-   Support a "nocache" extension, allowing the text occupancy message
    to display current rather than cached data
-   Configure the "include" extension to allow access to a single
    directory or file outside of the web root

Once these changes are complete, the system will be migrated entirely to
the HacDC lab and realtime sensor and occupancy data can be made
available for other projects.

### Text Occupancy Message

HacDC has been CLOSED for 14 hours 3 minutes

### Public Google Calendar

`<include iframe src="//www.google.com/calendar/embed?mode=WEEK&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=hacdcdoorman%40gmail.com&amp;color=%23A32929&amp;ctz=America%2FNew_York" style=" border-width:0 " width="800" height="600" frameborder="0" scrolling="no">`{=html}`</iframe>`{=html}

[Category:Occupancy Sensor](Category:Occupancy_Sensor)
