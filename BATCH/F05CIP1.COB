       IDENTIFICATION               DIVISION.                           00010001
       PROGRAM-ID. F05CIP1.                                             00020001
       DATA                         DIVISION.                           00030001
       WORKING-STORAGE              SECTION.                            00040001
           COPY F05CIMX.                                                00050002
       77 WRK-SAIDA      PIC X(30) VALUE SPACES.                        00051001
                                                                        00052001
       PROCEDURE                    DIVISION.                           00053001
           EXEC CICS SEND                                               00054001
             MAPSET('F05CIMX')                                          00055002
             MAP('MAPTEST')                                             00056001
             ERASE                                                      00057001
             MAPONLY                                                    00058001
           END-EXEC.                                                    00059001
                                                                        00060001
           EXEC CICS RECEIVE                                            00070001
             MAPSET('F05CIMX')                                          00080002
             MAP('MAPTEST')                                             00090001
             INTO(MAPTESTI)                                             00100001
           END-EXEC.                                                    00110001
                                                                        00111002
                                                                        00112002
                                                                        00120006
             IF IDI EQUAL '00001'                                       00120106
               MOVE 'LEBRON JAMES     '  TO NOMEO                       00120202
               MOVE 'NBA1'               TO SETORO                      00120302
               MOVE '9000'               TO SALO                        00120402
               MOVE 'LEBRON@NBA.COM.BR'  TO EMAILO                      00120602
               MOVE 'ID - ENCONTRADO  '  TO MSGO                        00120702
             END-IF.                                                    00120806
                                                                        00120906
             IF IDI EQUAL '00002'                                       00121006
               MOVE 'STEPHAN CURRY    '  TO NOMEO                       00121103
               MOVE 'NBA2'               TO SETORO                      00121202
               MOVE 'CURRY@NBA.COM.BR '  TO EMAILO                      00121302
               MOVE 'ID - ENCONTRADO  '  TO MSGO                        00121402
                                                                        00122002
             IF IDI EQUAL '00000'                                       00123006
               MOVE 'ID NAO ENCONTRADO'  TO MSGO                        00126004
             END-IF.                                                    00126106
                                                                        00126406
                                                                        00126504
           EXEC CICS SEND                                               00126601
             MAPSET('F05CIMX')                                          00126706
             MAP('MAPTEST')                                             00126801
             DATAONLY                                                   00126901
           END-EXEC.                                                    00127001
                                                                        00127101
                                                                        00128001
             MOVE 'FIM PROGRAMA - TCHAU ' TO WRK-SAIDA.                 00129001
                                                                        00130001
                                                                        00131001
           EXEC CICS                                                    00132001
             RETURN                                                     00133001
           END-EXEC.                                                    00134001
                                                                        00135001
                                                                        00136001
