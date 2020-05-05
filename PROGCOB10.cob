       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: RECEBER USUÁRIO E NÍVEL
      ** USO DA VARIÁVEL NIVEL 88 (LÓGICA/BOOLEANA)
      ** DATA = 05/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO       PIC X(20)            VALUE SPACES.
       77 WRK-NIVEL         PIC 9(06)            VALUE ZEROS.
         88 ADM                                  VALUE 01.
         88 USER                                 VALUE 02.

       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O USUARIO:.. '
           ACCEPT WRK-USUARIO    FROM CONSOLE.

           DISPLAY 'DIGITE O NIVEL:.. '
           ACCEPT WRK-NIVEL    FROM CONSOLE.

           IF ADM
               DISPLAY 'NIVEL - ADMINISTRADOR.'
           ELSE
               IF USER
                   DISPLAY ' NIVEL USUARIO.'
               ELSE
                   DISPLAY 'USUARIO NAO AUTORIZADO.'
               END-IF
           END-IF.

           STOP RUN.
