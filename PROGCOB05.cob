       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: OPERADORES ARITMETICOS
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77  WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77  WRK-RESUL PIC 9(04) VALUE ZEROS.
       77  WRK-RESTO PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '==================SOMA==========================='.
           DISPLAY 'NUMERO 1.. ' WRK-NUM1.
           DISPLAY 'NUMERO 2.. ' WRK-NUM2.
           DISPLAY '================================================='.
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'RESULTADO DA SOMA.. ' WRK-RESUL.
           DISPLAY '=================SUBTRACAO======================='.

           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'RESULTADO DA SUBTRACAO.. ' WRK-RESUL.

           DISPLAY '=================DIVISAO========================='.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
           REMAINDER WRK-RESTO.
           DISPLAY 'RESULTADO DA DIVISAO.. ' WRK-RESUL.
           DISPLAY 'RESTO .. ' WRK-RESTO.


           DISPLAY '=================MULTIPLICACAO==================='.

           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'RESULTADO DA MULTIPLICACAO.. ' WRK-RESUL.


           DISPLAY '=================COMPUTE==================='.

           COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA.. ' WRK-RESUL.

           STOP RUN.
