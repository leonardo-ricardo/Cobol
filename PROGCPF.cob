       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCPF.
      **************************************************************
      ** AREA DE COMENTARIO - REMARKS
      ** AUTHOR = LEONARDO(ESTUDANTE) LEOO
      ** OBJETIVO: Receber e formatar a saída de um CPF
      ** IMPRIMIR FORMATADO - USO DOS PONTOS
      ** DATA = 04/05/2020
      **************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME       PIC X(20) VALUE SPACES.
       77 WRK-CPF        PIC 9(11) VALUE ZEROS.
       77 WRK-CPF-ED     PIC ZZZ.ZZZ.ZZ9/99 VALUE ZEROS.
       77 WRK-RG         PIC 9(13) VALUE ZEROS.
       77 WRK-RG-ED      PIC ZZ.ZZZ.ZZZ.Z VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME    FROM CONSOLE.
           ACCEPT WRK-CPF     FROM CONSOLE.
           ACCEPT WRK-RG      FROM CONSOLE.
      ***************MOSTRA DADOS
           DISPLAY 'NOME..' WRK-NOME
           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'CPF ' WRK-CPF-ED.
           MOVE WRK-RG TO WRK-RG-ED.
           DISPLAY 'RG ' WRK-RG-ED.
           STOP RUN.
