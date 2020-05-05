       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: RECEBER DUAS NOTAS, REALIZAR A MEDIA
      ** USO DOS COMANDOS IF/ELSE
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
           ACCEPT WRK-NOTA1    FROM CONSOLE.
           ACCEPT WRK-NOTA2    FROM CONSOLE.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           IF WRK-MEDIA >= 6
               DISPLAY ' APROVADO'
               END-IF.
           IF WRK-MEDIA < 6
               DISPLAY ' REPROVADO'
               END-IF.
      ***************MOSTRA DADOS

           DISPLAY 'MEDIA.. ' WRK-MEDIA.


           STOP RUN.
