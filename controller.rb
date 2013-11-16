require "model/Contato.rb"
require "model/Agenda.rb"
require "view/Tela.rb"

class Controller
    def initialize
    	@tela = Tela.new
        @agenda = Agenda.new

        # Para evitar a minha fádiga:
        @agenda.adicionar(Contato.new("Kiko", "456", "kiko@chaves.com"))
        @agenda.adicionar(Contato.new("Madruga", "123", "madruga@chaves.com"))
        @agenda.adicionar(Contato.new("Florinda", "456", "florinda@chaves.com"))
    end

 	def novoContato
 		# Adquire os dados do novo contato.
 		nome = @tela.requerir("nome do novo contato");
 		telefone = @tela.requerir("telefone novo contato");
 		email = @tela.requerir("e-mail do novo contato");

		# Cria o novo contato na agenda
		@agenda.adicionar(Contato.new(nome, telefone, email))
	end

	def apagarContato
		# Lê o nome de quem será apagado.
		nome = @tela.requerir("nome do contato a ser apagado")
		
		# Encontra o contato.
		#contato = @agenda.encontrar(nome)
		
		# E apaga-o.
		@agenda.remover(nome)
	end

	def listarContatos
		@tela.imprimir(@agenda)
	end
end