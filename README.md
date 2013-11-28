# Agenda em Ruby
Um programa simples para gerenciar contatos em Ruby.

## Descrição
Sendo a minha primeira aplicação em Ruby, a criei para praticar e testar a linguagem. E também para servir como um pequeno exemplo de aplicação escrita em Ruby para outros. Apesar disso, há algumas imperfeições (como por exemplo no uso do padrão MVC), que são abordadas na seção [`Possíveis melhorias`](#possíveis-melhorias) deste documento. Para executar a aplicação, use o arquivo `app.rb`, que está na raiz do repositório.

## Ruby
Os passos para a [instalação][ruby-downloads] do Ruby, e bem como a sua [documentação][ruby-doc], podem ser encontrados na [página oficial da linguagem][ruby-lang].
[ruby-lang]: https://www.ruby-lang.org/
[ruby-downloads]: https://www.ruby-lang.org/en/downloads/
[ruby-doc]: http://www.ruby-doc.org/core-2.0.0/

## Possíveis melhorias
Abaixo estão listadas algumas melhorias que poderiam ser feitas ao projeto.
 - Apesar de ter me baseado no padrão MVC, eu não estava preparado para aplicar tal padrão. Assim este projeto tem algumas incoerências quanto ao padrão MVC. Uma melhoria para o projeto seria adequar a Agenda ao padrão corretamente.
 - A agenda poderia ser persistida em um arquivo de texto simples, no estilo CSV (comma-separated values). Para exemplificar de forma simples como manipular arquivos em Ruby.
 - Poderiam ter sido usados `accessors` para permitir o acesso externo aos atributos das classes que necessitam estar visíveis as outras classes, no bom estilo Ruby. Ao invés de usar `getters` e `setters` como Java.

## Referências
Estudando a linguagem, os links que mais me ajudaram foram:
 - [Curso Try Ruby da Code School][try-ruby]: um curso breve e bem elaborado para uma visão geral e introdutória da linguagem Ruby.
 - [Curso de Ruby da tutorialspoints][ruby-tutorialspoints]: curso bem completo que explica vários aspectos da linguagem, incluindo desde o básico como a sintaxe, classes, variáveis e etc. Até aspectos um pouco mais complexos como expressões regulares, programação multi-thread, uso de protocolo SMTP para envio de e-mails dentre outras coisas bem legais. :)

Além disso, dúvidas podem ser facilmente tiradas com buscas rápidas na internet.

[try-ruby]: https://www.codeschool.com/courses/try-ruby
[ruby-tutorialspoints]: http://www.tutorialspoint.com/ruby/ruby_overview.htm


