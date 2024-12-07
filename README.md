## Introduction

This repository is a passion project. The repository is an attempt to build a simple, toy operating system from boot sector to memory read/write applications. So far I have implemented the boot sector .asm files and tested using `qemu` virtualization Linux application to simulate computer hardware.

## Notes

```
Computer Memory layout for understanding where boot loader is to be stored:
---------------------------  0xFFFFF
|      **BIOS ROM**       |  (BIOS ROM memory addresses)
---------------------------  0xF0000
|                         |
|      **Upper memory**   |  (For storaing buffer for device data such as video memory)
|                         |
---------------------------  0xA0000
|                         |
|                         |
|      **Stack**          |
|                         |
- - - - - - - - - - - - - -  (Conventional/free memory used by applications and can be used by
|                         |      bootloader to store variable data)
|                         |
|     **Heap**            |
|                         |
---------------------------  0x7C00
|   **Bootload code**     |
---------------------------  0x0000
```
