       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: USO DOS SINAIS POSITIVO E NEGATIVO
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1        PIC  9(02)  VALUE ZEROS.
       77  WRK-NUM2        PIC  9(02)  VALUE ZEROS.
       77  WRK-RESUL       PIC  S9(03) VALUE ZEROS.
       77 WRK-RESUL-ED     PIC  -ZZ9   VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.

           DISPLAY '=================SUBTRACAO======================='.

           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'RESULTADO.. ' WRK-RESUL.
           DISPLAY 'RESULTADO.. ' WRK-RESUL-ED.


           STOP RUN.
