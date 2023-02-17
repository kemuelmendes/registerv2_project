# v2_project

O BoxCard contém um formulário com um campo de entrada para o email, telefone ou CPF e dois botões: "Continuar" e "Criar conta". O botão "Continuar" leva o usuário para a tela de registro, enquanto o botão "Criar conta" leva o usuário para a tela de criação de conta.

A classe 'Register' é um StatefulWidget que contém um formulário com alguns campos de entrada de dados. O estado do widget é mantido pela classe _RegisterState, que contém alguns controladores de texto para os campos do formulário e um objeto Dio para fazer chamadas HTTP para a API ViaCEP.

O formulário é criado usando o widget Form do Flutter e alguns widgets de entrada de dados, como TextFormField. Cada campo de entrada de dados tem um controlador de texto para armazenar o valor inserido pelo usuário e um validador para garantir que os dados inseridos sejam válidos. Quando o usuário insere um CEP válido, o método _searchCep é chamado para preencher automaticamente o endereço do usuário com base no CEP usando a API ViaCEP.

Ao enviar o formulário, o método onPressed do botão de salvamento é chamado para validar o formulário. Se o formulário for válido, o texto "Valid form" é impresso no console; caso contrário, o texto "Invalid form" é impresso.

## Requisitos
Flutter 2.0.0 ou superior
Dio 3.0.10 ou superior
flutter_form_builder 6.0.0 ou superior
get 4.1.4 ou superior
Uso
Acesse a tela de cadastro pelo widget Register.

## Widgets
Register: Tela de cadastro com campos de endereço e busca de CEP.
FormBuilder: Widget que fornece um conjunto de campos com validação personalizável.
TextFormField: Campo de texto que pode ser validado e possui controle de edição.
AppBar: Barra superior de navegação.
Scaffold: Tela comum do Material Design que contém o layout da tela, como o AppBar e o BottomNavigationBar.


## Funcionalidades
Busca de CEP usando API do ViaCEP.
Validação de CEP com exibição de mensagem de erro.
Validação personalizada dos campos de endereço.
Máscara para campos numéricos.
Tela responsiva.