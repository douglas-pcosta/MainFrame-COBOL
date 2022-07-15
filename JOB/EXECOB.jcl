//FOUR005X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,02) 00010015
//EXECUTAR EXEC PGM=FR05CB31                                            00020018
//STEPLIB  DD DSN=PR.FOUR005.OBJ,DISP=SHR                               00030000
//SYSIN    DD *                                                         00040004
//JCLPROD  DD DSN=PR.FOUR005.PRODUTO,DISP=SHR                           00050019
