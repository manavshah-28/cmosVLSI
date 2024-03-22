v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 210 30 320 30 {
lab=vds}
N 140 60 140 90 {
lab=vgs}
N 140 60 170 60 {
lab=vgs}
N 210 60 250 60 {
lab=GND}
N 250 60 250 90 {
lab=GND}
N 210 90 250 90 {
lab=GND}
C {devices/vsource.sym} 140 120 0 0 {name=vgs value=0 savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 190 60 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 320 60 0 0 {name=vds value=0 savecurrent=false}
C {devices/gnd.sym} 140 150 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 210 90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 320 90 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 20 200 0 0 {name=CD_Sim only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.dc vds 0 1.8 1m vgs 0 1.8 .5
.save all
.end"}
C {devices/lab_pin.sym} 140 90 0 0 {name=p1 sig_type=std_logic lab=vgs
}
C {devices/lab_pin.sym} 320 30 2 0 {name=p2 sig_type=std_logic lab=vds
}
