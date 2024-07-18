I'm basing the process off of [the Arch Linux AUR for
NPM](http://aur.archlinux.org/packages/no/nodejs-npm/PKGBUILD), which
does pretty much the same thing.

-   su -
-   rm -rf /tmp/fakeroot
-   mkdir -p /tmp/fakeroot
-   curl -SsL <http://registry.npmjs.org/npm/> \| sed -e
    's/\^.\*tarball":"//' -e 's/".\*\$//'
    -   This results in the URL of the latest version of NPM available.
-   mkdir -p /tmp/fakeroot/usr/share/{doc,licenses/npm}
-   cd /tmp
-   wget `<URL of latest version of NPM>`{=html}
-   tar xvfz npm-x.y.z.tar.gz
-   node package/cli.js config set unsafe-perm true
-   node package/cli.js config set prefix /tmp/fakeroot/usr
-   node package/cli.js install -g ./npm-x.y.z.tar.gz
-   node package/cli.js config set prefix /usr
-   node package/cli.js config set unsafe-perm false
-   cp -r package/html/ /tmp/fakeroot/usr/share/doc/npm
-   install -m 644 package/LICENSE /tmp/fakeroot/usr/share/licenses/npm/
-   dir2xzm /tmp/fakeroot /tmp/npm-x.y.z.xzm

[Category:Byzantium](Category:Byzantium)
