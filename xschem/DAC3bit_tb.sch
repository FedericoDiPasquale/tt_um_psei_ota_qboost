v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 120 -330 920 70 {flags=graph
y1=0
y2=0.006
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="b0
b1
b2"
color="4 12 7"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/DAC3bit_tran.raw
hilight_wave=0}
B 2 120 170 920 570 {flags=graph
y1=0.89
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
x1.vx"
color="4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/DAC3bit_tran.raw}
N -630 120 -410 120 {lab=b0}
N -570 160 -410 160 {lab=b1}
N -300 160 -210 160 {lab=out}
N -510 200 -410 200 {lab=b2}
N -410 160 -400 160 {lab=b1}
N -400 120 -400 140 {lab=b0}
N -410 120 -400 120 {lab=b0}
N -410 200 -400 200 {lab=b2}
N -400 180 -400 200 {lab=b2}
C {gnd.sym} -570 220 0 0 {name=l1 lab=0}
C {gnd.sym} -630 180 0 0 {name=l2 lab=0}
C {opin.sym} -210 160 0 0 {name=p1 lab=out}
C {lab_wire.sym} -580 120 0 0 {name=p2 sig_type=std_logic lab=b0}
C {lab_wire.sym} -530 160 0 0 {name=p3 sig_type=std_logic lab=b1}
C {gnd.sym} -510 260 0 0 {name=l3 lab=0}
C {lab_wire.sym} -470 200 0 0 {name=p4 sig_type=std_logic lab=b2}
C {sky130_fd_pr/corner.sym} -180 340 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -350 350 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1n 5u
write DAC3bit_tran.raw
op
write DAC3bit_op.raw
ac dec 20 1k 100meg
write DAC3bit_ac.raw
.endc"}
C {bsource.sym} -630 150 0 0 {name=B0 VAR=V FUNC="'(((time-floor(time/200n)*200n)>=50n && (time-floor(time/200n)*200n)<75n) || ((time-floor(time/200n)*200n)>=125n && (time-floor(time/200n)*200n)<150n) || ((time-floor(time/200n)*200n)>=175n && (time-floor(time/200n)*200n)<200n)) ? 1.8 : 0'" m=1}
C {bsource.sym} -570 190 0 0 {name=B1 VAR=V FUNC="'((time-floor(time/200n)*200n)>=25n && (time-floor(time/200n)*200n)<100n) ? 1.8 : 0'" m=1}
C {bsource.sym} -510 230 0 0 {name=B2 VAR=V FUNC="'(time-floor(time/200n)*200n)<125n ? 1.8 : 0'" m=1}
C {DAC3bit.sym} -350 160 0 0 {name=x1}
C {gnd.sym} -350 210 0 0 {name=l4 lab=0}
C {vsource.sym} -350 80 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -350 50 2 0 {name=l5 lab=0}
