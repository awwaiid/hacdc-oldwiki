-   Ensure that [node.js](http://nodejs.org/) is installed and operable.
    -   Note that it is necessary to install node.js and npm on the
        build system to build the packages.\*\* Download the latest
        .tar.gz tarball of the node.js source code.
    -   **cd /tmp**
    -   **tar xvfz /path/to/node-vx.y.z.tar.gz**
    -   **cd node-vx.y.z**
    -   **./configure -p --prefix=/usr**
    -   **make**
    -   **make test**
    -   **make install DESTDIR=/tmp/nodejs-vx.y.z**
    -   **dir2xzm /tmp/nodejs-vx.y.z /tmp/node-x.y.z.xzm**
-   Download the source to npm [from
    Github](https://github.com/isaacs/npm/zipball/master).
-   **unzip isaacs-npm-...zip**
-   **cd isaacs-npm-...**
-   **make**
-   **make install**
    -   **mkdir -p /tmp/npm-x.y.z/usr**
    -   **export npm_config_userconfig=./npmrc**
    -   **node cli.js config set cache /tmp/npm-cache**
    -   **node cli.js config set prefix /tmp/npm-x.y.z/usr**
    -   **node cli.js config set unsafe-perm true**
    -   **node cli.js install -g .**
    -   **dir2xzm /tmp/npm-x.y.z /tmp/npm-x.y.z.xzm**
-   Everything goes in */usr/lib/mode_modules/npm*.
-   */usr/bin/npm\** are symlinked to
    */usr/lib/mode_modules/npm/bin/npm.js*.

[Category:Byzantium](Category:Byzantium)
