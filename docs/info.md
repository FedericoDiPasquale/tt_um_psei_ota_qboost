<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project reconstructs a smooth analog waveform from a coarse digital staircase, using a second-order regenerative OTA-C filter.

1. 3-bit R-2R DAC

A classic binary-weighted R-2R resistor ladder (res_generic_po unit resistors, sized for good ratio matching) converts the 3-bit digital code on ui[0:2] into 8 analog voltage levels (0 to VDD·7/8 ≈ 1.575V).

Since the OTA input stage only stays linear over a differential range of a few tens of mV, the full-scale ladder output is passed through a resistive attenuator (series + shunt resistors) that compresses the 8 steps down to roughly 0.225V of total swing, centered around ≈ 0.89375V inside the linear input range of the filter, while preserving the relative spacing between codes.

2. Regenerative OTA-C filter

The scaled staircase drives a second-order Gm-C filter built from four identical 5-transistor OTAs (single differential pair + PMOS current-mirror load + NMOS tail current source, fully self-biased on-chip and no external bias pin):

OTA1, OTA2: the two Gm-C integrators of the classic two-integrator-loop biquad (C1, C2 on-chip MiM capacitors).

OTA3: closes the resonant feedback loop between the two integrator nodes, setting the pole frequency together with C1/C2.

OTA_Q: a smaller, low-current OTA connected in positive feedback on itself (output tied to its own non-inverting input). This creates a negative resistance in parallel with the lossy output node, cancelling most of the parasitic output conductance of the loop and boosting the filter's Q this is the "regenerative" part of the design.

The net effect: the sharp steps of the DAC staircase are smoothed into a continuous sine-like waveform at the output, with the resonance tuned close to the input signal's frequency for maximum smoothing with minimal ripple.

An on-chip resistive divider (VDD/2, sized for low static current) generates the common-mode reference (VCM ≈ 0.9V) used by all four OTAs, no external bias voltage is required.

3. Power

Main VDD is used (1.8V).

## How to test

Drive ui[0], ui[1], ui[2] with a 3-bit code sequence that approximates a sine wave when passed through the DAC — e.g. step through codes 0→7→0 at a fixed sample rate to trace out one period, repeating to build up multiple cycles. A microcontroller, FPGA, or a simple counter/LUT can generate this pattern.

Probe ua[0] with an oscilloscope (or the Tiny Tapeout Analog Discovery setup).
You should see a smooth, continuous waveform tracking the average shape of the input staircase, with the sharp steps filtered out. Increasing/decreasing the code update rate relative to the filter's resonant frequency changes how much smoothing you observe.

Leaving the code static lets you check the DC operating point and confirm the DAC + attenuator sit inside the filter's linear input range (~0.89375V ± 0.1V at the filter input).

## External hardware

None required. Is recommended to use an oscilloscope to observe ua[0], while any digital source can drive ui[0:2].
