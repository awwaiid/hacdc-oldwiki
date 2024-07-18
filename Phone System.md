```{=mediawiki}
{{TOCright}}
```
## System:

HacDC is currently using three providers for the phone system. [Google
Voice](https://voice.google.com/) - They provide the 202-556-HACK (4225)
number. [Twilio](https://www.twilio.com) which allows dynamic scripting
of your phone system through xml pages. [voip.ms](https://www.voip.ms)
which is our SIP provider.

## Calling HacDC:

If you dial [202-556-HACK](tel:+1-202-556-4225), you will be routed
through Google Voice to Twilio and connected to our IVR (options below).

If you contact us via 1171631@washington.voip.ms or 1171631@sip.voip.ms,
you will be routed through voip.ms which will connect you to our Twilio
IVR.

We can also be reached via iNum
[+883-5100-09902515](tel:+883510009902515) or
883510009902515@sip.inum.net SIP URI. iNum calls are routed through
voip.ms and connected to Twilio. Due to most services not supporting
iNum, iNum access is available through local access numbers in a number
of countries. A list of access numbers is available at
[<http://www.inum.net/what-is-inum-2/local-access-numbers/>](http://www.inum.net/what-is-inum-2/local-access-numbers/).
An iNum number can be called from HacDC by dialing as a standard
international number (instructions below in [Phone System#Twilio IVR
Menu:](Phone_System#Twilio_IVR_Menu:)).

## Calling from HacDC:

### US/Canadian Numbers:

Dial as you normally would.

### International Numbers:

International numbers can be dialed using either US standard
international access (011-country code-number) or European standard
international access (00-country code-number) If you need access to an
international number that the phone in HacDC isn't allowing access to,
contact admin@hacdc.org for help.

### SIP Broker:

voip.ms supports a service called [SIP Broker](http://sipbroker.com/)
for making connections between SIP providers. To find out if a provider
can be contacted via SIP Broker, check out their [Provider
Whitepages](http://sipbroker.com/sipbroker/action/providerWhitePages).
To call a SIP Broker number from HacDC, dial \*\*275-Provider access
code (including \*)-phone number.

### Speed dials:

If a number will be called often or if people require access to a SIP
URI, the Admin Team can create a speed dial which will be accessible by
pressing #xx on the phone. voip.ms allows a total of 99 speed dials.

#### Current speed dials:

#01 - Connects to Twilio IVR #02 - Connects to Telephreak.org

## Twilio IVR Menu:

Option 1: Responds back with address and location information. Option 2:
Responds back with current occupancy status (updated from the occupancy
sensor in the space). Option 3: Responds back with information about
contacting HacDC. Option 4: Responds back with next 3 upcoming events
from our Meet-up. Option 5: Connects you to the phone in the space.
Option 0: Leave a voicemail with the notification and link to voicemail
sent to members@hacdc.org. Option 90: Leave a voicemail with the
notification and link to voicemail sent only to the HacDC Treasurer.

## Sending an SMS to our Google Voice number:

Our Google Voice number responds to the following commands via SMS:
status - Responds back with current occupancy status. location -
Responds back with address and GPS coordinates. help - Responds back
listing the previous two commands.

Anything else will respond back as an invalid command and suggest you
send the help command.

## WebRTC:

Currently a work in progress, but for now will connect to the Twilio
hosted IVR -
[<http://api.hacdc.org/Twilio/rtc.php>](http://api.hacdc.org/Twilio/rtc.php).
