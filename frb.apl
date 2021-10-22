a←{1↓¯1↓⍕⍵⌷⊢2⎕nq#'getcommandlineargs'}
⍎⍕('(((⍕(a 4)=''1'')⎕S{⍵.(1↑Offsets)})⍕11 ¯1⎕map a 3)÷2' '(⍎((⍕(a 4)=''1'')⎕R(⍕(a 5)=''1''))⍕11 ¯1⎕map a 3)⎕nappend((a 6)⎕ncreate 0)11')[1+(+/(⍕a 2)='r')]
