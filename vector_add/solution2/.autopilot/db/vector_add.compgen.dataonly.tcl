# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
y { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
}
dict set axilite_register_dict control $port_control


