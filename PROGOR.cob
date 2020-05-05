       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGOR.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: RECEBER LARGURA E COMPRIMENTO
      ** CALCULAR AREA
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA       PIC 9(03)V99            VALUE ZEROS.
       77 WRK-COMPRIMENTO   PIC 9(02)V99            VALUE ZEROS.
       77 WRK-AREA          PIC 9(03)V99            VALUE 02.

       PROCEDURE DIVISION.
           DISPLAY 'DIGITE A LARGURA:.. '
           ACCEPT WRK-LARGURA    FROM CONSOLE.

           DISPLAY 'DIGITE O COMPRIMENTO:.. '
           ACCEPT WRK-COMPRIMENTO    FROM CONSOLE.

           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY '================ DADOS ======================='
               DISPLAY ' AREA:.. ' WRK-AREA
           ELSE
               DISPLAY 'FALTA ALGUMA INFORMACAO.'
           END-IF.




           STOP RUN.
