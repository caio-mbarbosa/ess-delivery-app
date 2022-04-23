Feature: “Inserir novo cliente”
    As a cliente que não possui conta no aplicativo
    I want to inserir meus dados para cadastro de nova conta
    So that eu possa realizar compras

Scenario: Registro de cliente novo
  Given estou na página de cadastro de cliente
   When eu preencho os campos com nome "Pedro Jorge Lima da Silva", cpf "111.222.333-44", telefone "(81) 99573-2414", email "pedro123@gmail.com" e senha "Pedro123"
   Then aparece a tela para confirmar codigo de telefone

Scenario: Registro de cliente novo com confirmação de telefone
  Given estou na página de confirmar codigo de telefone e preenchi os campos anteriores com nome "Pedro Jorge Lima da Silva", cpf "111.222.333-45", telefone "(81) 99573-2415", email "pedro1234@gmail.com" e senha "Pedro1234"
   When eu preencho o campo de código com "ABC123"
   Then sou levado para a pagina Home

Scenario: Registro de cliente com senha fora do padrão
  Given estou na página de cadastro de cliente
   When eu preencho os campos com nome "Pedro Jorge Lima", cpf "111.222.333-45", telefone "(81) 99573-2415", email "pedro1234@gmail.com" e senha "123456789"
   Then eu permaneço na mesma página de cadastro e não consigo seguir para a tela de confirmação de codigo.

