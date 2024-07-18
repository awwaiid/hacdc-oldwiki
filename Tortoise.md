# Functions

-   Shell server
-   Ssh public key access **only**
-   Per user local network webhosting and file shares via
    [Hoard](Hoard).

# Software

Any software can be requested and almost certianly will be installed.

# Access

For an acount on this server email admin@hacdc.org with the subject:

` Shell Account`

Provide a desired username and a second choice username. Include an ssh
public key as an attachement. access to this server is by ssh key only.

# Admin Notes

Host machine is [Albert](Albert).

## Xen Configs

-   -   CPU: 3
    -   RAM: 128MB
    -   Disk:
        -   / - albert/tortoise-disk
        -   swap - albert/tortoise-swap
        -   /home - albert/tortoise-home
        -   /home/users - /srv/share/users
        -   /srv/share - hoard:/srv/share
        -   /var - albert/tortoise-var
        -   /tmp - albert/tortoise-tmp

## Users

-   "staff"/admin accounts in /home/admin
-   user accounts in /home/users
-   To add a new user:

1.  \~# adduser --disabled-password --ingroup users `<username>`{=html}
2.  \~# echo `<user provided ssh key>`{=html} \>
    /home/users/`<username>`{=html}/.ssh/authorized_keys
3.  Notify `<user>`{=html} of account creation and include the ssh
    oneliner for loggin into the server.

## OS Config

-   Process limit:
-   Memory limit:
-   mesg -n set in /etc/profile.d
-   Firewall rules and other network restrictions:
-   FS restrictions:
    -   /var - nosuid,nodev
    -   /home - nosuid,nodev
    -   /tmp - nosuid

[Category:Infrastructure](Category:Infrastructure)
[Category:Servers](Category:Servers)
[Category:VMs](Category:VMs)
