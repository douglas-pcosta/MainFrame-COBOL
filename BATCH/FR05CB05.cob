       IDENTIFICATION                            DIVISION.              00010000
       PROGRAM-ID. FR05CB05.                                            00020000
      *==========================================                       00030000
      *     AUTOR   : DOUGLAS PEREIRA DA COSTA                          00040000
      *     EMPRESA : FOURSYS                                           00050000
      *     DATA    : ZZ/ZZ/ZZZZ                                        00060000
      *     OBJETIVO: EXERCICIO                                         00070000
      *ENVIRONMENT                               DIVISION.              00080001
       DATA                                      DIVISION.              00081001
       WORKING-STORAGE                           SECTION.               00082001
       01 WRK-REGISTRO.                                                 00083001
          05 WRK-ID                PIC  9(05) VALUE ZEROS.              00084001
          05 WRK-CLIENTE           PIC  X(30) VALUE SPACES.             00085001
          05 WRK-TELEFONE          PIC  9(10) VALUE ZEROS.              00086001
          05 WRK-GERENTE           PIC  X(15) VALUE SPACES.             00087001
       PROCEDURE                                 DIVISION.              00090000
           ACCEPT WRK-REGISTRO FROM SYSIN.                              00091002
           DISPLAY ' ID: ' WRK-ID.                                      00100001
           DISPLAY ' CLIENTE: ' WRK-CLIENTE.                            00101001
           DISPLAY ' TELEFONE: ' WRK-TELEFONE.                          00102001
           DISPLAY ' GERENTE: ' WRK-GERENTE.                            00103001
           STOP RUN.                                                    00110000
