## What's In This Directory?

### pling.wla

This is the main 'starting' file for the source code, begin reading here if you want to follow source code /program initialisation and flow.

* __core.wla__

  Core 'terms' that form the functional base of the _Pling_ language; in _Forth_ you would recognise these as `dup`, `drop`, `swap` etc. These core terms are those that must be implemented in machine-language, either for reasons of direct hardware interfacing or speed, as they form the core interactions with the stack that all _Pling_ terms utilise

* __disk.wla__

  Disk-drive interface terms for Pling programs. Code for interacting with the disk-drive hardware will be in the system-specific folder

* __error.wla__

  Centralised error-handling

* __interpreter.wla__

  Parsing of Pling source code!

* __math.wla__

  Core math terms, such as addition and subtraction

* __math_muldiv.wla__

  Multiplication and division routines use a separate file due to their complexity (8-bit micro-computers do not have hardware multiply or divide!)

* __print.wla__

  Terms for outputting to the screen

* __stack.wla__

  Code (not terms), that manage the software-defined data stack that makes _Pling_ (or any _Forth_) what it is

* __stream.wla__

  _Pling_'s stream I/O interface (incomplete)

* __string.wla__

  String-handling functions / terms

* __sys_65xx.wla__

  Macros, constants and code specific to 6502-based machines, including the 6502, 6510 (C64) & 65C02
