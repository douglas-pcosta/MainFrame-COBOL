//FOUR005X JOB 'COMP CICSDB2',MSGCLASS=X,CLASS=C,NOTIFY=&SYSUID         00010003
//*-------------------------------------------------------------------* 00020000
//*      JOB DE COMPILACAO DE PROGRAMA COBOL COM DB2 CICS USANDO MENU * 00030000
//*      NAME = SEU PROGRAMA                                            00031002
//*      INSTR = SUA CHAVE                                              00031002
//*-------------------------------------------------------------------* 00040000
// JCLLIB ORDER=GR.GERAL.PROCLIB                                        00050007
//COMPCIDB EXEC DFHCIDB2,NAME=FR05DB01,INSTR=FR05DB01                   00060008
//BIND.SYSTSIN  DD *                                                    00080000
DSN  SYSTEM(DB8G)
BIND PLAN(FR05DB01) MEM(FR05DB01) ACT(REP) ISOLATION(CS) -              00090004
       LIB('DSN810.DBRMLIB.DATA')                                       00100000
BIND PACKAGE(FR05DB01) MEM(FR05DB01) ACT(REP) ISOLATION(CS) -           00090004
       LIB('DSN810.DBRMLIB.DATA') VALIDATE(BIND)                        00100000
BIND PLAN(FR05DB01) PKLIST(FR05DB01)                       -
        VALIDATE(BIND)  ACT(REP) ISOLATION(CS)                          00100000
END                                                                     00120000
//*                                                                     00130000
