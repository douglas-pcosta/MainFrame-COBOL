//FOUR005X JOB 'COMP COB',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID,TIME=(0,01) 00010000
//*--------------------------------------------------------------------*00020000
//STEP01   EXEC PGM=SORT                                                00030000
//SORTIN   DD DSN=PR.FOUR005.MOV2505,DISP=SHR                           00040000
//SORTOUT  DD DSN=PR.FOUR005.MOV2505,DISP=OLD                           00050000
//SYSOUT   DD SYSOUT=*                                                  00060000
//SYSIN    DD *                                                         00070000
 SORT FIELDS=(01,08,CH,A,47,1,CH,A)                                     00080000
//*--------------------------------------------------------------------*00090000
//STEP02   EXEC PGM=SORT                                                00100000
//SORTIN   DD DSN=PR.FOUR005.CLI2505,DISP=SHR                           00110000
//SORTOUT  DD DSN=PR.FOUR005.CLI2505,DISP=OLD                           00120002
//SYSOUT   DD SYSOUT=*                                                  00130000
//SYSIN    DD *                                                         00140000
 SORT FIELDS=(01,08,CH,A)                                               00150000
//*-----------------EXECUTA O PROGRAMA FR05EX03------------------------*00151000
//STEP03   EXEC PGM=FR05EX03                                            00160000
//STEPLIB  DD DSN=PR.FOUR005.OBJ,DISP=SHR                               00170000
//JCLCLI   DD DSN=PR.FOUR005.CLI2505,DISP=SHR                           00180002
//JCLMOV   DD DSN=PR.FOUR005.MOV2505,DISP=SHR                           00190002
//LOGERROS DD DSN=PR.FOUR005.LOGERROS,DISP=OLD                          00200000
//JCLMOVA  DD DSN=PR.FOUR005.MOV2505A,DISP=OLD                          00210003
//JCLMOVC  DD DSN=PR.FOUR005.MOV2505C,DISP=OLD                          00220003
