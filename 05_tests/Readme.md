como testar arquivos:
- testando se o arquivo é execultavel 
```
test -x arquivo; echo $?
ou
[[ 1 -eq 5 ]] && echo "sucesso" || echo "erro"
```