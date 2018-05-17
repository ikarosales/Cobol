# COBOL

## Configurar Ambiente  
Abaixo estão os passos para realizar a criação de um ambiente COBOL localmente, utilizando a IDE Visual Studio Code, o compilador GnuCOBOL 2.2 e a framework de testes COBOL Unit Test.

  * Baixar o GnuCOBOL 2.2
  ```
  http://www.arnoldtrembley.com/GnuCOBOL.htm
$  apt-get install -y open-cobol
  ```
  * Criar pasta ( *C:\GnuCOBOL* )
  * Extrair o GnuCOBOL 2.2 ou Executar o GC22.exe
  * Adicionar as Variáveis de Ambiente
  ```
    PATH                   C:\GnuCOBOL\bin (VAR do Sistema)
    COB_CONFIG_DIR         C:\GnuCOBOL\config
    COB_LIBRARY_PATH       C:\GnuCOBOL\bin
    COB_COPY_DIR           C:\project\copy
    COB_SCREEN_ESC         Y
    COB_SCREEN_EXCEPTIONS  Y
  ```
  * Baixar o COBOL Unit Test
  ```
  https://github.com/neopragma/cobol-unit-test.git
  ```
  * Criar pasta ( *C:\project* )
  * Extrair o COBOL Unit Test
  * Adicionar a Variável de Ambiente
  ```
  PATH                     C:\project
  ```

Obs:. Dentro da pasta do projeto na Unidade C vai haver uma estrutura de pasta que o framework de Teste já definiu, essa estrutura será utilizada para colocar seu projeto. Dentro da pasta:
  * `src/main/cobol` todo o código funcional do projeto 
  * `src/test/cobol` todo o código relativo aos testes
  * `src/test/resources` todo o código relativo a configuração dos testes

## Executando 
  * Abrir o Visual Studio Code
  * Adicionar extensão ( *CTRL+SHIFT+X* ) COBOL Syntax Support
  * Abra o Terminal ( *CTRL+'* )
  * Converta o código COBOL em Unix/Linux
  ```
$    dos2unix program.cob
  ```
  * Compila, cria um executável e Executar o código COBOL 
  ```
$    cobc -xj program.cob
  ```
  * Caso necessário adicione *diretório* para copiar/incluir um arquivo que esteja em um diretório diferente do código de execução.
  ```
$    cobc -xj program.cob -I ./<diretorio>
  ```

## Testando
  * Compilar o programa, que na estrutura de pasta está em `src/main/cobol/INDEX.CBL`
  ```
$    compile INDEX
  ```
  * Se não apresentar erros na compilação, basta rodar os testes
  ```
$    run-ut INDEX_CONFIG INDEX INDEX_TEST
  ```
**INDEX_CONFIG** - Arquivo de configuração do teste, localizado em `src/test/resources`

**INDEX** - Arquivo com código funcional a ser testado

**INDEX_TEST** - Arquivo com o código de Teste

## Links
  * GnuCOBOL
    * http://www.arnoldtrembley.com/GnuCOBOL.htm
    * http://open-cobol.sourceforge.io/doc/gnucobol.html
	  * http://opencobol.add1tocobol.com/oc_gettingstarted_windows.html#_Toc223775007
  * Cobol Unit Test
	  * https://github.com/neopragma/cobol-unit-test/wiki/03.-Usage-guide

IkaroSales : <ikarosales7@gmail.com>