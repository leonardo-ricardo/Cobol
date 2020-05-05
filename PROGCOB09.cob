       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: RECEBER PRODUTO E VALOR PARA CALCULO DE FRETE
      ** USO DOS COMANDO EVALUATE
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO       PIC X(20)            VALUE SPACES.
       77 WRK-ESTADO        PIC X(02)            VALUE SPACES.
       77 WRK-VALOR         PIC 9(06)V99         VALUE ZEROS.
       77 WRK-FRETE         PIC 9(04)V99         VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O PRODUTO:.. '
           ACCEPT WRK-PRODUTO    FROM CONSOLE.

           DISPLAY 'DIGITE O VALOR.. '
           ACCEPT WRK-VALOR    FROM CONSOLE.

           DISPLAY 'DIGITE O SEU ESTADO.. '
           ACCEPT WRK-ESTADO    FROM CONSOLE.

           EVALUATE WRK-ESTADO
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN OTHER
                   DISPLAY 'NAO PODEMOS ENTREGAR EM SUA REGIAO'
           END-EVALUATE.


               DISPLAY '============= TOTAL =========================='

               IF WRK-FRETE NOT EQUAL 0

               DISPLAY ' TOTAL DA COMPRA (COM FRETE): ' WRK-FRETE

               END-IF.

           STOP RUN.
