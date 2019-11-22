#![feature(lang_items)]

#![no_std]

#[no_mangle]
pub extern "C"
fn plus_one(x: i32) -> i32 {
    x + 1
}

#[lang = "eh_personality"] extern fn eh_personality() {}

#[panic_handler]
fn my_panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}
