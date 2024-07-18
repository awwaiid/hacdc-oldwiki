## ze microTweeter

This microTweeter application was written so I could learn python and
play with my microcontroller a bit. Its a combination twitter
application, python script and blob of microcontroller \[avr atmega88\]
code designed.

In short - register twitter application, setup your pytweet library,
burn main.c into your microcontroller, run the python script and then
press the button. You'll quickly be tweeting as fast your can push a
button...

### Instructions

1.  Install pySerial if you haven't already
    <http://pyserial.sourceforge.net/>
2.  Install pyTwitter from <http://code.google.com/p/pytwitter/>
    1.  pyTwitter relies on a few additional python libraries, so follow
        their instal instructions
3.  Make sure you have an account on Twitter. www.twitter.com
4.  Sign up for an application on twitter (dev.twitter.com/apps)
    1.  When you create your application, you'll get a consumer key and
        consumer secret value. Note these.
    2.  Follow instructions at the top of this page
        <http://dev.twitter.com/pages/oauth_single_token> to generate
        your personal access key and secret. Note these.
5.  Setup your \~/.tweetrc file. This is a selfconfig file. See the
    example tweet.py code from the pytwitter code.
    1.  This uses file uses the four keys from the previous step
    2.  Make sure you test your setup with tweet.py !
6.  Program your board with the main.c file in the microTweeter package
    below.
    1.  This has been designed with elliots board in mind, so it uses
        the pushbutton and serial port to do IO.
7.  Assemble a file of quotes to use!
    1.  I've provided a file of 22 Monty Python quotes. Feel free to use
        it or make your own file!
8.  run the python script, microTweeter, giving it file and port
    arguments in order to make twitter magicks happen.
    1.  I take no responsibility for your friends weighing you against a
        duck if you overuse this application

### Files

Download the whole package here
[media:MicroTweeter.tar.gz](media:MicroTweeter.tar.gz)

[Category:Previous Projects](Category:Previous_Projects)
