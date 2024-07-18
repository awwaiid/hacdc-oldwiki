## Build-A-CTF

Join us to create unique hacking CTF competitions meeting **every Sunday
at the HacDC Space**. Sign up for events at
[Meetup.com](https://www.meetup.com/hac-dc/events/291602998/).

As per Wikipedia, "A Capture the Flag (CTF) in computer security is an
exercise in which "flags" are secretly hidden in purposefully-vulnerable
programs or websites. It can either be for competitive or educational
purposes. Competitors steal flags either from other competitors
(attack/defense-style CTFs) or from the organizers (jeopardy-style
challenges)."

### Goals

Our first CTF aims to achieve the following goals:

1.  Be a *learning experience*, for both the organizers and participants
2.  Be *beginner-friendly*, open and accessible to first-time
    participants
3.  Be *fun, engaging, and encouraging* to newcomers to explore the
    wider world of cybersecurity

## Design

Based on the above goals, we have decided to design our first
competition in the style of \[
<https://en.wikipedia.org/wiki/King_of_the_hill_(game)> King of the
Hill\] (KotH). A participant wins the event upon maintaining the sole
login session on the target machine for 30 **uninterrupted** minutes.
Participants may use any exploit to establish a session on the target
machine, but are only allowed to patch the exploit that they used to
enter upon establishing a session. It is in the interest of the present
King to monitor the machine for sessions established by other teams, and
to continue to research exploits in the event that they are dethroned by
an opposing team.

### Architecture

The environment will be developed in [GNS3](https://gns3.com/), a
virtualization software that enables the CTF organizers to construct a
purely software-based network, all within a single VM! VMs inside a VM,
a.k.a. VM-ception.

![\|alt=Screenshot from GNS3 GUI of example network\|Example network
created within GNS3, taken from the [GNS3
docs](https://docs.gns3.com/docs/).](Example_GNS3.png "|alt=Screenshot from GNS3 GUI of example network|Example network created within GNS3, taken from the GNS3 docs.")
