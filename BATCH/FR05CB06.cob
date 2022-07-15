       IDENTIFICATION                            DIVISION.              00010000
       PROGRAM-ID. FR05CB06.                                            00020001
      *===================================================              00030003
      *     AUTOR   : DOUGLAS PEREIRA DA COSTA                          00040000
      *     EMPRESA : FOURSYS                                           00050000
      *     DATA    : 19/04/2022                                        00060005
      *     OBJETIVO: USO DE VARIAVEL BINARIA                           00070000
      *===================================================              00071003
      *ENVIRONMENT                               DIVISION.              00080000
      *===================================================              00080103
       DATA                                      DIVISION.              00081000
      *===================================================              00081103
       WORKING-STORAGE                            SECTION.              00082003
      *===================================================              00082103
       77-WRK-VALOR           PIC 9(05).                                00083002
       77-WRK-VALOR-COMP      PIC 9(05) COMP.                           00084002
      *===================================================              00085003
       PROCEDURE                                 DIVISION.              00090000
      *===================================================              00090103
           ACCEPT WRK-VALOR FROM SYSIN.                                 00091006
           MOVE WRK-VALOR TO WRK-VALOR-COMP.                            00092006
           ADD 1 TO WRK-VALOR-COMP.                                     00093006
           DISPLAY '==============================='.                   00094006
           DISPLAY 'RESTADO.......:' WRK-VALOR-COMP.                    00100006
           DISPLAY '==============================='.                   00101006
           STOP RUN.                                                    00110000
