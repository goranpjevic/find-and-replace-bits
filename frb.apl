#!/usr/bin/env dyalogscript

a←2⎕nq#'getcommandlineargs'
⍝ read the input file as a string of bits
i←⍕11 ¯1⎕map 3⊃a
{
  ⍝ find the locations of the pattern of bits
  ∧/'f'=⍵:⎕←2÷⍨((⍕'1'=4⊃a)⎕s{⍵.(1↑Offsets)})i
  o←(6⊃a)(⎕ncreate⍠'IfExists' 'Replace')0
  ⍝ replace the pattern of bits
  (⍎((⍕'1'=4⊃a)⎕r(⍕'1'=5⊃a))i)⎕nappend o 11
}2⊃a
