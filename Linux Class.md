Stuff for the HacDC Linux Curriculum. Contains information to make you a
Linux Guru.

Initially, this will be filled with a lot of acronym soup. To make this
easier, please feel free to link in pages from Wikipedia to help readers
with terms they're not familiar with. In the end, the goal of this
class/workshop/curriculum is to help students not only learn new things,
but learn what they don't know as well.

Also see (and contribute to) [Linux Lab](Linux_Lab)

## Class ¼: Introduction and Setup (The Hardware) {#class_¼_introduction_and_setup_the_hardware}

### Types of systems {#types_of_systems}

-   Desktops
-   Servers
    -   Servers (not services)

## Class ½: Introduction and Setup (Installation - Physical Media) {#class_½_introduction_and_setup_installation___physical_media}

## Class ¾: Introduction and Setup (Installation - Kickstart) {#class_¾_introduction_and_setup_installation___kickstart}

Kickstart is a component of "Anaconda", the Red Hat installation system.
Kickstart allows you to provide all of the answers to the questions
prompted during the installation of a system. The result is that the
installation can be completely automated. When combined with
[PXE](http://en.wikipedia.org/wiki/Preboot_Execution_Environment) (the
Preboot Execution Environment) the result is (almost) completely
painless installation of new machines.

The setup of a network based PXE/Kickstart environment can be
challenging for the inexperienced. A netboot enabled PXE environment
will often include a
[TFTP](http://en.wikipedia.org/wiki/Trivial_File_Transfer_Protocol)
server, a
[DHCP](http://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol)
server, and some method of serving the files to the client. In our case,
we use [Apache](http://httpd.apache.org), a piece of software designed
to serve web pages to clients using the
[HTTP](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol)
protocol. Though we're not using it for web pages per se, it still gets
transferred to the clients in the same fashion.

## Class 1: SSH & Getting In {#class_1_ssh_getting_in}

## Class 2: My Little VM {#class_2_my_little_vm}

## Class 3: Service Time: DNS {#class_3_service_time_dns}

[Category:Classes](Category:Classes)
