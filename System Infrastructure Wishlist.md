```{=mediawiki}
{{Obsolete}}
```
This page describes infrastrural wishlist items for the next iteration
of HacDC's web site and general system configruration.

## Centralized Authentication {#centralized_authentication}

Currently HacDC services all have their own authentication backends.
Future services should all get authentication information from an
authentication service, either directly or indirectly (ie a generated
file).

The services that could currently use this service would be:

-   Logins to project server
-   HacDC Wiki
-   Mailing Lists
-   Weblog

## Verified Backups {#verified_backups}

To protect against either malice or disaster, backups of production
systems should be made with storage away from the original server. This
may include using either another server in a separate location or a
storage solution such as Amazon S3.

## No Root Passwords {#no_root_passwords}

No HacDC member should be given the HacDC password except the ministers,
who would have it in a sealed envelope. Users needing administrative
access to services would do so through sudo or other means of explicit
login and privilege escalation.

## Configuration Management with Version Control {#configuration_management_with_version_control}

In addition to the elimination of root password, most (if not all)
configuration management tasks should be accomplished through the use of
configuration management software (puppet, cfengine, etc.) using a
version controlled backend (svn, git, etc.). This will provide not only
a mechanism for disaster recovery but also provides easy migration of
services (should the need arise) and also a log of changes through time
to provide historical context as well as accountability.

## VPN To Alternate Sites {#vpn_to_alternate_sites}

Due to the complexity of SSL, many systems are difficult to set up.
Should HacDC have more than one server, these servers should be
connected via a VPN, which would allow them to share sensitive data (eg
authentication information, backups) without the need for the complexity
of SSL.

## Login Precautions {#login_precautions}

HacDC may draw some unwanted attention by certain elements of the
computer community. It should take reasonable steps to prevent attack.
This should probably include serveral possible measures against
intrusion including:

-   SSH Key-Only access to servers
-   Only allowing access in from certain trusted hosts/sites
