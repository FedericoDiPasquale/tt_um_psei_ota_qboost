# Regenerative OTA-C Q-Boosted Filter in SKY130A 130nm

## Abstract

This project implements a second-order regenerative OTA-C filter that smooths the staircase output of an on-chip 3-bit R-2R DAC into a continuous, sine-like waveform. The filter is built from four self-biased 5-transistor OTAs arranged in a classic two-integrator-loop biquad, with an additional OTA cell wired in positive feedback on itself to act as a negative resistance and boost the loop's quality factor Q. Schematic-level simulation (ngspice, Sky130A tt corner) confirmed correct staircase reconstruction, a resonant peak around 4.5MHz with Q more than 10, and unity (0dB) DC gain. The full layout has been completed in Magic and is LVS-clean, with parasitic extraction (PEX) available for post-layout verification.

## Architecture

[Schema a blocchi + descrizione dei blocchi principali.
Puoi usare ASCII art o un'immagine (preferibile) caricata in docs/.]

## Implementation

1) PDK: SkyWater SKY130A (sky130_fd_pr primitive devices: nfet_01v8, pfet_01v8, res_generic_po, res_xhigh_po, cap_mim_m3_1).
2) Schematic capture and  simulation: xschem + ngspice.
3) Layout: Magic VLSI layout tool, using the Sky130 device generators (gencells) for all primitive devices (transistors, poly/xhigh-poly resistors, MiM capacitors) to guarantee DRC-correct geometry.
4) Verification: DRC and LVS (layout vs. schematic) in Magic/netgen all blocks pass LVS. Parasitic extraction (PEX) performed for post-layout re-simulation in ngspice.
5) Bias generation: fully self-biased, no external analog bias pins. Main OTAs use a fixed-VGS tail device (gate tied to VDD, channel length tuned to set the target tail current) instead of a resistor-based current reference, minimizing static power. The VCM reference is a low-current (µA-range) resistive divider.
6) DAC architecture choice: R-2R was chosen over a resistor-free charge-redistribution DAC for simplicity, since resistors were already required elsewhere in the design (VCM divider, input attenuator).
7) Q-boosting: the classic "regenerative" technique (same principle as Armstrong's regenerative radio receiver) an OTA in positive feedback presents a negative small-signal resistance that partially cancels the parasitic output conductance of the main resonant loop, raising Q without adding a separate high-Q passive component.
8) Sizing methodology: device W/L and bias currents were derived using the gm/ID method, cross-checked against simulated gm/gds at the actual DC operating point.

## Simulation results

1) Transient (staircase reconstruction): driving the R-2R DAC with an 8-level code sequence approximating a sampled sine wave, the schematic-level filter output reconstructs a smooth, continuous waveform with the staircase steps fully removed.

2) AC response: a clear resonant peak is visible near fo, with the expected 180° total phase rotation through resonance, confirming genuine complex-conjugate pole behavior.

3) Post-layout (PEX): parasitic-extracted netlist available; post-layout vs. pre-layout comparison.

(images available in folder docs).

## How to test

[Istruzioni per testare il chip fisico dopo la produzione.
Copia dalla sezione corrispondente di docs/info.md.]

## External hardware

[Hardware esterno necessario. Copia da docs/info.md.]

## References

[Articoli di riferimento, PDK, tool.
Esempio:
- SkyWater SKY130 PDK: https://skywater-pdk.readthedocs.io/
- TinyTapeout: https://tinytapeout.com/
- IIC-OSIC-TOOLS: https://github.com/iic-jku/IIC-OSIC-TOOLS]
