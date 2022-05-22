        INP // R
        STA R
        inp // h
        STA H
        LDA ZERO
        STA SUM
        STA COUNT
LOOPSQ  LDA SUM
        ADD R
        STA SUM
        LDA COUNT
        ADD ONE
        STA COUNT
        SUB R
        BRP DONE
        BRA LOOPSQ
DONE    LDA SUM
LOOPML  LDA TOTAL
        ADD SUM
        STA TOTAL
        LDA H
        SUB ONE
        STA H
        BRP LOOPML
        LDA TOTAL
        SUB SUM
        STA TOTAL
LOOPMLS LDA OVERAL
        ADD TOTAL
        STA OVERAL
        LDA PI
        SUB ONE
        STA PI
        BRP LOOPMLS
        LDA OVERAL
        SUB TOTAL
        STA OVERAL
        OUT
        HLT
R       DAT
H       DAT
PI      dat 003
SUM     DAT
TOTAL   DAT 000
OVERAL  DAT 000
COUNT   DAT
ZERO    DAT 000
ONE     DAT 001
