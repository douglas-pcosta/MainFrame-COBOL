F05CIM1 DFHMSD TYPE=MAP,MODE=INOUT,LANG=COBOL,CTRL=FREEKB,TIOAPFX=YES, *00010014
               MAPATTS=(COLOR)                                          00011014
MAPTEST DFHMDI SIZE=(24,80)                                             00020004
        DFHMDF POS=(2,30),                                             *00030023
               LENGTH=20,                                              *00040006
               ATTRB=ASKIP,                                            *00050004
               INITIAL='CONSULTA DE CLIENTES',COLOR=YELLOW              00060013
        DFHMDF POS=(03,13),LENGTH=55,INITIAL='-------------------------*00061024
               ------------------------------',ATTRB=ASKIP,COLOR=YELLOW 00062024
*********************************************************************** 00070006
        DFHMDF POS=(05,20),LENGTH=10,INITIAL='ID       :',ATTRB=ASKIP, *00080023
               COLOR=TURQUOISE                                          00081018
ID      DFHMDF POS=(05,31),LENGTH=05,ATTRB=(UNPROT,IC,NUM),            *00090032
               COLOR=NEUTRAL                                            00091032
        DFHMDF POS=(05,37),LENGTH=01,ATTRB=PROT                         00100004
*********************************************************************** 00110006
        DFHMDF POS=(07,20),LENGTH=10,INITIAL='NOME     :',ATTRB=ASKIP, *00120023
               COLOR=TURQUOISE                                          00121018
NOME    DFHMDF POS=(07,31),LENGTH=30,ATTRB=UNPROT,COLOR=NEUTRAL         00130031
        DFHMDF POS=(07,62),LENGTH=1,ATTRB=PROT                          00140004
*********************************************************************** 00141006
        DFHMDF POS=(09,20),LENGTH=10,INITIAL='SETOR    :',ATTRB=ASKIP, *00141123
               COLOR=TURQUOISE                                          00141218
SETOR   DFHMDF POS=(09,31),LENGTH=04,ATTRB=UNPROT,COLOR=NEUTRAL         00141331
        DFHMDF POS=(09,36),LENGTH=1,ATTRB=PROT                          00141405
*********************************************************************** 00141506
        DFHMDF POS=(11,20),LENGTH=10,INITIAL='SALARIO  :',ATTRB=ASKIP, *00141623
               COLOR=TURQUOISE                                          00141718
SAL     DFHMDF POS=(11,31),LENGTH=10,ATTRB=(UNPROT,NUM),COLOR=NEUTRAL, *00141831
               PICOUT='9(10)',PICIN='9(10)'                             00141928
        DFHMDF POS=(11,42),LENGTH=1,ATTRB=PROT                          00142007
*********************************************************************** 00142107
        DFHMDF POS=(13,20),LENGTH=10,INITIAL='DATA ADM :',ATTRB=ASKIP, *00142223
               COLOR=TURQUOISE                                          00142318
DATADM  DFHMDF POS=(13,31),LENGTH=10,ATTRB=(UNPROT,NUM),COLOR=NEUTRAL   00142431
        DFHMDF POS=(13,42),LENGTH=1,ATTRB=PROT                          00142517
        DFHMDF POS=(13,59),LENGTH=08,INITIAL='FORMATO:',               *00142629
               COLOR=TURQUOISE                                          00142728
        DFHMDF POS=(14,58),LENGTH=10,INITIAL='AAAA-MM-DD',             *00142834
               COLOR=TURQUOISE                                          00142929
*********************************************************************** 00143007
        DFHMDF POS=(15,20),LENGTH=10,INITIAL='EMAIL    :',ATTRB=ASKIP, *00143123
               COLOR=TURQUOISE                                          00143218
EMAIL   DFHMDF POS=(15,31),LENGTH=40,ATTRB=UNPROT,COLOR=NEUTRAL         00143331
        DFHMDF POS=(15,72),LENGTH=1,ATTRB=PROT                          00143407
*********************************************************************** 00143507
        DFHMDF POS=(19,10),LENGTH=10,INITIAL='MENSAGEM :',ATTRB=ASKIP, *00143623
               COLOR=TURQUOISE                                          00143718
MSG     DFHMDF POS=(19,21),LENGTH=40,ATTRB=ASKIP,COLOR=NEUTRAL          00143831
        DFHMDF POS=(19,62),LENGTH=1,ATTRB=PROT                          00143917
*********************************************************************** 00144007
        DFHMDF POS=(22,04),LENGTH=75,                                  *00144127
               INITIAL=' F3=EXIT   F5=INSERT   F6=CONSULT   F9=UPDATE  *00144223
                F10=DELET   ENTER=REFRESH ',COLOR=YELLOW                00144331
*********************************************************************** 00144717
        DFHMSD TYPE=FINAL                                               00144804
        END                                                             00145004
