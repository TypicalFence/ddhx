# ddhx, Interactive Hexadecimal File Viewer

![Screenshot of ddhx](https://dd86k.github.io/imgs/ddhx3.png)

ddhx is a replacement for [0xdd](https://github.com/dd86k/0xdd) as a native tool.

### Commands

Searching for an ASCII string? Press the return key, or escape, type in `ss IEND` and ddhx will search for "IEND"!

Notes:
- Some commands take command parameters, e.g. `search u8 0xdd`.
- Some commands have _aliases_, e.g. `sb 0xdd` is the same as `search u8 0xdd`.
- Some commands have a shortcut, e.g. pressing `r` while outside of command mode executes `refresh`.

Here is a brief list of commands:

| Command | Sub-command | Alias | Description |
|---|---|---|---|
| search | u8 | sb | Search one byte |
| | u16 | | Search a 2-byte value (LSB) |
| | u32 | | Search a 4-byte value (LSB) |
| | u64 | | Search a 8-byte value (LSB) |
| | utf8 | ss | Search an UTF-8 string |
| | utf16 | sw | Search an UTF-16LE string |
| | utf32 | | Search an UTF-32LE string |
| goto | | g | Goto to a specific file location or jump to a relative offset (shortcut: g) |
| info | | i | Print file information on screen (shortcut: i) |
| offset | | o | Change display mode (hex, dec, oct), same as `set offset` |
| clear | | | Clear screen and redraw every panels |
| set | width | | Set bytes per row |
| | offset | o | See `offset` command |
| refresh | | | Remake buffer, clear screen, re-read file, redraw screen (shortcut: r) |
| quit | | | Quit ddhx (key shortcut: q) |
| about | | | Print About text |
| version | | | Print Version text |

## Supported Platforms

| Platform | Progress |
|---|---|
| Windows XP | Doesn't work |
| Windows | Works! |
| macOS | Unknown |
| Linux | Works! |
| *BSD | Unknown |

## Planned features

- UTF-32 string searching
- Dump to file
- Scrollwheel support

## Screenshots

![ddhx showing file information](https://dd86k.github.io/imgs/ddhx3-2.png)