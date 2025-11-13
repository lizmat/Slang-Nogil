[![Actions Status](https://github.com/lizmat/Slang-Nogil/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/Slang-Nogil/actions) [![Actions Status](https://github.com/lizmat/Slang-Nogil/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/Slang-Nogil/actions) [![Actions Status](https://github.com/lizmat/Slang-Nogil/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/Slang-Nogil/actions)

NAME
====

Slang::Nogil - allow sigilless scalar variables

SYNOPSIS
========

```raku
use Slang::Nogil;

my a = 42;
say a;  # 42
```

DESCRIPTION
===========

Slang::Nogil modifies the Raku grammar to make it possible to use scalar variables **without** needing a **$** sigil.

You are **strongly** recommended to **keep** using the `@`, `%` and `&` sigils where appropriate. If those are absent from your code, guess one is writing "baby Raku" and losing some awesome compiler optimizations.

Why are sigils useful anyway ?
------------------------------

    Doubtless this is somewhat interesting to someone somewhere,
    but we'll restrain ourselves from talking about them somehow
    (TimToady)

In brief: sigils can be seen as a type declaration. They permit compiler optimization and avoid user error at compile time.

Note that this module only aliases the scalar sigil.

The following is transcribed from a [StackOverflow answer](https://stackoverflow.com/questions/50399784/is-there-a-purpose-or-benefit-in-prohibiting-sigilless-variables-from-rebinding/50401989#50401989) by *Jonathan Worthington*.

### Syntactic disambiguation

You can call a variable whatever you want, even if there happens to be a keyword with that name

### Readability

The data in the program stands out thanks to the sigil.

### Defining assignment semantics

In Raku assignment means "copy in to", thus `my @a = @b` means iterate `@b` and put each thing in it into `@a`, thus any future assignments to `@b` will not affect `@a`.

### Restricting what can be bound there

Only `Positional` things to `@`, only `Associative` things to `%`, only `Callable` things to `&`.

In the case of the `$`, controlling what will be considered a single item.

### Interpolation in double quoted strings

Without a sigil, interpolation can no distinguish between a variable and a word.

PREREQUISITES
=============

This module requires the 2023.10 release of the Rakudo compiler.

INSPIRATION
===========

Inspired by the now obsolete [Slang::Nogil](https://github.com/tinmarino/nogil) distribution by *Martin Tourneboeuf*.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Slang-Nogil . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

