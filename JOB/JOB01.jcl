//FOUR005X JOB 'DOUGLAS',CLASS=C,MSGCLASS=X,NOTIFY=FOUR005              00010000
//STEP01   EXEC PGM=IEFBR14                                             00020000
//DADOS    DD  DSN=PR.FOUR005.DADOS,                                    00030000
//             DISP=(MOD,DELETE,DELETE),                                00040000
//             SPACE=(TRK,(1,1))                                        00050000
//*            LIKE=PR.FOUR005.DADOS                                    00060000
//STEP02   EXEC PGM=IEFBR14                                             00070000
//DADOS    DD  DSN=PR.FOUR005.DADOS,                                    00080000
//             DISP=(NEW,CATLG,DELETE),                                 00090000
//             SPACE=(TRK,(1,1)),                                       00100000
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=27920)                    00110000
