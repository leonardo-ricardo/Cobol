       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: PARAGRAFOS E LOGICA ESTRUTURADA
      **
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1       PIC 9(02)       VALUE ZEROS.
       77 WRK-NOTA2       PIC 9(02)       VALUE ZEROS.
       77 WRK-MEDIA       PIC 9(02)       VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.

           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'ENTRE COM A NOTA 1: '
           ACCEPT WRK-NOTA1    FROM CONSOLE.
           DISPLAY 'ENTRE COM A NOTA 2: '
           ACCEPT WRK-NOTA2    FROM CONSOLE.


       0200-PROCESSAR.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           IF WRK-MEDIA >= 6
               DISPLAY ' APROVADO'
               END-IF.
           IF WRK-MEDIA < 6
               DISPLAY ' REPROVADO'
               END-IF.

       0300-FINALIZAR.

           DISPLAY ' FINALIZACAO DE PROCESSAMENTO'

           DISPLAY 'MEDIA.. ' WRK-MEDIA.
