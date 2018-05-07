# COBOL

## Configurar Ambiente  
Abaixo estão os passos para realizar a criação de um ambiente Cobol localmente, utilizando a IDE Visual Studio Code, o compilador GnuCOBOL 2.2 e a framework de testes Cobol Unit Test.

  * Baixar o GnuCOBOL 2.2
  ```
  http://www.arnoldtrembley.com/GnuCOBOL.htm
  ```
  * Criar pasta ( *C:\Cobol* )
  * Extrair o GnuCOBOL 2.2
  * Adicionar a Variável de Ambiente ( *C:\Cobol\bin* )
  * Baixar o Cobol Unit Test
  ```
  https://github.com/neopragma/cobol-unit-test.git
  ```
  * Criar pasta ( *C:\Cobol\unit-test* )
  * Extrair o Cobol Unit Test
  * Adicionar a Variável de Ambiente ( *C:\Cobol\unit-test* )

## Executando 
  * Abrir o VSCode
  * Adicionar extensão ( *CTRL+SHIFT+X* ) COBOL Syntax Support
  * Abra o Terminal ( *CTRL+'* )
  * Converta o código COBOL em Unix/Linux
  ```
    dos2unix program.cob
  ```
  * Compile o código COBOL 
  ```
    cobc -conf=config/default.config -x program.cob
  ```
  * Execute o .EXE
  ```
    ./program.exe
  ```

## Links
  * GnuCOBOL
	  * http://www.arnoldtrembley.com/GnuCOBOL.htm
	  * http://opencobol.add1tocobol.com/oc_gettingstarted_windows.html#_Toc223775007
  * Cobol Unit Test
	  * https://github.com/neopragma/cobol-unit-test/wiki/03.-Usage-guide

IkaroSales : <ikarosales7@gmail.com>