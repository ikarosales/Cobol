       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLINITTEST.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 SAIDA      PIC X(16).
           01 PROGNAME   PIC X(16) VALUE "COBOLINIT".
           COPY BOOK.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           CALL 'COBOLINIT' USING SAIDA.
           IF SAIDA = "Ikaro Sales"
             DISPLAY "OK"
           ELSE
             DISPLAY "Error"
           END-IF
            STOP RUN.
       END PROGRAM COBOLINITTEST.