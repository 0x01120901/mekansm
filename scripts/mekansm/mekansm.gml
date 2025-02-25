#macro MEMORY_SIZE 65536
#macro FLAG_ZERO 0x1
#macro FLAG_SUB 0x2
#macro FLAG_HALF_CARRY 0x4
#macro FLAG_CARRY 0x8

function cpu_init() {
	var _cpu = {
		reg: {
			af: 0,
			bc: 0,
			de: 0,
			hl: 0,
			sp: 0xFFFE,
			pc: 0x0100,
			halted: false
		}
	}
	
	return _cpu;
}

function mem_init() {
	var _mem = buffer_create(MEMORY_SIZE, buffer_fixed, 1);
	buffer_fill(_mem, 0, buffer_u8, 0, MEMORY_SIZE);
	
	return _mem;
}

function mem_read(_addr) {
	buffer_seek	
}