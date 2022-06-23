#!/usr/bin/env dyalogscript

a←2⎕nq#'getcommandlineargs'
⍝ read the input file as a string of bits
i←⍕11 ¯1⎕map 3⊃a
{
  ⍝ find the locations of the pattern of bits
  ∧/'f'=⍵:⎕←(((⍕(4⊃a)='1')⎕s{⍵.(1↑Offsets)})i)÷2
  ⍝ replace the pattern of bits
  (⍎((⍕(4⊃a)='1')⎕r(⍕(5⊃a)='1'))i)⎕nappend((6⊃a)(⎕ncreate⍠'IfExists' 'Replace') 0)11
}2⊃a
