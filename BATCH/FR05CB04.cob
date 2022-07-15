       IDENTIFICATION                            DIVISION.              00010000
       PROGRAM-ID.  FR05CB04.                                           00020000
      *===================================================              00030000
      *     AUTOR   : DOUGLAS PEREIRA DA COSTA                          00040000
      *     EMPRESA : FOURSYS                                           00050000
      *     DATA    : 19/04/2022                                        00060000
      *     OBJETIVO: USO DE NIVEIS                                     00070000
      *===================================================              00080000
      *ENVIROMENT                                DIVISION.              00081000
      *===================================================              00081100
       DATA                                      DIVISION.              00082000
      *===================================================              00082100
       WORKING-STORAGE                            SECTION.              00082200
      *===================================================              00082300
       01 WRK-REGISTRO.                                                 00082400
          05 WRK-ID         PIC 9(005)        VALUE ZEROS.              00082500
          05 WRK-NOME       PIC X(030)       VALUE SPACES.              00082600
          05 WRK-INTERNO.                                               00082700
             10 WRK-TEL     PIC 9(010)        VALUE ZEROS.              00082800
             10 WRK-GERENTE PIC X(015)       VALUE SPACES.              00082900
      *===================================================              00083000
       PROCEDURE                                 DIVISION.              00083100
      *===================================================              00083200
           ACCEPT WRK-REGISTRO FROM SYSIN.                              00083300
           DISPLAY '==========================='.                       00083400
           DISPLAY 'ID.........- ' WRK-ID.                              00083500
           DISPLAY 'NOME.......- ' WRK-NOME.                            00083600
           DISPLAY 'TELEFONE...- ' WRK-TEL.                             00083700
           DISPLAY 'GERENTE....- ' WRK-GERENTE.                         00083800
           DISPLAY '==========================='.                       00083900
           DISPLAY WRK-REGISTRO.                                        00084000
           STOP RUN.                                                    00085000
