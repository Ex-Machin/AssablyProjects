inp
        sto B
        sub one
        sto B
        inp
        sto A
loop    lda res
        add A
        sto res
        lda B
        sub one
        sto B
        BRP loop
        lda res
        out
        HLT
one     dat 1
B       dat
A       dat
res     dat