#![no_std]
#![no_main]

#[allow(unused_imports)]
use potential_broccoli_ebpf::trace::{
	kprober,
};

#[cfg(not(test))]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}
