v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -260 -730 540 -330 {flags=graph
y1=0.49
y2=1.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.2286034e-05
x2=2.5584569e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
v3"
color="4 1"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/otaSys_5t_sky130_tb_tran.raw}
B 2 -260 -310 540 90 {flags=graph
y1=0.24
y2=23
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=2.2286034e-05
x2=2.5584569e-05
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
rawfile=$netlist_dir/otaSys_5t_sky130_tb_ac.raw}
B 2 -260 110 540 510 {flags=graph
y1=-7.8
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.2286034e-05
x2=2.5584569e-05
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
N -1080 60 -950 60 {lab=v3}
N -850 60 -770 60 {lab=out}
C {gnd.sym} -1040 270 0 0 {name=l9 lab=0}
C {sky130_fd_pr/corner.sym} -580 420 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -800 420 0 0 {name=s1 only_toplevel=false value="
.control
save all
.param f=5Meg
.param Fs=20Meg
.param Ts=\{1/Fs\}
tran 1n 60000n
write otaSys_5t_sky130_tb_tran.raw
op
write otaSys_5t_sky130_tb_op.raw
ac dec 20 1 100meg
write otaSys_5t_sky130_tb_ac.raw
.endc"}
C {bsource.sym} -1040 240 0 0 {name=B1 VAR=V FUNC="'0.89375+0.1*sin(2*pi*f*floor(time/Ts)*Ts)'" m=1}
C {vsource.sym} -1040 90 0 0 {name=V3 value="dc 0.89375 ac 1" savecurrent=false}
C {gnd.sym} -1040 120 0 0 {name=l10 lab=0}
C {otaSys_5t_sky130.sym} -890 60 0 0 {name=x1}
C {vsource.sym} -900 -10 2 0 {name=V1 value="dc 1.8" savecurrent=false}
C {gnd.sym} -900 -40 2 0 {name=l1 lab=0}
C {gnd.sym} -900 100 0 0 {name=l2 lab=0}
C {opin.sym} -770 60 0 0 {name=p1 lab=out}
C {lab_wire.sym} -1020 60 0 0 {name=p2 sig_type=std_logic lab=v3}
