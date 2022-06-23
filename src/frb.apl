#!/usr/bin/env dyalogscript

a←2⎕nq#'getcommandlineargs'
⍝ read the input file as a string of bits
i←⍕11 ¯1⎕map 3⊃a
⍝ find the locations of the pattern of bits
f←'⎕←(((⍕(4⊃a)=''1'')⎕S{⍵.(1↑Offsets)})i)÷2'
⍝ replace the pattern of bits
r←'(⍎((⍕(4⊃a)=''1'')⎕R(⍕(5⊃a)=''1''))i)⎕nappend((6⊃a)⎕ncreate 0)11'
⍝ execute either 'f' or 'r' depending on the second argument
⍎⍕(f r)[1+(+/(⍕2⊃a)='r')]
