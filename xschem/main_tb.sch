v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 420 -500 1220 -100 {flags=graph
y1=0.14
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=6e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
x1.v_dac"
color="4 1"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/main_tran_ss.raw}
B 2 420 -80 1220 320 {flags=graph
y1=0.0012
y2=23
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=6e-05
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
x1=0
x2=6e-05
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
N -310 100 -200 100 {lab=out}
N -730 80 -570 80 {lab=b0}
N -730 100 -570 100 {lab=b1}
N -730 120 -570 120 {lab=b2}
N -500 0 -500 50 {lab=#net1}
N -430 100 -310 100 {lab=out}
C {sky130_fd_pr/corner.sym} -700 280 0 0 {name=CORNER only_toplevel=true corner=tt}
C {gnd.sym} -900 160 0 0 {name=l11 lab=0}
C {gnd.sym} -960 120 0 0 {name=l12 lab=0}
C {lab_wire.sym} -910 60 0 0 {name=p3 sig_type=std_logic lab=b0}
C {lab_wire.sym} -860 100 0 0 {name=p4 sig_type=std_logic lab=b1}
C {gnd.sym} -840 200 0 0 {name=l13 lab=0}
C {lab_wire.sym} -800 140 0 0 {name=p5 sig_type=std_logic lab=b2}
C {bsource.sym} -960 90 0 0 {name=B0 VAR=V FUNC="'(((time-floor(time/200n)*200n)>=50n && (time-floor(time/200n)*200n)<75n) || ((time-floor(time/200n)*200n)>=125n && (time-floor(time/200n)*200n)<150n) || ((time-floor(time/200n)*200n)>=175n && (time-floor(time/200n)*200n)<200n)) ? 1.8 : 0'" m=1}
C {bsource.sym} -900 130 0 0 {name=B2 VAR=V FUNC="'((time-floor(time/200n)*200n)>=25n && (time-floor(time/200n)*200n)<100n) ? 1.8 : 0'" m=1}
C {bsource.sym} -840 170 0 0 {name=B3 VAR=V FUNC="'(time-floor(time/200n)*200n)<125n ? 1.8 : 0'" m=1}
C {opin.sym} -200 100 0 0 {name=p1 lab=out}
C {vsource.sym} -500 -30 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -500 -60 2 0 {name=l2 lab=0}
C {code.sym} -830 280 0 0 {name=s1 only_toplevel=false value="
.control
save all
.param f=5Meg
.param Fs=20Meg
.param Ts=\{1/Fs\}
tran 1n 60000n
write main_tran.raw
op
write main_op.raw
ac dec 20 1 100meg
write main_ac.raw
.endc"}
C {main.sym} -500 100 0 0 {name=x1}
C {gnd.sym} -500 150 0 0 {name=l1 lab=0}
