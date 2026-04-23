// Rust file
use wasm_minimal_protocol::*;

initiate_protocol!();

#[wasm_func]
pub fn square(bytes: &[u8]) -> Vec<u8> {
    if bytes.is_empty() { return vec![0]; }
    let mut num: i64 = 0;
    for (i, &byte) in bytes.iter().enumerate() {
        if i >= 8 { break; }
        num |= (byte as i64) << (8 * i);
    }
    num.pow(2).to_le_bytes().to_vec()
}