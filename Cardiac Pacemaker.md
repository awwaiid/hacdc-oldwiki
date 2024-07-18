# Overview

In order to begin [biomaterials](:Category:Biomaterials)
testing, GrindDC needs a realistic implant test platform. The
implantable cardiac pacemaker was chosen as the first project because it
is:

-   easily implemented
-   cheap to produce
-   small
-   can easily utilize inductive power

# Status

Implant is early in the design phase.

# Goals

## Inductive Power

Inductive power is a core feature that will be implemented in all future
designs for primary power or recharging of implanted power supply.

The pacemaker test platform should implement:

-   inductive power recharge (with battery)
-   inductive power only operation (without battery)
-   easily replaced inductors

## Small Size / Inexpensive

To accomplish the [biomaterials](:Category:Biomaterials)
testing goals the pacemaker reference implant will need to be small in
area to facilitate cheap production of the printed circuit boards.
Additionally, the required parts should be minimized in number and cost.

## Functional

Using a simulated cardiac cell model, the pacer should regulate the
circuit when Artrial-Ventricular block is simulated. The chosen cardiac
model is described in *Synchronization with low power consumption of
hardware models of cardiac cells* (Maeda, Yagi, Makino;
2005[1](http://dx.doi.org/10.1016/j.biosystems.2004.09.005)).

[Category:Implants](Category:Implants)
