# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
n { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
m { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
h { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
A { 
	dir I
	width 8
	depth 1048576
	mode ap_memory
	offset 1048576
	offset_end 2097151
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
B { 
	dir I
	width 8
	depth 1048576
	mode ap_memory
	offset 2097152
	offset_end 3145727
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
C { 
	dir O
	width 8
	depth 1048576
	mode ap_memory
	offset 3145728
	offset_end 4194303
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
}
dict set axilite_register_dict control $port_control


