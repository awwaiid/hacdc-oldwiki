## Intranet Server {#intranet_server}

### Overview

An Intranet server provides an on-site platform for interfacing
HacDC-specific devices or scripts or files.

#### High Level Requirements {#high_level_requirements}

-   All HacDC members will have an account
-   Private Knowledge Base "For HacDC members eyes only"
-   Programming platform
-   Platform for [Multi-touch
    device](HacDC_Multi-touch_device)
-   Platform for interfacing remote-sensing devices

#### Detailed Requirements {#detailed_requirements}

##### Operating System {#operating_system}

-   Slackware 12.1 Disk 1
-   Slackware 12.1 Disk 2
-   Slackware 12.1 Disk 3

<http://www.slackware.com/getslack/>

##### Package Management {#package_management}

-   Swaret

##### Software

-   Full Installation of all Slacware 12.1 packages

##### 3rd Party Software {#rd_party_software}

-   Wagn 0.9.1

#### Testing Resources {#testing_resources}

##### Equipment

-   Standard CRT
-   Keyboard
-   PS2 Mouse
-   Laptop with web browser

#### Test Plan {#test_plan}

TBD

#### Design

n/a

#### Human Resources {#human_resources}

-   Lead Engineer: [RBD](User:Rdegraci)
-   System Admin: [RBD](User:Rdegraci)
-   Backup Admin: [RBD](User:Rdegraci)

#### Task Partitioning {#task_partitioning}

-   Partition storage
-   Install and configure OS
-   Configure MySQL
-   Configure httpd (Apache 2)
-   Install Wagn 0.9.1
-   Configure Wagn
-   Secure OS
-   Mount Server into Rack
-   Supply power to Server
-   Attach Server to LAN
-   Test Server

#### Timeline

Assume 4 hour days.

-   Day 1
    -   Partition storage
    -   Install and configure OS
    -   Configure MySQL
    -   Configure httpd (Apache 2)
    -   Install Wagn 0.9.1
    -   Configure Wagn
    -   Secure OS
-   Day 2
    -   Mount Server into Rack
    -   Supply power to Server
    -   Attach Server to LAN
    -   Test Server

#### Implementation

TBD

#### Component Testing {#component_testing}

n/a

#### Integration Testing {#integration_testing}

n/a

[Category:Previous Projects](Category:Previous_Projects)
