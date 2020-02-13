## What's In This Directory?

### pling.wla

This is the main 'starting' file for the source code, begin reading here if you want to follow source code /program initialisation and flow.

* __ascii.wla__

  Constants and routines for handling ASCII. Pling uses ASCII internally for portability between systems, particularly for reading plain text files that originated on a modern PC

* __error.wla__

  Centralised error-handling

* __stack.wla__

  Native code, that manages the software-defined data stack that makes _Pling_ (or any _Forth_) what it is. For terms for manipulating the stack from _Pling_ scripts, see "term_core.wla"

* __sys_65xx.wla__

  Macros, constants and code specific to 6502-based machines, including the 6502, 6510 (C64) & 65C02

* __term_core.wla__

  Core 'terms' that form the functional base of the _Pling_ language; in _Forth_ you would recognise these as `dup`, `drop`, `swap` etc. These core terms are those that must be implemented in machine-language, either for reasons of direct hardware interfacing or speed, as they form the core interactions with the stack that all _Pling_ terms utilise

* __term_disk.wla__

  Disk-drive interface terms for _Pling_ programs. Code for interacting with the disk-drive hardware will be in the system-specific folder

* __term_interpreter.wla__

  Parsing of _Pling_ source code!

* __term_math.wla__

  Core math terms, such as addition and subtraction

* __term_muldiv.wla__

  Multiplication and division routines use a separate file due to their complexity (8-bit micro-computers do not have hardware multiply or divide!)

* __term_print.wla__

  Terms for outputting to the screen

* __term_stream.wla__

  _Pling_'s stream I/O interface (incomplete)

* __term_string.wla__

  String-handling terms
