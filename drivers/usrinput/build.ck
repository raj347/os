/*++

Copyright (c) 2013 Minoca Corp. All Rights Reserved

Module Name:

    User Input

Abstract:

    This module implements the User Input driver. It does not implement
    support for any specific device, but manages and provides support for
    all user input devices. Drivers that support user input hardware should
    link against this driver and utilize its framework for implementing a
    user input device that the system can interact with in a generic manner.

Author:

    Evan Green 16-Feb-2013

Environment:

    Kernel

--*/

function build() {
    name = "usrinput";
    sources = [
        "uskeys.c",
        "usrinput.c"
    ];

    libs = [
        "//lib/termlib:termlib"
    ];

    drv = {
        "label": name,
        "inputs": sources + libs,
    };

    entries = driver(drv);
    return entries;
}

return build();