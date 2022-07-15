//FOUR005X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010000
//STEP01   EXEC PGM=IEFBR14                                             00020000
//APAGAR   DD DSN=PR.FOUR005.RELAEX03,DISP=(MOD,DELETE,DELETE),         00030001
//         SPACE=(TRK,(1,1))                                            00040000
//*-----------------------------------------------------------          00050000
//STEP02   EXEC PGM=RELATEX3                                            00060001
//STEPLIB  DD DSN=PR.FOUR005.OBJ,DISP=SHR                               00070000
//JCLMOVA  DD DSN=PR.FOUR005.MOV2505A,DISP=SHR                          00080000
//JCLRELT  DD DSN=PR.FOUR005.RELAEX03,DISP=(NEW,CATLG,DELETE),          00081001
//         SPACE=(TRK,(1,1)),                                           00082000
//         DCB=(RECFM=FB,LRECL=61,BLKSIZE=0)                            00083004
//SYSIN    DD *                                                         00084000
