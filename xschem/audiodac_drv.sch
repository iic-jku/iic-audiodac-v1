v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {We are using a constant-1 input for
the cascode (VDD_LO) to spare a 
connection to vdd_dig. One could also
connect the cascodes to in_p/in_n, 
but this increases the cap loading of 
the inputs.} 220 -460 0 0 0.4 0.4 {}
N 640 -520 640 -330 { lab=drv_n}
N 640 -330 780 -330 { lab=drv_n}
N 760 -1020 1260 -1020 { lab=vdd}
N 200 -580 240 -580 { lab=vdd}
N 160 -520 240 -520 { lab=in_n}
N 160 -540 240 -540 { lab=in_p}
N 160 -560 240 -560 { lab=in_hi}
N 200 -200 740 -200 { lab=vss}
N 200 -1020 200 -580 { lab=vdd}
N 200 -1020 760 -1020 { lab=vdd}
N 640 -880 780 -880 { lab=drv_p}
N 760 -900 780 -900 { lab=vdd}
N 760 -1020 760 -900 { lab=vdd}
N 1100 -860 1100 -620 { lab=#net1}
N 1100 -620 1280 -620 { lab=#net1}
N 1260 -1020 1260 -640 { lab=vdd}
N 1260 -640 1280 -640 { lab=vdd}
N 1080 -900 1680 -900 { lab=out_p}
N 760 -900 760 -350 { lab=vdd}
N 760 -350 780 -350 { lab=vdd}
N 740 -860 780 -860 { lab=vss}
N 740 -310 740 -200 { lab=vss}
N 740 -310 780 -310 { lab=vss}
N 1100 -600 1280 -600 { lab=#net2}
N 1260 -580 1260 -200 { lab=vss}
N 740 -200 1260 -200 { lab=vss}
N 1080 -350 1680 -350 { lab=out_n}
N 1260 -580 1280 -580 { lab=vss}
N 640 -880 640 -580 { lab=drv_p}
N 740 -860 740 -310 { lab=vss}
N 540 -580 640 -580 {
lab=drv_p}
N 540 -560 640 -560 {
lab=drv_n}
N 640 -560 640 -520 {
lab=drv_n}
N 920 -580 920 -480 {
lab=vss}
N 920 -480 1260 -480 {
lab=vss}
N 890 -740 890 -620 {
lab=vdd}
N 890 -740 1260 -740 {
lab=vdd}
N 920 -740 920 -620 {
lab=vdd}
N 950 -740 950 -620 {
lab=vdd}
N 160 -200 200 -200 {
lab=vss}
N 200 -500 240 -500 {
lab=vss}
N 200 -500 200 -200 {
lab=vss}
N 160 -1020 200 -1020 {
lab=vdd}
N 1080 -880 1100 -880 {
lab=#net1}
N 1100 -880 1100 -860 {
lab=#net1}
N 1080 -330 1100 -330 {
lab=#net2}
N 1100 -600 1100 -330 {
lab=#net2}
C {devices/ipin.sym} 160 -540 0 0 {name=p1 lab=in_p}
C {devices/ipin.sym} 160 -520 0 0 {name=p2 lab=in_n}
C {devices/opin.sym} 1680 -900 0 0 {name=p3 lab=out_p}
C {devices/opin.sym} 1680 -350 0 0 {name=p4 lab=out_n}
C {devices/ipin.sym} 160 -1020 0 0 {name=p5 lab=vdd}
C {devices/ipin.sym} 160 -560 0 0 {name=p6 lab=in_hi}
C {devices/lab_wire.sym} 610 -580 0 0 {name=l8 lab=drv_p}
C {devices/lab_wire.sym} 610 -560 0 0 {name=l7 lab=drv_n}
C {audiodac_drv_ls.sym} 390 -540 0 0 {name=x1}
C {audiodac_drv_latch.sym} 1430 -610 0 0 {name=x2}
C {audiodac_drv_half.sym} 930 -880 0 0 {name=x3}
C {audiodac_drv_half.sym} 930 -330 0 0 {name=x4}
C {devices/ipin.sym} 160 -200 0 0 {name=p7 lab=vss}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 920 -600 3 0 {name=Mdecouple
L=10
W=55
nf=1 mult=2
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/title.sym} 180 -50 0 0 {name=l2 author="(c) 2022 Harald Pretl, IIC, Johannes Kepler University"}
