//FOUR005X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010000
//STEP01   EXEC PGM=IEFBR14                                             00020000
//APAGAR   DD DSN=PR.FOUR005.PECACOMP,DISP=(MOD,DELETE,DELETE),         00030000
//         SPACE=(TRK,(2,2))                                            00040000
//*-----------------------------------------------------------          00050000
//STEP02   EXEC PGM=FR05EX01                                            00060000
//STEPLIB  DD DSN=PR.FOUR005.OBJ,DISP=SHR                               00070000
//JCLPECAS DD DSN=PR.FOUR005.ARQPECAS,DISP=SHR                          00080000
//JCLCOMP  DD DSN=PR.FOUR005.PECACOMP,DISP=(NEW,CATLG,DELETE),          00081000
//         SPACE=(TRK,(2,2)),                                           00082000
//         DCB=(RECFM=FB,LRECL=10,BLKSIZE=0)                            00083000
//SYSIN    DD *                                                         00084000
