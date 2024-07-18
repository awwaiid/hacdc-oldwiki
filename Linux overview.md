A few tips / definitions / explanations. (Disclaimer: I may be wrong,
but my understanding has been "good enough" to get me through the day,
keep me gainfully employed and my hardware generally running well.)

The Linux operating system consists of one major component known as the
kernel plus several "standard" applications that give you a bare-bones,
"well, I can type something and it responds" interface -- somewhat
similar to the old, old, old computers that, when you turned them on,
you would get the BASIC programming language and nothing more.
Everything you wanted to do after that point required you to either
obtain, or write a program in BASIC to accomplish the simplest of tasks.

A distribution is a combination of the above, plus a set of
applications, icons, fonts, and default preferences for each
application. Plus, a package manager which links to a central repository
or set of repositories on the Internet from which you can obtain new
packages and updates to currently installed packages.

A package is a compressed file, like a zip file, that bundles either an
application, or a shared library of functions used by several
applications. The package also contains meta-information about itself
that often includes the version of the package, the date it was created,
a summary of the purpose of the package, a list of dependencies -- i.e.
does it require other packages in order to function? and sometimes, the
reverse -- are there any other packages that require this package in
order to function? This meta-information is used by the package manager
to add, remove and upgrade packages.

A release is a major upgrade of LOTS of packages, and often requires a
bit more finesse than simply running a package manager. In some cases,
the recommended procedure for handling a new release is to back up all
your personal data, and start from scratch -- reformatting the hard disk
and installing the new release.  I rarely do that (even when it's
"recommended") because it's a bit of a nuisance. 

The releases come with a numbering system, of which I find the Ubuntu
scheme to be the sanest: two-digit year, dot, two-digit month, and
optionally, dot, one-digit "version". Thus 19.04 was released in April
of 2019. There are also "code names" corresponding to a release. Debian
code names are taken from the "Toy Story" movies, Ubuntu code names are
alliterative adjective animal combinations usually, and Mint code names
being -- to me, the most overly complicated -- a female first name
starting with the letter whose alphabetical index corresponds to the
version number and ending with the letter "a". (Why the letter "a"
business? But, that's the beauty of Free Open Source Software -- folks
get to do whatever the hell they want, and damned the naysayers. )

An LTS release is a Long Term Support release, meaning you can stay with
it longer, without having to go through a lot to keep it up to snuff,
and when the next LTS release comes out, the ease of moving from the old
LTS to the new LTS is better. Between LTS releases, there are non-LTS
releases, for people who (a) want / need to keep on the cutting edge and
(b) are Linux-savvy and know what they're doing. LTS releases are meant
to be more consumer-friendly, or, in the cases where a systems
administrator is handling hundreds of machines or machines that must be
running 24/7, a release with a high degree of stability and minimal
reconfiguring / rebooting between releases.

Many distributions are spin-offs / descendants of other distributions.
Two of the oldest and most well-respected distributions from which many
others descend are Red Hat (now a part of IBM) and Debian. Interesting
trivia: Debian was created by a romatic named Ian Murdock who was deeply
in love with, and eventually married (and eventually divorced) Debra
Lynn. He named the distribution after them Deb + Ian. Red Hat was named
for a red lacrosse hat worn by founder Marc Ewing, and given to him by
his grandfather.. (Marc is not to be confused with Larry Ewing who
created the Linux mascot "Tux the Penguin". No apparent relation.)

But I digress.

While there are other well-known and well-used "first" distributions,
it's Red Hat and Debian that have spawned the most children. The big
difference between the two is the format of their package meta-data, and
the package manager that handles that data. Descending from Red Hat are
SuSE, Fedora and CentOS among others. Red Hat package files (used by all
the derivatives and descendants) end with the file extension .rpm and
are handled by the Red Hat Package Manager (RPM). Ubuntu, probably the
most famous distribution these days, is a descendant of Debian, and has
many children of its own, including Mint, which is what you'e using.
Debian package files end with the extension .deb and are handled by apt
(the Advanced Package Tool) or dpkg, or the GUI application Synaptic
(the "apt" in the middle being a play on  the Advanced Package Tool).
You will be mostly using synaptic.

One final point (for now). It gets a bit confusing, but there is also
something called a desktop environment which can drastically alter the
appearance of the main graphical screen you see when you first login. It
controls where the menu bar is placed, how applications are categorized
and grouped within the start menu, the preferred background colors and
icons used to represent each application, etc. Also, because of that
look-and-feel, some applications are created with an appearance better
suited to the look and feel of the desktop environment. And, here's the
confusing bit: Many distributions offer "sub-distributions" offering a
different desktop environment for each. For example, Ubuntu uses a
desktop environment known as GNOME. But many Ubuntu users didn't like it
or found that, on old equipment, it was too hungry for resources,
slowing the machine down too much. So, spinoffs Kubuntu using the KDE
desktop environment, Xubuntu using the xfce environment and Lubuntu
using originally lxde and now lxqt, were born. (KDE is a monster
well-suited for modern machines whereas xfce and lxde are very
"lightweight" and suited for older computers without much horsepower.)

Some distributions, including Mint, comes in a few "flavors" as well.
Specifically you are using the Cinnamon desktop environment. Mint also
offers an xfce environment and a MATE environment, but Cinnamon is good
for a modern machine, whereas the other two are for older hardware.  I
believe the disk-less, battery-less machines in the space are running a
MATE (pronounced "mah-tay"). The point here is that when you're looking
for instruction, tutorials, upgrades, additional packages not provided
with the basic distribution, etc. It's very important to know that
you're using Mint and that Debian begat Ubuntu begat Mint, and it helps
to be vaguely aware that you are using the Cinnamon desktop environment.

I THINK the above is a good "grounding" in the "lingo".
