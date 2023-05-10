<h1 align="center">「💻」Simple Assembly Kernel</h1>

<p align="center"><img src="assets/kernel.png"></p>

During my Assembly and C studies, I felt that I was putting into practice what I was researching and studying. So I decided to develop a simple sample Disk Operating System Kernel, known as DOS. The kernel features some very simple functionality based on basic input/output system (BIOS) switches.

## Functions
* LoadSystem
* DiskRead
* DiskWrite
* CleanScreen
* SetBackGroundColor
* Println
* PressKey
* Reboot

## Compile
Requirements:
* NASM
* Make
* QEMU

```
# Install QEMU on your machine to emulate the kernel
$ git clone https://github.com/MrEmpy/SimpleASMKernel
$ cd SimpleASMKernel
$ make
$ qemu-system-x86_64 build/basickernel.bin
```

## References
* https://mikeos.sourceforge.net/write-your-own-os.html
* https://wiki.osdev.org/Expanded_Main_Page
* https://en.wikipedia.org/wiki/DOS
* https://en.wikipedia.org/wiki/Master_boot_record
* https://www.youtube.com/watch?v=mWeh3_ITG7M&list=PL25E6AC923586A2F6
* https://www.youtube.com/watch?v=MwPjvJ9ulSc&list=PLm3B56ql_akNcvH8vvJRYOc7TbYhRs19M
* https://knightos.org/

## Buy me a coffee?

<img src="https://static.livepix.gg/images/logo.svg" height="50" widght="50">

[LivePix](https://livepix.gg/mrempy)
