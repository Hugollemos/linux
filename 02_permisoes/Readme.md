As permisoes podem ser divididas em quatro partes para indicar: tipo, proprietario, grupo e outras permisoes.

| Permissão | Binário | Decimal | Read "R" | Write "W" | Execute "X" 
|--- |--- |--- |--- |--- |--- 
| --- | 000 | 0 | ❌ | ❌ | ❌ |
| --x | 001 | 1 | ❌ | ❌ | ✔️ |
| -W- | 010 | 2 | ❌ | ✔️ | ❌ |
| -WX | 011 | 3 | ❌ | ✔️ | ✔️ | 
| r-- | 100 | 4 | ✔️ | ❌ | ❌ |
| r-x | 101 | 5 | ✔️ | ❌ | ✔️ | 
| rw- | 110 | 6 | ✔️ | ✔️ | ❌ |
| rwx | 111 | 7 | ✔️ | ✔️ | ✔️ |

---

| permisao | bi |
| --- | ---
--------- |	000
r--------	| 400
r--r--r--	| 444
rw-------	| 600
rw-r--r--	| 644
rw-rw-rw-	| 666
rwx------	| 700
rwxr-x---	| 750
rwxr-xr-x	| 755
rwxrwxrwx	| 777


![terminal](../Screenshot.png)


d => diretorio
b => arquivo de bloco
c => arquivo especial de caractere
p => canal
s => socker
- => arqivo "normal"

R => siginifica permiso de leitura (read);
W => significa permisao de gravaçao (write);
x => significa permissão de execução (execution);
- => significa permissão desabilitada.

--- => nenhuma permissão;
r-- => permissão de leitura;
r-x => leitura e execução;
rw- => leitura e gravação;
rwx => leitura, gravação e execução.


Lista 1
Símbolo
u => usuário
g => grupo
O (letra 'o' maiúscula) => outro
a => todos

Lista 2
Símbolo
r => leitura
w => gravação
x => execução

Para poder combinar os símbolos destas duas listas, usam-se os operadores:

+ (sinal de adição) => adicionar permissão
- (sinal de subtração) => remover permissão
= (sinal de igualdade) => definir permissão

EX: chmod u+w teste.old
EX: chmod g+rw teste.old
Ex: chmod g=rwx teste.old