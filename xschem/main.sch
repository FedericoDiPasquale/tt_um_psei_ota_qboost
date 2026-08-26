v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -630 100 -540 100 {lab=v_dac}
N -540 100 -410 100 {lab=v_dac}
N -680 -0 -680 50 {lab=VDD}
N -360 0 -360 60 {lab=VDD}
N -680 -0 -360 -0 {lab=VDD}
N -520 -50 -520 -0 {lab=VDD}
N -680 150 -360 150 {lab=GND}
N -360 140 -360 150 {lab=GND}
N -520 150 -520 170 {lab=GND}
C {lab_wire.sym} -520 100 0 0 {name=p2 sig_type=std_logic lab=v_dac}
C {DAC3bit.sym} -680 100 0 0 {name=x5}
C {otaSys_5t_sky130.sym} -350 100 0 0 {name=x1}
C {ipin.sym} -520 -50 0 0 {name=p6 lab=VDD}
C {ipin.sym} -520 170 0 0 {name=p7 lab=GND}
C {ipin.sym} -730 80 0 0 {name=p1 lab=b0}
C {ipin.sym} -730 100 0 0 {name=p3 lab=b1}
C {ipin.sym} -730 120 0 0 {name=p4 lab=b2}
C {opin.sym} -310 100 0 0 {name=p5 lab=out}
