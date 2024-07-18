**Video scaler with VGA output**

To reduce the high likelihood of this project ending in undebuggable
disaster, I plan to start off with simple goals and add complexity to
the code and input/output circuitry incrementally.

1: (COMPLETED) Generate a simple 640x480 VGA test pattern with all
timing and sync signals controlled by the FPGA.

3: Create a framebuffer in Block RAM or the devboard's SRAM.

4: Use the framebuffer to window low resolution (\<640x480) digital
video input within a 640x480 output frame (no scaling).

5: Attempt to implement scaling algorithms to scale the input resolution
to fill the full frame of the output resolution.

6: Add 24-bit color depth to the output with the addition of a THS8134B
video DAC.

If I can manage to get this far, I will add additional objectives.

[Category:FPGAWorkshop](Category:FPGAWorkshop)
