⍝ get the ⍵-th command line argument
a←{1↓¯1↓⍕⍵⌷⊢2⎕nq#'getcommandlineargs'}
⍝ get the string of bits from the input file
i←⍕11 ¯1⎕map a 5
⍝ find the locations of the pattern of bits
f←'(((⍕(a 6)=''1'')⎕S{⍵.(1↑Offsets)})i)÷2'
⍝ replace the pattern of bits
r←'(⍎((⍕(a 6)=''1'')⎕R(⍕(a 7)=''1''))i)⎕nappend((a 8)⎕ncreate 0)11'
⍝ execute either 'f' or 'r' depending on the second argument
⍎⍕(f r)[1+(+/(⍕a 4)='r')]
