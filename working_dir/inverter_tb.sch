v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 0 70 30 {
lab=vout}
C {inv_vtc.sym} -10 0 0 0 {name=x1}
C {devices/vsource.sym} -160 -60 0 0 {name=vin value="PULSE(0 1.8 0 .3n .3n 3n 6.6n 5)" savecurrent=false}
C {devices/vsource.sym} -100 -60 0 0 {name=vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} -100 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -30 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 0 60 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -70 0 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 70 0 2 0 {name=p2 sig_type=std_logic lab=vout
}
C {devices/lab_pin.sym} 0 -60 1 0 {name=p3 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -160 -90 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -100 -90 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/code_shown.sym} -310 120 0 0 {name=CD_Sim only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.dc vin 0 2 1m
.tran .02n 10n
.save all
.end"}
C {devices/parax_cap.sym} 70 40 0 0 {name=C1 gnd=0 value=4f m=1}
