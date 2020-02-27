<p align="center">
    <img src="readme_logo.png" width="640" height="240" />
</p>

__Pling!__ is a native 8-bit [Forth]-like scripting language, under development, for 8-bit micro-computers; first for the [Commodore 64], with other CBM & 6502 systems to follow and Z80-based systems after that

> The term "Pling" is another name for an exclamation mark, apparently coined by [Acorn Computers Ltd.] as the term is used often in regards to [RISC OS].

### Why "scripting language" and not "programming language"?

For the same reason you might be using _Bash_, _Batch_ or _Python_ on your PC; you need an easy way to read, transform and output some data as part of some other project. Good tools like these don't seem to exist on 8-bit micros, so people tend to do offline processing of data for games & demos on the PC. _Pling!_ exists to allow moving such workloads back to the 8-bit machine!

### Why not just use _BASIC_?

_BASIC_ does not scale well. _BASIC_ is indeed good for getting something working quickly; however as a program increases in complexity, _BASIC_ code undergoes complete spaghettification!

_Forth_ is special in that the opposite happens -- as a _Forth_ program increases in complexity, overall program growth tends to slow down as more and more code-reuse occurs.

**Ease of refactoring is also an important consideration**, another area where _BASIC_ is poor. Functional programming languages are famous for their refactorability due to strict immutability of global state. Ironically, _Forth_ is the extreme opposite of functional programming in that it works _because of_ complete mutability of global state, and yet _Forth_ too is legendary for its refactorability.

### Why not just use real _Forth_ then?

_Forth_ was invented on a 16-bit mini-computer, and whilst there are many ports of Forth to 8-bit systems -- [DurexForth](https://github.com/jkotlinski/durexforth) is an excellent C64 implementation -- the implicitly 16-bit nature of _Forth_ means that 8-bit micro-computers end up doing more work than is necessary for most of the time.

For example, every number is 16-bits, like it or not. You can write 8-bits to memory, but 16-bits will have been pushed to the stack beforehand.

_Pling!_ is 8-bit by default, meaning that its code is just that bit simpler, leaner and more efficient for the the 8-bit micro-computers it's designed for.

This does not mean that _Pling!_ cannot handle 16-bit operations, rather that the extra internal work for 16-bit operations is only necessary when 16-bits is needed.

[Forth]: https://en.wikipedia.org/wiki/Forth_(programming_language)
[RISC OS]: https://en.wikipedia.org/wiki/RISC_OS
[Acorn Computers Ltd.]: https://en.wikipedia.org/wiki/Acorn_Computers
[DurexForth]: https://github.com/jkotlinski/durexforth
[Commodore 64]: https://en.wikipedia.org/wiki/Commodore_64