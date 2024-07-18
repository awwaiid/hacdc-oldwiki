Dependencies are listed [in
CPAN](http://deps.cpantesters.org/?module=Captive%3A%3APortal;perl=latest).
Everything in bold will have to be installed in Byzantium Linux for
Captive-Portal to work.

CPAN can be used to install these modules, or they can be downloaded
separately and installed to an arbitrary location. [This
article](http://perl.about.com/od/packagesmodules/qt/perlcpan.htm)
states that it's advisable to use the latter method whenever possible.

-   CGI::Cookie
-   Scalar::Util
-   **Try::Tiny**
    -   Test::More
    -   ExtUtils::MakeMaker
-   **Capture::Tiny**
    -   <File::Spec>
    -   IO::Handle
    -   Exporter
    -   Carp
    -   <File::Find>
    -   <File::Temp>
-   **Role::Basic**
    -   Storable
    -   Module::Build
-   **Template**
    -   **App::Config**
-   Time:: HiRes
-   **Log::Dispatch::Syslog**
    -   Sys::Syslog
    -   **Params::Validate**
        -   Attribute::Handlers
-   **Authen::Simple**
    -   **Crypt::PasswdMD5**
    -   **Class::Accessor::Fast**
    -   MIME::Base64
    -   Digest::MD5
    -   Digest::SHA
    -   **Class::<Data::Inheritable>**
-   **JSON**
-   **Log::Log4Perl**

Listing all of the installed Perl modules on a system: **perl
-MFile::Find=find -MFile::Spec::Functions -Tlwe 'find { wanted =\> sub {
print canonpath \$\_ if /\\.pm\\z/ }, no_chdir =\> 1 }, \@INC**'

Running the Build.PL script, it reports that the following prerequisite
modules aren't installed but can be with the command **./Build
installdeps**:

-   Authen::Simple is not installed
-   Capture::Tiny is not installed
-   JSON is not installed
-   Log::Dispatch::Syslog is not installed
-   Log::Log4perl is not installed
-   Role::Basic is not installed
-   Template is not installed
-   Try::Tiny is not installed

Build.PL recommends that the following additional modules be installed:

-   ~~Authen::Simple::RADIUS is not installed~~ - We don't need RADIUS
    for authentication!
-   <HTTP::Server>::Simple::CGI is not installed
-   <HTTP::Server>::Simple::Static is not installed
-   ~~Test::WWW::Mechanize::CGI is not installed~~

Useful arguments to ./Build:

-   help
-   fakeinstall
-   installdeps
-   install
-   rereq_report - Of the prerequisite modules this module needs, show
    which ones are installed, which ones aren't, and the revisions of
    the ones that are.

If you run **./Build installdeps**, it will ask you each step of the way
if you want to install the prerequisite module. It's going to default to
configuring and using CPAN for this.

**/opt/porteus/changes-time.sh** can be used to determine what files
have been added to a running installation of Porteus Linux, and we can
then copy them into */tmp/fakeroot* for inclusion in 000-byzantium.xzm.
This script copies them into another directory where things can be done
to them (such as running **dir2xzm**).

[Category:Byzantium](Category:Byzantium)
