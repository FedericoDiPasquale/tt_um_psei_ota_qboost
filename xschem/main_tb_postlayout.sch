v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 420 -500 1220 -100 {flags=graph
y1=0.68
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5292246e-05
x2=2.5646423e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
outlay
x1.v_dac"
color="4 7 6"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/main_postlayout_tran.raw
hilight_wave=-1}
B 2 420 -80 1220 320 {flags=graph
y1=0.0012
y2=23
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=2.5292246e-05
x2=2.5646423e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=7
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/main_ac.raw}
B 2 420 340 1220 740 {flags=graph
y1=-7.8
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5292246e-05
x2=2.5646423e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=ph(out)
color=12
dataset=-1
unitx=1
logx=0
logy=0
}
N -960 60 -740 60 {lab=b0}
N -900 100 -740 100 {lab=b1}
N -840 140 -740 140 {lab=b2}
N -740 100 -730 100 {lab=b1}
N -730 60 -730 80 {lab=b0}
N -740 60 -730 60 {lab=b0}
N -740 140 -730 140 {lab=b2}
N -730 120 -730 140 {lab=b2}
N -500 0 -500 50 {lab=#net1}
N -730 80 -570 80 {lab=b0}
N -730 100 -570 100 {lab=b1}
N -730 120 -570 120 {lab=b2}
N -660 80 -660 250 {lab=b0}
N -660 250 -570 250 {lab=b0}
N -650 100 -650 270 {lab=b1}
N -650 270 -570 270 {lab=b1}
N -640 120 -640 290 {lab=b2}
N -640 290 -570 290 {lab=b2}
N -500 30 -410 30 {lab=#net1}
N -410 30 -410 220 {lab=#net1}
N -500 220 -410 220 {lab=#net1}
N -500 150 -460 150 {lab=0}
N -460 150 -460 160 {lab=0}
N -500 320 -460 320 {lab=0}
N -460 320 -460 330 {lab=0}
N -460 180 -230 180 {lab=0}
N -460 160 -460 180 {lab=0}
N -430 100 70 100 {lab=#net2}
N 70 100 70 140 {lab=#net2}
N -230 120 -230 140 {lab=out}
N -230 120 100 120 {lab=out}
N 100 100 100 120 {lab=out}
N -460 330 -230 330 {lab=0}
N -430 270 70 270 {lab=#net3}
N 70 270 70 290 {lab=#net3}
N -230 260 -230 290 {lab=outlay}
N -230 260 100 260 {lab=outlay}
C {sky130_fd_pr/corner.sym} -880 280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {gnd.sym} -900 160 0 0 {name=l11 lab=0}
C {gnd.sym} -960 120 0 0 {name=l12 lab=0}
C {lab_wire.sym} -910 60 0 0 {name=p3 sig_type=std_logic lab=b0}
C {lab_wire.sym} -860 100 0 0 {name=p4 sig_type=std_logic lab=b1}
C {gnd.sym} -840 200 0 0 {name=l13 lab=0}
C {lab_wire.sym} -800 140 0 0 {name=p5 sig_type=std_logic lab=b2}
C {bsource.sym} -960 90 0 0 {name=B0 VAR=V FUNC="'(((time-floor(time/200n)*200n)>=50n && (time-floor(time/200n)*200n)<75n) || ((time-floor(time/200n)*200n)>=125n && (time-floor(time/200n)*200n)<150n) || ((time-floor(time/200n)*200n)>=175n && (time-floor(time/200n)*200n)<200n)) ? 1.8 : 0'" m=1}
C {bsource.sym} -900 130 0 0 {name=B2 VAR=V FUNC="'((time-floor(time/200n)*200n)>=25n && (time-floor(time/200n)*200n)<100n) ? 1.8 : 0'" m=1}
C {bsource.sym} -840 170 0 0 {name=B3 VAR=V FUNC="'(time-floor(time/200n)*200n)<125n ? 1.8 : 0'" m=1}
C {opin.sym} 100 100 0 0 {name=p1 lab=out}
C {vsource.sym} -500 -30 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -500 -60 2 0 {name=l2 lab=0}
C {code.sym} -990 280 0 0 {name=s1 only_toplevel=false value="
.control
save all
.param f=5Meg
.param Fs=20Meg
.param Ts=\{1/Fs\}
tran 1n 60000n
write main_postlayout_tran.raw
op
write main_postlayout_op.raw
ac dec 20 1 100meg
write main_postlayout_ac.raw
.endc"}
C {main.sym} -500 100 0 0 {name=x1}
C {gnd.sym} -500 150 0 0 {name=l1 lab=0}
C {main.sym} -500 270 0 0 {name=x2
schematic=main_parax
spice_sym_def="tcleval(.include [file normalize ../mag/main.sim.spice])"}
C {gnd.sym} -500 320 0 0 {name=l3 lab=0}
C {opin.sym} 100 260 0 0 {name=p2 lab=outlay}
C {pad_model.sym} -80 160 0 0 {name=x3}
C {pad_model.sym} -80 310 0 0 {name=x4}
