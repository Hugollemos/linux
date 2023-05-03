# linux
duas exclamacoes!! repete o comando passado
status de saida --> 0 (sucesso) ou dif. de 0 (erro)
se eu executar o comando com : bash +x ele mostra o comando e a saída do comando.
-n: não executa os comandos, apenas verifica erros de sintaxe (noexec);
-v: mostra o script e depois executa-o (verbose);
- 'aspas simples': atribuem o conteúdo exato do que está escrito entre as aspas simples à uma variável.
```
$ caminho='O meu path eh: $PATH'
O meu path eh: $PATH
```
- "aspas duplas": atribuem a string que está entre as aspas duplas, bem como valor das variáveis que porventura podem estar entre elas (como no segundo exemplo acima, onde usamos a variável $PATH).
```
$ caminho="O meu path eh: $PATH"
O meu path eh: /usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin:/usr/openwin/bin
```
> nada: similar as aspas duplas, porém ignora espaços excedentes.

- `crases`: atribuem a saída do comando que está entre elas, tem a capacidade de ver o conteúdo de uma variável (no último exemplo acima, onde usamos `ls $HOME`);
```
$ conteudo_dir="Meu diretorio home contem: `ls $HOME`"
Meu diretorio home contem: GNUstep/ progs/ textos/
```