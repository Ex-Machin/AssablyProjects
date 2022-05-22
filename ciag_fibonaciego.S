  inp n
        sto n
        lda i
        sub n
        sub one
        sto temp
        lda n
        sub i
        sto n
        lda temp
if      BRP end
loop    lda a
        add b
        sto c
        lda b
        sto a
        lda c
        sto b
        lda n
        sub one
        sto n
        brp loop
        lda b
        out
        hlt
end     lda b
        out
        hlt
n       dat
a       dat 1
b       dat 1
i       dat 3
c       dat
one     dat 1
temp    dat