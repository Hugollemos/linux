- /etc/passwd
- /etc/group
- /etc/shadow
- /etc/gsshadow

### /etc/passwd
- Lista dos usuários do sistema
- O nome “passwd” vem da palavra password, porque antigamente ele era utilizado para guardar senhas criptografadas. Hoje as senhas ficam armazenadas no arquivo “/etc/shadow”. 
- Legível por qualquer um no sistema
- pode ser editado com editores de textos; porém é recomendado que sejam feitas alteracoes com o comando usermod (usr/sbin/usermod)
```
 hugo:x:1000:1000:,,,:/home/hugo:/bin/bash
  1   2  3    4    5       6         7
```
1- Nome de usuário (1-32 caracteres) <br>
2- senha (senhas shadow) <br>
3- UID (ID do usuário) (0-65535) <br>
4- GID (ID do grupo) (Primário) <br>
5- Comentários - informaçoes extras sobre o usuário (Nome completo/número do telefone) <br>
6- Diretório home (padrão) <br>
7- Shell padrão <br>

### /etc/group
- Arquivo que define os grupos aos quais os usuários pertencem.
- são usados para aplicar permissoes de acesso a recuross do sistema.
- Gerenciamento e monitoramento de usuários.
```
hugo:x:1000:
 1   2  3   4
``` 
1- nome do grupo <br>
2- senha <Br>
3- GID <Br>
4- lista de menbros, separados por vírgulas <Br>
ex:
```
cdrom:x:24:hugo
```

### /etc/gshadow
- ossui as senhas criptografadas dos grupos (caso tenha senha), listagem de membros e informações administrativas.

```
netdev:!::hugo
    1  2 3 4
```
1- Nome do grupo <br>
2- Senha criptografada (caso houver). Se houver um sinal de ponto de exclamação (!) indica que os usuários que não são do grupo não podem acessa-lo. <br>
3 - administradores do grupo <br>
4- membros do grupo <Br>

### Comandos
- O comando groups permite descobrir de quais grupos um usuário é membro.
```
groups [nome_do_usuário]
```` 
- O comando id mostra os IDs de grupos, IDs de usuários e mostra de quais grupos esse usuário é membro.
```
id [nome_do_usuário] 
id [opções] [nome_do_usuário]
---
-g (ou --group)   = Mostra o GID do grupo primário do usuário 
-G  = Mostra todos os GIDs dos grupos do usuário.
-nG = Mostra os nomes dos grupos em vez dos GIDs. 
```

### /etc/shadow
- Ele somente é legível pelo usuário root ou por um usuário que tenha permissão específica para ler.
- Possui 9 campos (colunas separadas por dois pontos :) de informações:

```
syslog:*:19360:0:99999:7:::
   1  :2:  3  :4:  5  :6:7:8:9

```
1 - Nome da conta do usuário. <br>
2 - Senha 
    ! = não tem senha; 
    * = conta desativada (não consegue fazer login);
    ![senha] = conta travada;
    !! = senha nunca configurada <BR>
3 - É a última modificação representada pelo número de dias desde 1970 até o dia em que a senha foi modificada (dias passados desde 01/01/1970 até que o dia da alteração) <Br>
4 - Mínimo: Número mínimo de dias antes de que o usuário possa modificar a sua senha. <Br>
5 - Máximo: Número máximo de dias que o usuário pode manter a senha. <BR>
6 - Aviso: Número de dias antes da expiração da senha quando o usuário começa a receber avisos "Sua senha vai expirar". <Br>
7 - Inativo: Número de dias após a validade da senha expirar em que a conta é desabilitada automaticamente. <Br>
8 - Expiração: Número de dias, a partir de 01/01/1970, indicando quando a conta será desativada. <BR>
9 - Reservado: Atualmente não tem utilidade. <BR> 

### useradd
- O comando useradd é usado para criar uma conta de usuário no sistema.
```
useradd [opções] nome_da_conta 
```
```
-c = Define o campo comentário (nome, usuário, telefone, email...)
-d = Define o diretório home (padrão) do usuário.
-m = Cria e preenche o diretório home do usuário.
-s shell = Usa o shell como padrão da conta.
-e data_expiração = Data na qual a conta será desabilitada (formato: AAAA-MM-DD).
-u UID = Especifica um UID para o usuário.
```
EX:
```
sudo useradd -m -c "Hugo teste" -s /bin/bash hugo_teste
```
- Para verificar basta olhar o arquivo /etc/passwd:

## adduser (é um script que usa o useradd)
- O comando adduser, na verdade é um script interativo que utiliza o programa useradd para realizar tarefas de criação de usuários (no Linux Debian e derivados).

- O script está salvo no diretório /usr/sbin
```
adduser conta_usuário
```

## Alterar senha de usuário
- O comando passwd serve para configurar a senha de um usuário e algumas alterações de conta.
