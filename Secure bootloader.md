`<noinclude>`{=html} `</noinclude>`{=html}

# Overview

There are six priorities that this secure AVR bootloader provides:

1.  Secure hardware
2.  Encrypted firmware
3.  Signed firmware
4.  Per-device firmware
5.  Enforced limitations
6.  Operable with standard tools

## Secure hardware {#secure_hardware}

The Atmel AVR ATmega128 processor has many specific features designed to
make it very difficult for an attacker to retrieve the firmware image
from inside the chip for reverse engineering. These features are
designed for high-security applications such as cell phones, against
hostile adversaries with significant equipment budgets. Examples of the
effort required to read-out the memory can be found in [FlyLogic's
reverse engineering examination of the
ATmega169](http://www.flylogic.net/blog/?p=15). Their conclusion is that
Atmel makes the most secure microcontrollers on the market.

## Encrypted firmware {#encrypted_firmware}

The firmware images that are sent to customers for updates are protected
with AES128 in CBC chaining mode, approved by the [NSA for classified
data](http://en.wikipedia.org/wiki/Advanced_Encryption_Standard#Security).
The encryption keys and a random IV are stored in protected memory
inside the Mega128 and are not retrievable without significant effort in
excess of re-implementing the software. This prevents anyone from
reverse engineering a firmware update since only the signer and the
device itself are able to decrypt the firmware image.

## Signed firmware {#signed_firmware}

Only approved firmware can be loaded and any modification of the file
before flashing or after it is inside the device will prevent the system
from starting. The boot loader is not circumventable without erasing the
chip and its embedded decryption key, so it is not possible to avoid the
verification step. The loader uses SHA1 as an HMAC algorithm, the [US
NIST standard for message
authentication](http://www.itl.nist.gov/fipspubs/fip180-1.htm).

Because the AES128 key and IV are used as part of the checksum, only the
holder of the keys is able to generate firmware images that will
authenticate and run on the device. Even a single bit modification to
the firmware image after flashing, which is not possible due to the
secure hardware, will cause the authentication routine to fail. Any
changes made to the encrypted version before flashing will cause the
entire image to be corrupted and, obviously, fail to authenticate as
well.

For high-security applications the chip can be configured to do an
automatic erase of the application if this checksum ever fails.

## Per-device firmware {#per_device_firmware}

Each device has its own AES128 key and random 16-byte IV, known only to
the developer and programmed into the secure memory of the Mega128.
Since this key is included in the sum for authentication as part of the
HMAC algorithm at boot time, it is not possible to load a firmware image
with extra features enabled onto another device. For instance, if
certain features are disabled for export control reasons or for extra
cost, it is not possible to use a firmware from another customer on the
one with reduced functionality.

## Enforced limitations {#enforced_limitations}

Several limitations on device features are possible, such as designating
a geographic area in which a GPS equiped device will operate or
limitations on number of hours that the device can be operated. Using
the HMAC algorithm present in the flash memory, it should be possible to
also have a key-generation algorithm to generate a one-time key that
will allow operation over a specified period of time or in a specified
location.

## Standard tools {#standard_tools}

The bootloader speaks the standard
[AVR109](http://www.atmel.com/dyn/resources/prod_documents/doc1644.pdf)
protocol that works with uisp and other programming tools over a
standard RS232 port. No special hardware is required once the bootloader
has been flashed into the chip. The Motorola SREC file that is produced
is encrypted and has the HMAC block in high memory, but since the SREC
format allows holes it does not take much longer than normal serial
programming to install. The HMAC block also includes the capability bits
in high memory where they are safe from `SPM` instructions.

# Source code {#source_code}

-   AES code is based on AVR app note 231
-   <http://www.osresearch.net/~hudson/secload.tar.gz>

## Generating encryption keys {#generating_encryption_keys}

The Makefile will generate keys and IV for a given serial number in a
deterministic fashion. This makes it easy to recover the keys later, if
necessary, but also provide a potential attack. If the nonce is large
enough, it can be impractical to brute force it through an AES
dictionary attack. The `encrypt-firmware` script does key generation as
well if the `--gen-key` argument is passed in.

## TODO

-   The file is encrypted in CBC mode, so it is possible that known
    plaintext attacks against the interrupt vectors in the first few
    bytes. Supporting a randomized offset address and shuffling the
    pages in the file before encrypting would prevent this, but would
    complicate the bootload process.

```{=html}
<!-- -->
```
-   Instead of SREC and AVR109, perhaps the protocol should be changed
    to xmodem or zmodem so even less special software is required.

```{=html}
<!-- -->
```
-   The size of the bootloader requires an atmega128 with a 4 KB boot
    segment.

```{=html}
<!-- -->
```
-   Position the aes and sha1 functions at fixed locations in the boot
    segment so that they can be called by user code to perform HMAC
    validation.

```{=html}
<!-- -->
```
-   Performance measurement of AES and SHA1 algorithm. Can the boot time
    be reduced?

[Category:AVR Tutorial](Category:AVR_Tutorial)
