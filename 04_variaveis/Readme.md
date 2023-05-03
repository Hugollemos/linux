# variaveis
	
ex:
``` 
$ fruta="babana"
	nota=10
	nomes=("joao" "jose" "renata")
	retorno=$(whoami)
```
O bash irá tratar todas as variáveis como "strings".

Para declarar o tipo da variável bo Bash, nós  utilizamos o comando interno "declare".

As opcçoes mais utilizadas são:

* declare -i -- declara variável do tipo inteiro
* declare -A -- declara arrays associativas
* declare -P -- exibe os atributos da variável

Variáveis indexadas
```
alunos=("Marcelo", "Pedro", "Renata")
alunos=[0]="Marcelo"
alunos=[1]="Pedro"
alunos=[2]="Renata"
```
Exemplo de uso de variável
```
read -p "Digite seu nome: " nome
echo "Muito prazer, $nome!"
```

```
[prompt]$ FRUTA[0]=goiaba
[prompt]$ FRUTA[1]=manga
[prompt]$ FRUTA[2]=pera
[prompt]$ FRUTA[3]=laranja
```