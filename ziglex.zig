//!Ref: https://github.com/marler8997/DustMite/tree/zig

const std = @import("std");

export fn zigLex(src: [*:0]const u8, src_len: usize, off: usize) usize {
    var tokenizer = std.zig.Tokenizer{
        .buffer = src[0..src_len :0],
        .index = off,
        .pending_invalid_token = null,
    };
    const token = tokenizer.next();
    std.debug.assert(token.loc.end != off);
    return token.loc.end;
}
