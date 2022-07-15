       IDENTIFICATION                            DIVISION.              00010000
       PROGRAM-ID. FR05CB03.                                            00020000
      *==========================================                       00030000
      *     AUTOR   : DOUGLAS PEREIRA DA COSTA                          00040000
      *     EMPRESA : FOURSYS                                           00050000
      *     DATA    : ZZ/ZZ/ZZZZ                                        00060000
      *     OBJETIVO: RECEBER DADOS DA SYSIN                            00070002
      *==========================================                       00080000
       DATA                                      DIVISION.              00081000
       WORKING-STORAGE                           SECTION.               00082002
       77 WRK-NOME         PIC X(15) VALUE SPACES.                      00083000
       PROCEDURE                                 DIVISION.              00090000
           ACCEPT WRK-NOME FROM SYSIN.                                  00091000
           DISPLAY 'NOME INFORMADO.......-' WRK-NOME.                   00100001
           STOP RUN.                                                    00110000
