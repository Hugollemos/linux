como testar arquivos:
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