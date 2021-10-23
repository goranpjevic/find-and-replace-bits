⍝ get the ⍵-th command line argument
a←{1↓¯1↓⍕⍵⌷⊢2⎕nq#'getcommandlineargs'}
⍝ get the string of bits from the input file
i←⍕11 ¯1⎕map a 3
⍝ find the locations of the pattern of bits
f←'(((⍕(a 4)=''1'')⎕S{⍵.(1↑Offsets)})i)÷2'
⍝ replace the pattern of bits
r←'(⍎((⍕(a 4)=''1'')⎕R(⍕(a 5)=''1''))i)⎕nappend((a 6)⎕ncreate 0)11'
⍝ execute either 'f' or 'r' depending on the second argument
⍎⍕(f r)[1+(+/(⍕a 2)='r')]
