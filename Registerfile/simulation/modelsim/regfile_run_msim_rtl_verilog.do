transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/regfile.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/tristate.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/and32_1.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/dff_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/dflipflop.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/decoder_32.v}

vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/Registerfile {D:/Quartus/ECE550/Registerfile/regfile_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  regfile_tb

add wave *
view structure
view signals
run -all
