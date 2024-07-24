# Catálogo de Produtos📑

### Este projeto é um sistema básico de catálogo de produtos desenvolvido para facilitar o gerenciamento de informações de produtos, categorias e marcas em um ambiente web.

## Status do Projeto
- ### Terminado✅ ``` (No ar) ```

## **📄Objetivo**
- Esta aplicação visa criar um sistema online para gerenciar e organizar informações de produtos de forma eficiente

## Funcionalidades Principais🛠️

###  Cadastro de Categorias e Marcas📲: 
- Permite adicionar novas categorias e marcas para organizar os produtos.

### Cadastro de Produtos✏️:
-  Inclui informações detalhadas como nome, descrição, estoque e preço para cada produto.

### Visualização de Produtos💻:
- Permite visualizar todos os produtos cadastrados, filtrar por categoria e marca.

## Tecnologias Utilizadas
- Banco de Dados: MySQL
- Backend: PHP 8.2
- Frontend: HTML 5, CSS 3, jQuery 2.1.4
- Servidor: Apache (XAMPP, WampServer, etc.)

## Estrutura do Banco de Dados
### Tabelas

## Categoria

- IDCATEGORIA (int, PK): Identificador único da categoria.
- ESCRICAO (varchar): Descrição da categoria.
  
##  Marca

- IDMARCA (int, PK): Identificador único da marca.
- DESCRICAO (varchar): Descrição da marca.

## Produtos

- IDPRODUTO (int, PK): Identificador único do produto.
- NOME (varchar): Nome do produto.
- DESCRICAO (text): Descrição detalhada do produto.
- ESTOQUE (int): Quantidade disponível em estoque.
- PRECO (decimal): Preço unitário do produto.
- IDCATEGORIA (int, FK): Chave estrangeira referenciando a tabela categoria.
- IDMARCA (int, FK): Chave estrangeira referenciando a tabela marca.
#

# Demosntração do projeto

## Tela Inicial

![App ScreenShot](image/tela%20inicial.png)

## Tela de cadastro de produto

![App ScreenShot](image/cadastro%20produtos.png)

## Tela de cadastro de categoria

![App ScreenShot](image/cadastro%20categoria.png)

## Tela de cadastro de marca

![App ScreenShot](image/cadastro%20marca.png)


# **👨‍💻Faça o clone do projeto em sua máquina para testes**
``` bash
  git clone https://github.com/tatacarollinydev/compra-projeto
  cd compra-projeto
```

# Trabalho realizado nas aulas do ensino tecnico juntamente com o professor Leonardo Santiago
