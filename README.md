# QemuCortex

# Build QEMU
```
git clone https://gitlab.com/qemu-project/qemu.git --recursive
./configure
make -j
```

# Download ARM compiler

https://developer.arm.com/-/media/Files/downloads/gnu/13.3.rel1/binrel/arm-gnu-toolchain-13.3.rel1-x86_64-arm-none-eabi.tar.xz

Place this in a location of your choosing. 

# Build the test program
Update your path to point to the toolchain

```
export PATH=<location of toolchain>:$PATH
make
```

# Run QEMU and GDB
You can now run QEMU and allow GDB to connect to it. Do this by running:
```
./qemu-system-arm -machine mps3-an547 -cpu cortex-m55 -nographic -semihosting -kernel ~/temp/notmain.bin -S -gdb tcp::1234
```


Now you can connect with GDB
```
arm-none-eabi-gdb -tui --command gdbinit notmain.elf
```

There is a convinent script called go to run the above command.

# Bad things
When you run a Helium instruction, the processor throws a trap.
