a←{1↓¯1↓⍕(⍵⌷⊢2⎕nq#'getcommandlineargs')}
n←{⍕(a⍵)='1'}
f←⍕11 ¯1⎕map(a 3)
⍎(¯29 45)[1+(+/(⍕a 2)='r')]↑'(⍎((n 4)⎕R(n 5))f)⎕nappend((a 6)⎕ncreate 0)11(((n 4)⎕S{⍵.(1↑Offsets)})f)÷2'
