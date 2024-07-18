Start with the [OBi-110 VoIP Quick Start
Guide](:File:OBi110QSG.pdf) (PDF)

The following is an incomplete copy of
<https://wiki.voip.ms/article/OBi_100/110_%26_OBi_200>

See the original (above) for images, links, etc not appearing below.

------------------------------------------------------------------------

![](OBi110-ATA.jpg "OBi110-ATA.jpg"){width="200"}

\
*The OBi100 & OBi200 are single phone port ATA adapters that support SIP
VoIP services. The OBi100 & OBi200 are perfect for customers who do not
have a traditional phone service, yet need a similar solution and want
the savings and simplicity of using a VoIP service for all their calls.
To start configuring your OBi100 or OBi200 device you will need to plug
it in to your router/modem via its Internet port with an Ethernet cable
and connect a regular handset phone to it's Phone port, then follow the
next steps.*\
\
== Manual Configuration Details ==\
Start by dialing **\* \* \*** from the connected phone, then press **1**
to confirm your choice, this will return the IP address of your device
being a number similar to **192.168.xxx.xxx**.\
Once you get the IP address, enter it in the URL address bar
**"<http://>"** of your Internet Browser to get access to the Graphic
User Interface of the OBi100.

`For an OBi202 please do the following to enable the GUI Web Interface:`\
\
`Dial *** from the phone connected to the OBi202`\
`Enter 0 For Advanced`\
`Enter 30# Check Mark from`\
`Press 1 to Enter a New Value`\
`Press 1# to Enable`\
`Press 1 to Save`\
`Hang up`

If done properly, the following window should appear on your screen:
![Authentication Window - click to
enlarge](ObiLogin.png "Authentication Window - click to enlarge"){width="300"}\
Once you get the Authentication Required window you will be prompted for
a User Name and Password, the default credentials are:

**`User Name:`**` admin`\
\
**`Password:`**` admin`

After this, you should now be able to see the OBi Web interface.

Now on the left side of the screen please find the next options and
follow the next steps:

### Disabling auto-provisioning {#disabling_auto_provisioning}

**\*\*NOTE :** You may use this guide to configure an OBi110 as well.
This is the VoIP.ms recommended configuration versus using the Obihai
configuration dashboard (more on this later on this page) and you may
also not find all new VoIP.ms servers on the Obihai Dahsboard. In order
to make sure there will be no conflicts between this Manual
configuration and the Obihai dashboard, please perform the following
steps to disable auto-provisioning:

-   System Management -\> Auto Provisioning -\> Auto Firmware Update -\>
    Method : Disabled
-   System Management -\> Auto Provisioning -\> ITSP Provisioning -\>
    Method : Disabled
-   System Management -\> Auto Provisioning -\> OBiTALK Provisioning -\>
    Method : Disabled
-   Voice Services -\> OBiTALK Service -\> Enable : Unchecked

`Please note you must remove the check mark from the "default" column, then under "Method" please use the `**`'Drop Down Selection`**`' and choose `**`Disabled`**`.`

![Disabling Auto Provision - click to
enlarge](Step1.png "Disabling Auto Provision - click to enlarge"){width="450"}\
After this, save all changes and you are ready to move on to the actual
configuration.\
===Configuring the ITSP Profile===

#### General Section {#general_section}

In this section you will set the name and the DigiMap you will use in
the profile you configure. By default you will configure the profile A,
unless you use the same device with another provider.

:   **Name**: 100000 (Replace with your 6 digit Main SIP account UserID
    or Sub Account user name, i.e. 123456 or 123456_sub)\
:   **DigitMap**: Copy the line, including parenthesis, in the Digitmap
    field in the ITSP Profile and replace the "555" digits in the
    following lines by the area code of your choice:

```{=html}
<!-- -->
```

:   

    :   Dial Plan (recommended):

`(1xxxxxxxxxx|<1555>[2-9]xxxxxx|<1>[2-9]xxxxxxxxx|911|011xx.|xx.|*xx.|***xxx|4xxx|(Mipd)|[^*]@@.) `

Also, some clients have been successful by dialing **\*\*1 and \*97**
for line 1 or **\*\*2 and \*97** for line 2.

:\*If you need to set the dial plan back to Default, you can use this:

`(1xxxxxxxxxx|<1555>[2-9]xxxxxx|<1>[2-9]xxxxxxxxx|011xx.|***xxx|xx.|(Mipd)|[^*]@@.) `

![ITSP profile, General - click to
enlarge](Step2.png "ITSP profile, General - click to enlarge"){width="550"}\

#### SIP Section {#sip_section}

In this section you can set the server and the port that you wish to
register to.

`Please note that in order to change the settings, you need to uncheck the Default box on the right hand side. `

