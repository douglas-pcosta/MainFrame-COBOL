       IDENTIFICATION                            DIVISION.              00010000
       PROGRAM-ID. FR05CB07.                                            00020000
      *===================================================              00030000
      *     AUTOR   : DOUGLAS PEREIRA DA COSTA                          00040000
      *     EMPRESA : FOURSYS                                           00050000
      *     DATA    : 20/04/2022                                        00060000
      *     OBJETIVO: EXERCICIO DE REDEFINES                            00070000
      *===================================================              00071000
      *ENVIRONMENT                               DIVISION.              00072000
      *===================================================              00073000
       DATA                                      DIVISION.              00074000
      *===================================================              00075000
       WORKING-STORAGE                            SECTION.              00076000
      *===================================================              00077000
       01 REGISTRO.                                                     00078000
          05 WRK-NOME         PIC X(15)      VALUE SPACES.              00079000
          05 WRK-RUA          PIC X(15)      VALUE SPACES.              00079100
          05 WRK-NUMERO       PIC 9(05)       VALUE ZEROS.              00079200
          05 WRK-BAIRRO       PIC X(10)      VALUE SPACES.              00079300
                                                                        00079400
       01 WRK-NOME-S          REDEFINES       REGISTRO.                 00079500
          05 WRK-NOME         PIC X(15).                                00079600
          05 FILLER           PIC X(30)      VALUE SPACES.              00079700
                                                                        00079800
       01 WRK-END-S           REDEFINES       REGISTRO.                 00079900
          05 FILLLER          PIC X(15).                                00080000
          05 WRK-ENDERECO                                               00080100
             10 WRK-RUA       PIC X(15).                                00080200
             10 WRK-NUMERO    PIC ZZZZZ.                                00080300
             10 WRK-BAIRRO    PIC X(10).                                00080400
      *===================================================              00081000
       PROCEDURE                                 DIVISION.              00090000
      *===================================================              00090100
           ACCEPT REGISTRO FROM SYSIN.                                  00090200
           DISPLAY '==============================='                    00090500
           DISPLAY 'REGISTRO COMPLETO:' REGISTRO                        00090600
           DISPLAY '==============================='                    00090700
           DISPLAY 'NOME.............:' WRK-NOME OF WRK-NOME-S          00090800
           DISPLAY '==============================='                    00090900
           DISPLAY 'ENDERECO.........:' WRK-ENDERECO OF WRK-END-S       00091000
           DISPLAY '==============================='.                   00091100
           STOP RUN.                                                    00092000
