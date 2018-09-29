# HTTP-ASM64
The most basic HTTP Server written in 64-bit Assembly with NASM Assembler. 

Currently it is extremely primitive
and is **only able to serve a single page, index.html**


## Learned
* Switching from MASM in Windows to NASM in Linux
* Basics of NASM and 64-bit Assembly
* How to use Linux system calls
* How to use Sockets
* Refresh on Assembly in general
* Basics of MakeFiles


## Setup
* Dependencies ```sudo apt-get -y install nasm build-essential```
* Assembling+Linking+Running ```make build && ./server``` or ```./Run-NASM.sh server.asm```
* Listening on http://127.0.0.1:3926


## Screenshots

[![console](https://github.com/barrettotte/HTTP-ASM64/blob/master/screenshots/console.png)](https://github.com/barrettotte/HTTP-ASM64/blob/master/screenshots/console.png)

[![index](https://github.com/barrettotte/HTTP-ASM64/blob/master/screenshots/index.png)](https://github.com/barrettotte/HTTP-ASM64/blob/master/screenshots/index.png)

[![firefox-console](https://github.com/barrettotte/HTTP-ASM64/blob/master/screenshots/firefox-console.png)](https://github.com/barrettotte/HTTP-ASM64/blob/master/screenshots/firefox-console.png)


## To Do Eventually ... Maybe?
* Refactor duplicate code
* Make Utils.asm and export functions
* Proper 404 message handling
* 404 Error Page
* Multiple file handling for external css,js, more html files, images, etc.
* Proper socket shutdown
* POST method handling


## Source Dump
* GNU C Sockets Documentation http://www.delorie.com/gnu/docs/glibc/libc_301.html
* Linux Socket Man Pages http://man7.org/linux/man-pages
* Linux System Calls Reference https://filippo.io/linux-syscall-table/
* Assembly(x86) Cheatsheet https://github.com/cirosantilli/x86-assembly-cheat
* Quick Reference https://www.cs.uaf.edu/2017/fall/cs301/reference/x86_64.html
* Connecting a socket in C http://wiki.linuxquestions.org/wiki/Connecting_a_socket_in_C
* IP to DWORD
  https://stackoverflow.com/questions/5328070/how-to-convert-string-to-ip-address-and-vice-versa
```c++
char strAddr[] = "127.0.0.1"
DWORD ip = inet_addr(strAddr); // ip contains 16777343 [0x0100007f in hex]

struct in_addr paddr;
paddr.S_un.S_addr = ip;

char *strAdd2 = inet_ntoa(paddr); // strAdd2 contains the same string as strAdd
  ```
* Converting hex+decimal https://www.scadacore.com/tools/programming-calculators/online-hex-converter/
* System calls for network functionality http://beej.us/net2/html/syscalls.html
* AF_INET https://stackoverflow.com/questions/1593946/what-is-af-inet-and-why-do-i-need-it
* sys_setsockopt() http://pubs.opengroup.org/onlinepubs/009695399/functions/setsockopt.html
* HTTP Messages https://en.wikipedia.org/wiki/HTTP_message_body
