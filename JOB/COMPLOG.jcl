//FOUR005X JOB 'COMP COB',CLASS=C,MSGCLASS=X,NOTIFY=&SYSUID
//*************************************************************
//* JOB UTILIZADO PARA COMPILAR PROGRAMAS COBOL
//*************************************************************
// JCLLIB ORDER=GR.GERAL.PROCLIB
//COBCOMP EXEC DFHCOBLB,LIB1=GR.FOUR005,NOME='GRALOGDB',LIB2=GR.GERAL
//LKED.SYSIN DD *
  NAME GRALOGDB(R)
