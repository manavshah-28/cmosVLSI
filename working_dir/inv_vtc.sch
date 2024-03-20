v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -40 10 50 {
lab=vin}
N 50 -10 50 20 {
lab=vout}
N 50 -90 50 -70 {
lab=vdd}
N 50 80 50 100 {
lab=gnd}
N -30 0 10 -0 {
lab=vin}
N 50 0 80 -0 {
lab=vout}
C {sky130_fd_pr/nfet3_01v8.sym} 30 50 0 0 {name=M1
W=2
L=0.15
body=gnd
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
C {sky130_fd_pr/pfet3_01v8.sym} 30 -40 0 0 {name=M2
W=4
L=0.15
body=vdd
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -30 0 0 0 {name=p4 lab=vin
}
C {devices/ipin.sym} 80 0 2 0 {name=p1 lab=vout
}
C {devices/ipin.sym} 50 100 3 0 {name=p2 lab=gnd

}
C {devices/ipin.sym} 50 -90 1 0 {name=p3 lab=vdd
}
