a←{1↓¯1↓⍕(⍵⌷⊢2⎕nq#'getcommandlineargs')}
f←⍕11 ¯1⎕map(a 3)
⍎(¯36 59)[1+(+/(⍕a 2)='r')]↑'(⍎((⍕(a 4)=''1'')⎕R(⍕(a 5)=''1''))f)⎕nappend((a 6)⎕ncreate 0)11(((⍕(a 4)=''1'')⎕S{⍵.(1↑Offsets)})f)÷2'
