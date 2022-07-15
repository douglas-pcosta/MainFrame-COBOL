       IDENTIFICATION                            DIVISION.              00010000
       PROGRAM-ID. FR05CB02.                                            00020002
      *==========================================                       00030000
      *     AUTOR   : DOUGLAS PEREIRA DA COSTA                          00040000
      *     EMPRESA : FOURSYS                                           00050000
      *     DATA    : ZZ/ZZ/ZZZZ                                        00060000
      *     OBJETIVO: TESTE DE COMPILACAO                               00070000
      *==========================================                       00080000
       DATA                                      DIVISION.              00081000
       WORKING-STORAGE                           SECTION.               00082000
       77 WRK-NOME       PICTURE X(15).                                 00083000
       PROCEDURE                                 DIVISION.              00090000
           MOVE 'DOUGLAS PEREIRA DA COSTA' TO WRK-NOME.                 00091001
           DISPLAY 'MEU PRIMEIRO PROGRAMA COBOL - FR05CB02'.            00100003
           DISPLAY 'FEITO POR ...........- ' WRK-NOME.                  00101005
           STOP RUN.                                                    00110000
