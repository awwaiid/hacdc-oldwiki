```{=mediawiki}
{{TOCright}}
```
"They who can give up essential liberty to obtain a little temporary
safety deserve neither liberty nor safety." -Benjamin Franklin,
Franklin's Contributions to the Conference on February 17 (III) Fri, Feb
17, 1775 (http://www.ushistory.org/franklin/quotable/singlehtml.htm)

# Anonymity/Privacy?

Q: What is anonymity? A: In the context of security anonymity refers to
the inability of unauthorized parties to link communications to your
"real" identiy in whatever for that may take. This can also work on a
sliding scale such as "Can my
`<crazy stalker/local law enforcement/federal law enforcement>`{=html}
find me?". The answer of yes for the "crazy stalker" will be
significantly easier to achieve than the yes for "federal law
enforcement". Q: What is privacy? A: Privacy is the ability to expose
your information or behavior to only those parties you wish to share it
with. This does not inherently include the ability to obscure your
identity.

Anonymity and privacy are complementary to each other in many cases but
are not mutually inclusive.

# SSL

Why SSL is broken: <http://notary.icsi.berkeley.edu/trust-tree/> The red
circles on that map are the "root CAs", the Certificate Authorities that
have their certificate trusted in most browsers. The size of the circle
is based on the amount of certificates the CA is thought to have issued.
These are all the entities that if one gets hacked, they can issue a
wildcard certificate and your browser would show the certificate as
valid.

# GPG

This page shows how the web of trust works:
<http://www.gnupg.org/gph/en/manual.html#WOT-EXAMPLES>

# TOR

What is TOR and why does it matter?
<http://thenextweb.com/insider/2013/10/08/what-is-tor-and-why-does-it-matter/>

What is TOR? A beginner's guide to the privacy tool -
<http://www.theguardian.com/technology/2013/nov/05/tor-beginners-guide-nsa-browser>

What is TOR from the EFF (https://www.eff.org/torchallenge/what-is-tor):
Tor is a service that helps you to protect your anonymity while using
the Internet. Tor is comprised of two parts: software you can download
that allows you to use the Internet anonymously, and the volunteer
network of computers that makes it possible for that software to work.

When you use the Tor software, your IP address remains hidden and it
appears that your connection is coming from the IP address of a Tor exit
relay, which can be anywhere in the world. There are many reasons you
might use Tor, including keeping websites from tracking you and your
family members, using websites or services which are blocked in your
country (for example, getting around the Great Firewall of China), and
maintaining anonymity when communicating about socially sensitive
information, such as health issues or whistleblowing. Learn more about
who uses Tor.

# Hard Drive Encryption

## Truecrypt (Windows drive encryption)

How to encrypted your system drive (Windows boot drive) on Windows using
Truecrypt:
<http://www.maximumpc.com/article/howtos/how_to_encrypt_your_entire_hard_drive_the_easy_way_using_truecrypt>

# Suggested Software:

Software usable under multiple operating systems is normally listed
under each operating system.

Note about Truecrypt-No complete audit has been done yet, people are
currently collecting funds for a full audit -
<http://istruecryptauditedyet.com/>

## GPG Key IDs:

These are GPG Key IDs which can be obtained from keyservers.

  Group:                                       Key:
  -------------------------------------------- ----------
  TAILS (The Amnesiac Incognito Live System)   BE2CD9C1
  Tor Browser Bundle (TOR Project)             63FEE659
  GPG4Win                                      EC70B1B8
  Truecrypt                                    F0D6B1E0
  GPGTools                                     00D026C4
  Enigmail                                     9369CDF3

## OS independent (Normally bootable iso images):

  Program:                                     Desc:                               URL:                        Why?
  -------------------------------------------- ----------------------------------- --------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  TAILS (The Amnesiac Incognito Live System)   Secure workstation LiveCD           <https://tails.boum.org/>   A Linux Live edition for accessing TOR outside of your normal operating system (Note, for security reasons make sure your normal hard drive isn't accessible while booted into this, running encrypting with any whole drive encryption software should work).
  DBAN                                         Secure storage media destruction.   <http://dban.org/>          

If you require help burning ISO images, please join the HacDC Blabber
mailing list
(https://groups.google.com/a/hacdc.org/group/Blabber/subscribe) and ask
how (make sure to include which operating system you are running when
asking for help).

## Linux and other Unix variants:

  Program:             Desc:                                                URL:
  -------------------- ---------------------------------------------------- -------------------------------------------------------------
  Truecrypt            Hard Drive Encryption, File encryption               <http://truecrypt.org/>
  Tor Browser Bundle   Anonymous web surfing (includes Tor & web browser)   <https://www.torproject.org/download/download-easy.html.en>
  Thunderbird          Email Encryption                                     <https://www.mozilla.org/en-US/thunderbird/all.html>

## Windows:

  Program:             Desc:                                                URL:
  -------------------- ---------------------------------------------------- -------------------------------------------------------------
  Truecrypt            Hard Drive Encryption, File encryption               <http://truecrypt.org/>
  Tor Browser Bundle   Anonymous web surfing (includes Tor & web browser)   <https://www.torproject.org/download/download-easy.html.en>
  Thunderbird          Email Encryption                                     <https://www.mozilla.org/en-US/thunderbird/all.html>
  GPG4Win              GPG front-end for Windows                            <http://www.gpg4win.org/download.html>
  eraser               Secure Delete                                        <http://eraser.heidi.ie/>

## Mac OS:

  Program:             Desc:                                                URL:
  -------------------- ---------------------------------------------------- -------------------------------------------------------------
  Truecrypt            Hard Drive Encryption, File encryption               <http://truecrypt.org/>
  Tor Browser Bundle   Anonymous web surfing (includes Tor & web browser)   <https://www.torproject.org/download/download-easy.html.en>
  Thunderbird          Email Encryption                                     <https://www.mozilla.org/en-US/thunderbird/all.html>
  GPGtools             Integrates GnuPG with MacOSX.                        <http://gpgtools.org/>

## Android:

  Program:       Desc:
  -------------- ----------------------------------------------------------------------
  Orbot          TOR for Android
  Orweb          TOR web browser for Android (Orbot required)
  APG            GPG Program
  K-9 Mail       Email program for Android that can directly interact with APG
  Adblock Plus   Detects and blocks advertisements (images, JavaScript, Java applets)

## iOS:

  ---------- ---------------------------------------------------- -----------------------------
  Ghostery   Blocks web analytics agents (web bugs, JavaScript)   <https://www.ghostery.com/>
  ---------- ---------------------------------------------------- -----------------------------

## Web Browser Plugins:

### Safari:

  Ghostery   Blocks web analytics agents (web bugs, JavaScript)   <https://www.ghostery.com/>
  ---------- ---------------------------------------------------- -----------------------------
  Lastpass   Password manager                                     <https://lastpass.com>

### Firefox:

  Noscript                 Disable JavaScript, Java, Flash, Silverlight, XSS, Clickjacking, etc                                                                                                                    <http://noscript.net/>
  ------------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------
  Lastpass                 Password manager                                                                                                                                                                        <https://lastpass.com>
  HTTPS Everywhere         Enable SSL wherever possible                                                                                                                                                            <https://www.eff.org/https-everywhere>
  Web of Trust             Website reputation checker                                                                                                                                                              <https://www.mywot.com/>
  Mailvelope               GPG Add-on for Firefox and Chrome. Needs vetting and only the chrome addon is available prebuilt from them but the ff adon is easy to build and can be built ahead of time if needed.   <http://www.mailvelope.com/>
  Calomel SSL Validation   Analyzes SSL configuration of sites you visit and gives you an analysis with reasoning behind the rating.                                                                               <https://addons.mozilla.org/en-US/firefox/addon/calomel-ssl-validation/>
  ShareMeNot               Blocks sharing buttons and applets unless you specifically click on them to enable them.                                                                                                <http://sharemenot.cs.washington.edu/>
  HTTPS Finder             Automatically detect SSL capabilities. Generates rules for HTTPS Everywhere.                                                                                                            <https://github.com/kevinjacobs/HTTPS-Finder>
  Ghostery                 Blocks web analytics agents (web bugs, JavaScript)                                                                                                                                      <https://www.ghostery.com/>
  Adblock Plus             Detects and blocks advertisements (images, JavaScript, Java applets)                                                                                                                    <https://adblockplus.org/>

### Chrome:

  Lastpass           Password manager                                                                                                                                                                        <https://lastpass.com>
  ------------------ --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ----------------------------------------
  HTTPS Everywhere   Enable SSL wherever possible                                                                                                                                                            <https://www.eff.org/https-everywhere>
  Web of Trust       Website reputation checker                                                                                                                                                              <https://www.mywot.com/>
  Mailvelope         GPG Add-on for Firefox and Chrome. Needs vetting and only the chrome addon is available prebuilt from them but the ff adon is easy to build and can be built ahead of time if needed.   <http://www.mailvelope.com/>
  ShareMeNot         Blocks sharing buttons and applets unless you specifically click on them to enable them.                                                                                                <http://sharemenot.cs.washington.edu/>
  Ghostery           Blocks web analytics agents (web bugs, JavaScript)                                                                                                                                      <https://www.ghostery.com/>
  Adblock Plus       Detects and blocks advertisements (images, JavaScript, Java applets)                                                                                                                    <https://adblockplus.org/>

### Opera:

  Lastpass       Password manager                                                       <https://lastpass.com>
  -------------- ---------------------------------------------------------------------- -----------------------------
  Ghostery       Blocks web analytics agents (web bugs, JavaScript)                     <https://www.ghostery.com/>
  Adblock Plus   Detects and blocks advertisements (images, JavaScript, Java applets)   <https://adblockplus.org/>

### Internet Explorer:

  Lastpass   Password manager                                     <https://lastpass.com>
  ---------- ---------------------------------------------------- -----------------------------
  Ghostery   Blocks web analytics agents (web bugs, JavaScript)   <https://www.ghostery.com/>

## Non web browser plugins:

### Thunderbird:

  Enigmail   GPG Add-on for Thunderbird   <http://www.enigmail.net/download/index.php>
  ---------- ---------------------------- ----------------------------------------------

# Links:

## Internet:

  Site:                                        URL:                                                                                            Notes:
  -------------------------------------------- ----------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Mailvelope                                   <http://www.mailvelope.com/>                                                                    In-browser PGP encryption for webmail
  Encrypt Everything                           <https://www.encrypteverything.ca/index.php?title=Main_Page>                                    Good resource on encryption for the web. Good resource for beginner to intermediate skill level.
  Surveilance Self-Defense                     <https://ssd.eff.org/>                                                                          EFF's guide to protecting yourself from digital surveilance. Extremely in-depth and detailed. For the advanced (or very paranoid). Not light reading.
  Qualys Browsercheck                          <https://browsercheck.qualys.com/>                                                              Automated scanning of browser, plugins, and Windows updates for vulnerable, out-of-date configuration
  SSL Labs                                     <https://www.ssllabs.com/>                                                                      Tool for checking any site's SSL setup for bad practices and vulnerabilities
  Calomel SSL Validation                       <https://calomel.org/firefox_ssl_validation.html>                                               Firefox add-on for analyzing and verifying SSL configurations of sites you visit.
  DEATH NOTE: L, ANONYMITY & ELUDING ENTROPY   <http://www.gwern.net/Death%20Note%20Anonymity>                                                 A.k.a., why "metadata" matters and how much the NSA can really know about you from your phone records.
  Using Metadata to Find Paul Revere           <http://kieranhealy.org/blog/archives/2013/06/09/using-metadata-to-find-paul-revere/>           Illustration of how to use seemingly useless data points to pin charges on someone. Told from the perspective of a British intelligence officer looking for trators in collonial America.
  crypto-log                                   <http://www.uni-mannheim.de/studorg/gahg/PGP/cryptolog1.html>                                   Updated 1996
  Intro level guide to Internet Security       <http://qz.com/120946/the-complete-guide-to-not-being-that-idiot-who-got-the-company-hacked/>   A guide for non-technical denizens of the Internet on how not to be low-hanging fruit for hackers.
  How the Heartbleed Bug Works                 <https://xkcd.com/1354/>                                                                        Nice illustration of how Heartbleed worked to give layfolk an idea of how some of these exploits happen and how client/server systems negotiate a connection.

## TOR:

  Site:         URL:                                                     Notes:
  ------------- -------------------------------------------------------- --------------------------------------
  tormail.org   <http://jhiwjjlqpyawmpjx.onion/> (http://tormail.org/)   Email service only available via tor
  Mailtor       <http://mailtoralnhyol5v.onion/> (http://mailtor.net/)   Email service only available via tor
