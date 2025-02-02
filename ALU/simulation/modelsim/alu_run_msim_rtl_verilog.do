transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/alu.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/full_adder.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/adder_8.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/adder_16.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_2_1.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_2_8.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux2_16.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/adder_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/subtractor_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/bitwiseAnd.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/bitwiseOr.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/sll.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/sra.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_4_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_2_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_8_32.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_4_1.v}
vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/mux_8_1.v}

vlog -vlog01compat -work work +incdir+D:/Quartus/ECE550/ALU {D:/Quartus/ECE550/ALU/alu_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run -all
