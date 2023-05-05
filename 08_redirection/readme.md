### Redirecionamentos de saída:

```
ls > arquivosdodiretorio
```
>a saída do ``` ls ``` sera enviada para o arquivo ``` arquivosdodiretorio ``` e se este arquivo já existir será sobrescrito.
---
Aqui, a mesma coisa
```
ls >> arquivosdodiretorio
```
>porém, se este arquivo já existir, a saída do comando será adicionada ao fim do arquivo.
---
>Redireciona os erros gerados pelo comando para um arquivo especificado e mesmo que não ocorram erros no comando, o arquivo é criado.
```
2>
```
---
>Redireciona para o buraco negro, com error ou sem.
```
ls arquivoquenaoexiste 2> /dev/null
```

### Redirecionamentos de entrada:

>Avisa ao shell que a entrada padrão não será o teclado e sim o arquivo especificado.
```
>
```
>O comando cat pegará a entrada de “arquivo.txt” e a imprimirá na tela do terminal.
```
cat > file.txt
```