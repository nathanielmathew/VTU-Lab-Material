    AREA PROGRAM, CODE, READONLY
    ENTRY
START
    MOV R0,#0x40000000
    MOV R1,#0x4000003F
    MOV R4,#0X05
LOOP
    LDR R2,[R0]
    STR R2,[R1]
    ADD R0,R0,#+4
    ADD R1,R1,#+4
    SUBS R4,R4,#0X01
    BNE LOOP
SAME B SAME
    END