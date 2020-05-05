       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: RECEBER DUAS NOTAS, REALIZAR A MEDIA COM EVALUATE
      ** USO DOS COMANDO EVALUATE
      ** INFO: MESMO CÓDIGO DO PROGCOBELSE , PORÉM COM USO DO ELSE IF
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1       PIC 9(02)         VALUE ZEROS.
       77 WRK-NOTA2       PIC 9(02)         VALUE ZEROS.
       77 WRK-MEDIA       PIC 9(02)V9       VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE A NOTA 1:.. '
           ACCEPT WRK-NOTA1    FROM CONSOLE.

           DISPLAY 'DIGITE A NOTA 2.. '
           ACCEPT WRK-NOTA2    FROM CONSOLE.

           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           EVALUATE WRK-MEDIA
            WHEN 6 THRU 10
               DISPLAY ' APROVADO'
            WHEN 2 THRU 5,9
               DISPLAY 'DE RECUPERACAO'

            WHEN OTHER
               DISPLAY ' REPROVADO'

           END-EVALUATE.


           STOP RUN.
