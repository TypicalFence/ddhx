/*
 * mouse.d : Handling mouse input
 */

module mouse;

import std.string;
import std.stdio;

// external
private extern (C) int open (const char *__file, int __oflag);
private extern (C) int read (int __fd, void *__buf, size_t __nbytes);

private struct timeval {
    int tv_sec;     /* Seconds.  */
    int tv_usec;    /* Microseconds.  */
}

private struct input_event {
	timeval time;
	ushort type;
	ushort code;
	int value;
};


// internal
struct linux_mouse_handle {
    string device;
    int fd;
    bool open;
}


/**
 * Initializes mouse support.
 *
 * Returns:
 *     - 0: on success
 *     - 1: on failure
 *     - 69: on no support
 */
int init_mouse(linux_mouse_handle *mouse_handle) {
    version(linux) {
        if (mouse_handle == null) {
            return 2;
        }

        // TODO dectect the device holding the mouse
        string device = "/dev/input/event5";
        //int fd = open(toStringz(device), 02);
        auto bath = toStringz("/dev/input/event5");
        int fd = open(bath, 2);
        
        printf("%d", fd);

        if (fd < 0) {
            return 1;
        }

        mouse_handle.device = device;
        mouse_handle.fd = fd;
        mouse_handle.open = true;

        return 0; 
    }

    return 69;
} 