-   ProxyServer: denver.voip.ms (one of VoIP.ms multiple
    [servers](http://wiki.voip.ms/article/Choosing_Server), you can
    choose the one closest to your location.)
-   ProxyServerPort: 5060
-   RegistrarServer: denver.voip.ms (one of VoIP.ms multiple servers
    [servers](http://wiki.voip.ms/article/Choosing_Server), you can
    choose the one closest to your location.)
-   RegistrarServerPort: 5060

![ITSP profile, SIP - click to
enlarge](Step3.png "ITSP profile, SIP - click to enlarge"){width="550"}\
Additionally, you may want to change the RegisterExpires value to 300,
scroll down, deselect the default box and set the value there from 3600
to 300.

![ITSP profile, SIP (Register Expires)- click to
enlarge](Step4.png "ITSP profile, SIP (Register Expires)- click to enlarge"){width="550"}\

### Configuring Voice Services {#configuring_voice_services}

\
In this section you can set your Main account/sub_account credentials
like User name and Password. The Main account password by default is the
same password as the Customer Portal.

-   AuthUserName: 100000 (Replace with your 6 digits Main SIP account
    UserID or Sub Account user name, i.e. 123456 or 123456_sub)
-   AuthPassword: \*\*\*\*\*\* (*Your SIP Account Password*)

![Voice Services (SIP Credentials) - click to
enlarge](Step5.png "Voice Services (SIP Credentials) - click to enlarge"){width="550"}\

`Once you have finished changing all those settings, click on the button `*`Submit`*` to save the changes and `*`reboot your OBi device`*`,  your device should now be registered.`

## Configuration Using OBi Dashboard {#configuration_using_obi_dashboard}

Besides the Manual Configuration previously explained, Obihai also
provides us with their own API dashboard where you can add your device,
to complete the configuration in easy steps. Add your device to the
OBiTALK service in the OBi Dashboard
[1](http://www.obitalk.com/obinet/). Instructions for this are included
with the OBi110 and are not discussed here.

After the OBi110 is added, edit the device. You can select **Service
Provider 1** or **Service Provider 2** under the **Configure Voice
Services** heading. This will take you to a page where you can select
*voip.ms*. Follow the instructions and once you are done the
configuration will be downloaded to your Obi110.

## Known Issues and Resolutions {#known_issues_and_resolutions}

### Ghost Calls {#ghost_calls}

\
Some customers have reported receiving constant calls from "100" or
"101" as callerID. These calls are going directly to your device and do
not pass through our servers, so we cannot filter them. You can read
more about these calls, including how to prevent them, here: [Sip
Scanner Ghost Calls](Sip_Scanner_Ghost_Calls)

You can also follow these suggestions, specific for the OBi brand
devices:

-   You can just disable (by unchecking Enable) for SP2 and OBiTALK
    under your Voice Tab (If you are using our service as SP1).

```{=html}
<!-- -->
```
-   You can restrict which IP addresses that can connect to your OBi.
    Going to "Service Providers -\> ITSP Profile A -\> SIP -\>
    X_AccessList" : voip.ms_ip_address. You can see the IP address of
    the server you are currently using from this link: [Server's
    IPs](http://wiki.voip.ms/article/Choosing_Server#IPs)

```{=html}
<!-- -->
```
-   You can also change your Obi Firewall Setting X_InboundCallRoute to
    : {(?\|x\|xx\|xxx\|xxxx\|xxxxx\|xxxxxx\|un@@.\|anon@@.):}, ph

`This will only allow 7 digit or greater numbers through.`

-   Another alternative: OBi Interface\>\> Voice Services\>\> SP1
    Service\>\> X_InboundCallRoute: {\>('Insert your AuthUserName
    here'):ph}, example:

`{>('100000'):ph} where 100000 is replaced with your own six digit SIP account UserID or the sub-account registered with your device.`

By default, OBi devices accept calls destined for any username. The
above syntax rejects calls that are not intended for whatever you have
configured as AuthUserName.

\

### 10 Second Delay Reaching voip.ms Voicemail Attendant when dialing \*97 or \*98 {#second_delay_reaching_voip.ms_voicemail_attendant_when_dialing_97_or_98}

The Obi 100, 110 and 202 devices have non-configurable 'short' and
'long' delays if a dialed sequence does not match a digitmap. So you may
have a 10 second delay when you dial into your voip.ms voicemail because
of the built-in 'long' delay. This can be resolved in a couple of ways.
Simply dial a \# sign after you dial \*97 or \*98. Or include literals
in your digitmap under the Service Provider / ITSP profile A or B /
General / digitmap. Here is an example digitmap with a \*97 literal
included:

`(1xxxxxxxxxx|<1>[2-9]xxxxxxxxx|011xx.|xx.|*xx.|'*97'|(Mipd)|[^*#]@@.)`

The literal in the example is '\*97'. You could also add a literal for
'\*98'.

Then when you dial \*97, the device immediately sends it instead of
waiting 10 seconds.

Read more on digitmaps under the topic Digit Map Configuration in the
Obi Device Admin Guide.

### Call Drops {#call_drops}

If you experience random call drops while in the middle of a call or if
the person you talk to remains silent for over a minute (60 seconds by
default), OBi will hang up the call. Please go here and check and
increase the following setting (Physical interface -\> LINE port -\>
DetectFarEndLongSilence / SilenceTimeThreshold)

### Enable Message Waiting Indicator MWI {#enable_message_waiting_indicator_mwi}

To enable MWI please refer to the following section of the OBI web page:

Voice Services -\> SP1 Service -\> Calling Features -\>

**MWIEnable** - Uncheck the box at the far right, to be able to check
the box at the left, this enables the option.

**X_VMWIEnable** - Uncheck the box at the far right, to be able to check
the box at the left, this enables the option.

**MessageWaiting** - Mark the checkbox

After these steps, the MWI should be active and working.

**If you are trying to place an outbound call and get a recorded message
¨There is no service to complete your call¨ Please do the following to
resolve this.**

` In Your OBi Device please go to Physical Interfaces >> PHONE Port which by default it is PSTN and it needs to be changed to Trunk Group 1`

### Using the OBi Network {#using_the_obi_network}

You can use your OBi device to make calls directly to other OBi devices
"*The OBi comes out of the box ready to make FREE calls to other OBi
endpoints using the OBiTALK network. Dialing \*\*9 + obi account number
will use the OBiTALK feature and does not place calls to regular numbers
nor use our network.*" (you can get more information about
[here](http://www.obihai.com/features-and-set-up)), be aware that those
calls will not pass through our network. If you need assistance with
that feature, please contact [OBI's
support](http://www.obihai.com/request-support).\
=== Can not dial \*98 even if is on your DigiMap === By default your OBi
device uses \*98 as Blind transfer code. If you want to be able to dial
\*98 from your device, you should change this code. You can achieve this
in the settings of your device at: *Star Codes \>\> Star code profile
(A/B)*, unmark the "default" box and change \*98 for something else
(like \*99)

![Changing \*98 default code - click to
enlarge](Step6.png "Changing *98 default code - click to enlarge"){width="550"}\

### Using the Phone book of your customer portal {#using_the_phone_book_of_your_customer_portal}

If you plan on using the Phone Book in your Customer Portal and Speed
Dial \*75. Please log into your OBi and change the built-in speed dial
code from \*75 in the device to something else.

### An additional note regarding outgoing calls {#an_additional_note_regarding_outgoing_calls}

In at least one instance it was necessary to specify a non-default
outbound calling route in the OBi110 to be able to place calls using the
voip.ms service. The default setting had the OBi110 attempting to place
calls using the PSTN port on the device. The relevant setting is:

**Physical Interfaces \>\> PHONE Port**

-   PrimaryLine: (Select from drop-down)

![Changing Phone Port - click to
enlarge](ObiPhoneport.JPG "Changing Phone Port - click to enlarge"){width="550"}\
The default is PSTN. Select SP1 Service if you only have one SIP account
configured on the device. Select Trunk Group 1 to have it attempt to
place calls using SP1 first, then SP2. Additional Trunk groups can be
configured under Voice Services \>\> Gateways and Trunk Groups.

Portions of this article have been taken from [Mango's Guide to
Configuring an OBi
ATA](http://www.toao.net/500-mangos-guide-to-configuring-an-obi100-obi110-and-obi202-ata).
Used with permission.

## OBI 100/110 OBI 200/202 star codes {#obi_100110_obi_200202_star_codes}

Here's a list of the most common used Star codes available for the OBI.\
You may also consult the following link in order to see the full list of
star codes available for the OBI devices:\
[OBI feature star
codes](http://www.obihai.com/docs/OBiFeatureStarCodes.pdf)\

-   \*81 Block Caller ID (Persistent Mode)
-   \*82 Unblock Caller ID (Persistent Mode)
-   \*67 Block Caller ID (One Time)
-   \*68 Unblock Caller ID (One Time)
-   \*72 Call Forward All (Enter Number + #)
-   \*73 Disable Call Forward All
-   \*60 Call Forward on Busy (Enter Number + #)
-   \*61 Disable Call Forward in Busy
-   \*62 Call Forward on No Answer (Enter Number + #)
-   \*63 Disable Call Forward No Answer
-   \*56 Enable Call Waiting
-   \*57 Disable Call Waiting
-   \*78 Do Not Disturb - Turn On
-   \*79 Do Not Disturb – Disable

[Category:Equipment](Category:Equipment) [Category:Analog
Telephone Adapters](Category:Analog_Telephone_Adapters)
