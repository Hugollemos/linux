## expressões com strings:
```=``` é igual? <br>
```!=``` a primeira string é diferente da segunda ? <br>
```-z``` a string é vazia ? <br>
```-n``` a string não é vazia ?

```
$ test "abcd" = "abcd"; echo $?
0
$ test "abcd" != "abcd"; echo $?
1
$ test "abcd" = "efgh"; echo $?
1
$ test "abcd" != "efgh"; echo $?
0
$ test -z "meleu"; echo $?
1
$ test -n "meleu"; echo $?
0
$ test -n ""; echo $?
1
$ test -z ""; echo $?
0
```
Podemos substituir da seguinte forma: 
```
test "teste" = "$teste"

$ ["teste" = "$teste"]
```
## expressões aritméticas
---
| operador | significado |
| --- | ---
-eq	| igual (EQual);
-ne	| diferente (Not-Equal);
-lt	| menor que, "<" (Less Than);
-le	| menor ou igual, "<=" (Less than or Equal);
-gt	| maior que, ">" (Greater Than);
-ge	| maior ou igual, ">=" (Greater than or Equal).

## let
>usado para expressões aritméticas, podemos comparar valores numéricos com os sinais <, >, <=, >= and ==. <br>
posso substituir let "expressão" por ((expressão)).
```
let var++         # equivalente a "var=$[ $var + 1 ]"
let var--         # equivalente a "var=$[ $var - 1 ]"
let "$num > 2"    # equivalente a "[ $num -gt 2 ]"

(( var++ ))
(( var-- ))
(( $num > 2 ))
```

```
$ [ 2 -eq 2 ]; echo $?
0
$ [ $? -lt 5 ]; echo $?
0
$ [ 1 -le 1 ]; echo $?
0
$ [ 2 -ne 2 ]; echo $?
1
```
## Operadores lógicos (AND e OR)
```-a```para AND
```-o```para OR

### como testar arquivos:
- testando se o arquivo é executável
```
test -x arquivo; echo $?

```
- testando valores 
``` 
[[ 1 -eq 5 ]] && echo "sucesso" || echo "erro"
```
- Endica expressão REGEX
- ! negação ou inverso....
[[ $numero =~ ^[0-9]+$ ]] && echo "Erro! Digite um *numero*!" && exit 1