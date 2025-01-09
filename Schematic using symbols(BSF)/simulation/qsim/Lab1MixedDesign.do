onerror {quit -f}
vlib work
vlog -work work Lab1MixedDesign.vo
vlog -work work Lab1MixedDesign.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab1MixedDesign_vlg_vec_tst
vcd file -direction Lab1MixedDesign.msim.vcd
vcd add -internal Lab1MixedDesign_vlg_vec_tst/*
vcd add -internal Lab1MixedDesign_vlg_vec_tst/i1/*
add wave /*
run -all
