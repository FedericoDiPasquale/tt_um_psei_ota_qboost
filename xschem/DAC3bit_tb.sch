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
C {gnd.sym} -630 450 0 0 {name=l1 lab=0
spice_ignore=true}
C {gnd.sym} -680 360 0 0 {name=l2 lab=0
spice_ignore=true}
C {opin.sym} -210 160 0 0 {name=p1 lab=out}
C {lab_wire.sym} -580 120 0 0 {name=p2 sig_type=std_logic lab=b0}
C {lab_wire.sym} -530 160 0 0 {name=p3 sig_type=std_logic lab=b1}
C {gnd.sym} -550 530 0 0 {name=l3 lab=0
spice_ignore=true}
C {lab_wire.sym} -470 200 0 0 {name=p4 sig_type=std_logic lab=b2}
C {sky130_fd_pr/corner.sym} -100 470 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -250 470 0 0 {name=s1 only_toplevel=false value="
.control
save all

let n_codes = 8
let vout_meas = unitvec(n_codes)
let code = 0
let bit0 = 0
let bit1 = 0
let bit2 = 0
dowhile bit2 < 2
  dowhile bit1 < 2
    dowhile bit0 < 2
      alter V2 = bit0 * 1.8
      alter V3 = bit1 * 1.8
      alter V4 = bit2 * 1.8
      op
      let vout_value=v(out)
      let vout_meas[code]=vout_value
      echo Codice $&code : b2=$&bit2 b1=$&bit1 b0=$&bit0, Vout=$&vout_value V
      let bit0 = bit0 + 1
      let code = code + 1
    end
    let bit1 = bit1 + 1
    let bit0 = 0
  end
  let bit2 = bit2 + 1
  let bit1 = 0
end
let v_min = vout_meas[0]
let v_max = vout_meas[n_codes - 1]
let lsb_ideal = (v_max - v_min) / (n_codes - 1)
echo ======================================
echo LSB ideale = $&lsb_ideal V
let dnl = unitvec(n_codes)
let i = 1
dowhile i < n_codes
  let step_reale = vout_meas[i] - vout_meas[i-1]
  let dnl[i] = (step_reale / lsb_ideal) - 1
  let dnl_curr = dnl[i]
  echo DNL codice $&i : $&dnl_curr LSB
  let i = i + 1
end
let inl = unitvec(n_codes)
let l = 0
dowhile l < n_codes
  let v_ideal = v_min + l * lsb_ideal
  let inl[l] = (vout_meas[l] - v_ideal) / lsb_ideal
  let inl_curr = inl[l]
  echo INL codice $&l : $&inl_curr LSB
  let l = l + 1
end
echo ======================================
echo Vout min/max: $&v_min V / $&v_max V
echo ======================================
print vout_meas > dac_transfer.txt
print dnl > dac_dnl.txt
print inl > dac_inl.txt
write DAC3bit_op.raw
ac dec 20 1k 100meg
write DAC3bit_ac.raw
tran 1n 5u
write DAC3bit_tran.raw
.endc"}
C {bsource.sym} -680 330 0 0 {name=B0 VAR=V FUNC="'(((time-floor(time/200n)*200n)>=50n && (time-floor(time/200n)*200n)<75n) || ((time-floor(time/200n)*200n)>=125n && (time-floor(time/200n)*200n)<150n) || ((time-floor(time/200n)*200n)>=175n && (time-floor(time/200n)*200n)<200n)) ? 1.8 : 0'" m=1
spice_ignore=true}
C {bsource.sym} -630 420 0 0 {name=B1 VAR=V FUNC="'((time-floor(time/200n)*200n)>=25n && (time-floor(time/200n)*200n)<100n) ? 1.8 : 0'" m=1
spice_ignore=true}
C {bsource.sym} -550 500 0 0 {name=B2 VAR=V FUNC="'(time-floor(time/200n)*200n)<125n ? 1.8 : 0'" m=1
spice_ignore=true}
C {DAC3bit.sym} -350 160 0 0 {name=x1}
C {gnd.sym} -350 210 0 0 {name=l4 lab=0}
C {vsource.sym} -350 80 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -350 50 2 0 {name=l5 lab=0}
C {vsource.sym} -630 150 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -630 180 0 0 {name=l6 lab=0}
C {vsource.sym} -570 190 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -570 220 0 0 {name=l7 lab=0}
C {vsource.sym} -510 230 0 0 {name=V4 value=1.8 savecurrent=false}
C {gnd.sym} -510 260 0 0 {name=l8 lab=0}
