       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGVENDA.
      **************************************************************
      **   AREA DE COMENTARIO - REMARKS
      **   AUTHOR = LEONARDO(ESTUDANTE) LEOO
      **   OBJETIVO: Calcular e Imprimir a média aritmética de vendas
      **   formatada em tela com cifrão, pontos e casas decimais.
      **   DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1       PIC 9(05)V99   VALUE ZEROS.
       77  WRK-NUM2       PIC 9(05)V99   VALUE ZEROS.
       77  WRK-MEDIA      PIC 9(06)V99   VALUE ZEROS.
       77  WRK-MEDIA-ED   PIC $ZZ.ZZZ,99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'ENTRE COM 1a VENDA '
           ACCEPT WRK-NUM1 FROM CONSOLE.

           DISPLAY 'ENTRE COM 2a VENDA '
           ACCEPT WRK-NUM2 FROM CONSOLE.


           DISPLAY '=================COMPUTE==================='.

           COMPUTE WRK-MEDIA = (WRK-NUM1 + WRK-NUM2) / 2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.
           DISPLAY 'MEDIA.. ' WRK-MEDIA-ED.

           STOP RUN.
