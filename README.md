# Instruções

## Checando Rails:

Primeiramente, cheque a sua versão de Rails com o comando:

```ruby
rails -v
```

Caso sua versão seja menor do que 6, rode:

```ruby
gem install rails -v 6.0
```

## Clonando o projeto:

1. Faça um fork do projeto

2. Na página do repositório, clique no botão "Code"

3. Escolha a maneira como deseja clonar o projeto:

> HTTPS: https://github.com/<SEU_NOME_DE_USUÁRIO>/nama-test.git

ou

> SSH: git@github.com:<SEU_NOME_DE_USUÁRIO>/nama-test.git

4. Abra o terminal, e na página onde deseja clonar o projeto, digite:

Se HTTPS:

```
git clone https://github.com/<SEU_NOME_DE_USUÁRIO>/nama-test.git
```

Se SSH:

```
git clone git@github.com:<SEU_NOME_DE_USUÁRIO>/nama-test.git
```

5. Digite

```
cd nama-test
```

## Dentro da pasta, para testar o aplicativo:

1. Faça as migrações e instalações necessárias com os seguintes comandos:

```ruby
bundle install
rails db:create
rails db:migrate
```

2. Em uma nova aba do terminal, inicie o servidor com o comando "rails s"

3. No seu browser, digite:

```
localhost:300
```

4. Clique no botão "Adicionar Registros"

5. Clique no botão "Choose File" para escolher o arquivo de teste

## Para rodar os testes:

1. Para testes de modelo, digite o comando:

```ruby
rspec spec/models/sale_spec.rb
```

2. Para testes de controller, digite o comando:

```ruby
rspec ./spec/controllers/sales_controller.spec.rb
```
