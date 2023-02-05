# How to run:

## Windows:
In order to run on windows, download:
- [flex](https://gnuwin32.sourceforge.net/packages/flex.htm)
- [TDM-GCC](https://jmeubank.github.io/tdm-gcc/download/)
Make their environment variables and use them for compling the code.

OR

Use **WSL** to compile it the same way as one does for Linux.

## On Linux:
```
lex <program>.l
gcc lex.yy.c -lfl
./a.out
```