This page is a resource for keysigning parties @ HacDC.

## Upcoming Parties

Friday, November 13th @ 7:30PM

## Past Parties

September 10th, 2009

-   We had about 20 folks and about 10 of whom were productively
    keysigning.

## Intro to KeySigning

-   You have a private key and a public key, which you generate (your
    keypair).
    -   gpg --gen-key

```{=html}
<!-- -->
```
-   People use your public key to send you encrypted messages that only
    you can open via the magic of crypto!
    -   gpg --output doc.gpg --encrypt --recipient obscurite@hacdc.org
        doc

```{=html}
<!-- -->
```
-   You decrypt these messages with your private key, which only you
    have access to.
    -   gpg --output doc --decrypt doc.gpg

```{=html}
<!-- -->
```
-   But first, you must share your public key, either directly or by
    uploading it to a keyserver.
    -   gpg --keyserver pgp.mit.edu --send-keys D34DB33F

```{=html}
<!-- -->
```
-   If it's on a keyserver, they must download it from the keyserver.
    -   gpg --keyserver pgp.mit.edu --recv-key D34DB33F

```{=html}
<!-- -->
```
-   If it was a file (called obscurite.gpg for example), they can import
    it manually.
    -   gpg --import obscurite.gpg

```{=html}
<!-- -->
```
-   Now they can sign the key and send the key back to the keyserver.
    -   gpg --sign-key D34DB33F

```{=html}
<!-- -->
```
-   But before anyone signs anyone elses key they have to make sure that
    person actually owns that key (checking physical ID).
    -   Minimum recommendation is state photo ID + secondary photo ID
        (school, employer)

```{=html}
<!-- -->
```
-   You can see who has signed someone's public key. If their key has
    been signed by someone in your web of trust, then that person is in
    your web of trust as well.
    -   gpg --list-sigs D34DB33f

```{=html}
<!-- -->
```
-   Don't forget to generate a revokation certificate for your public
    key in case you lose your passphrase or your key is compromised!
    -   gpg --gen-revoke

## DETAILS

-   Obscurite generally uses the pgp.mit.edu keyserver, but
    keyserver.ubuntu.com is well liked and they do sync regularly, so it
    doesn't especially matter which one you use, except that pgp.mit.edu
    has a nice web search interface.
-   I will pass around copies of signatures so you can check people off
    as you confirm their identity
-   I recommend using a valid state photo ID as a minimum validation. It
    is up to your personal "keysigning policy."

## Links

-   [Keysigning
    commands](http://commandline.org.uk/command-line/ten-steps-for-attending-a-keysigning-party/)
-   [Keysigning
    HOWTO](http://www.cryptnet.net/fdp/crypto/keysigning_party/en/keysigning_party.html#overview)
-   [Perl script to generate keyring
    list](http://cryptnet.net/fdp/crypto/keysigning_party/en/extra/party-table.pl)
-   [Checking the integrity of the installer, even without GPG already
    installed](http://www.gnupg.org/download/integrity_check.en.html)

[Category:Previous_Projects](Category:Previous_Projects)
