# Projeto API de CRUD bolo com disparo de email
Esse projeto usa Autenticação JWT

* É necessário fazer login para obter a hash para explorar os serviços da aplicação.
    ip:0000/api/v1/login

# Iniciar o projeto
    1 - Ao baixar o projeto rode o seguinte comando
    
         composer install 

    2 - É necessário a criação de um banco de dados
        
        Sugestão de nome: checkList_cake
        OBS: caso utilize outro nome lembre-se de mudar as credências de acesso para todar o projeto
        file: /phpunit.xml 
        file: .env

        Crie um banco de dados Mysql e coloque as credenciais no arquivo .env que está na raiz do projeto

    3 - Rode o seguinte comando para gerar a chave
        
         php artisan key:generate 
    
    4 - Para uma melhor experiência rode o comando da chave do JWT
        
         php artisan jwt:secret 

    5 - Rode as migration com o seguinte comando
        
         php artisan migrate 

    6 - comando para popular o banco de dados

        php artisan db:seed --class=CakeSeeder

        php artisan db:seed --class=CakeEmailSeeder
# Caso haja algum problema com a migrate, no diretório database há um arquivo sql que basta ser executado diretamente na sua ferramente de banco de dados
    file:  query.sql 

    
# Comando para rodar o projeto
    php artisan serve

# Se você populou o banco com o arquivo sql, existe um usuário de teste pronto para login
    http://127.0.0.1:8000/api/v1/login

    {
        "email": "fabio.almeida@gmail.com",
        "password": 12345
    }
# Você pode criar um novo usuário usando a rota:
    http://127.0.0.1:8000/api/v1/register

    Passando em seu corpo os dados de usuário:

    {
        "name": "fabio Almeida",
        "email": "fabio.almeida@gmail.com",
        "password": 12345
    }
# O arquivo Collection está na raiz do projeto:
    Checklist.postman_collection.json


## Após logado você receberá um token o qual tem que ser utilizado no Authorization nas rota para a utilização da nossa api
    TYPE Bearer {{Token}}

# Capacidades não atendidas.
* Tive problemas com permissão do docker em meu ambiente, terei de explorar. Breve verifico e subo um yml

## Executar filas
php artisan queue:work

# Testes
    /tests

     Comando para executar os testes  
    
    php artisan test --filter {method}


## Receber email do job com a ferramenta mailtrap
    Pra isso será necessário uma conta no https://mailtrap.io/

    1. Faça sua inscrição na ferramenta
    2. Login com sua conta
    3. Na área de projetos no mailtrap crie um inbox para receber suas mensagens (Fica bem acima da tabela de lista em um botão azul)
        OBS: (Add inbox)
    4. Nomeie seu inbox e clique na engrenagem para ter as configurações
    5. Em Integrations escolha a aplicação PHP -> Laravel
    6 Copie e cole as variáveis de ambiente no .env
        OBS: Já retirei essas variáveis que vem como padrão
    
    Basta startar o projeto e realizar os testes.

# Comando importantes Caso haja necessidade de limpar informações do servidor.
    php artisan config:clear
    php artisan cache:clear
    php artisan view:clear
    php artisan route:clear

# Verifica o processo que está rodando
ps -ef | grep php

Mata o processo
kill -9 318937

## Itens que serão implementados
    *  Link da documentação 

    ip:000/api/documentation
    
    branch: documentacao

    * Camada Repository Pattners
    
    branch: patterns




## Bug durante o desenvolvimento

-----------------------------------------------------------------------------------------------------------------------------------------
    "} 
    [2022-12-17 02:22:31] local.ERROR: Trait 'Illuminate\Foundation\Auth\RegistersUsers' not found {"exception":"[object] (Symfony\\Component\\ErrorHandler\\Error\\FatalError(code: 0): Trait 'Illuminate\\Foundation\\Auth\\RegistersUsers' not found at /media/fabricio/hdExt/projetos_ps/doctor-test/app/Http/Controllers/Api/RegisterController.php:16)
    [stacktrace]
    #0 {main}
    "} 

    composer require laravel/ui

# implement erro, colar o namespace direto no VENDOR/JWT para instanciar na aplicação
   {repositorio}/vendor/tymon/jwt-auth/src/Contracts/JWTSubject.php

* Importante ressaltar que a lib JWT tem alguns erros quando aplicado as configurações. O interessante que  composer
Parece não consegui registrar o serviço na aplicação, isso é um ponto a ser a explorar para demais projetos futuros.


----------------------------------------------------------------------------------------------------------------------------------------
