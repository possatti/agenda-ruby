require "model/Contato.rb"
require "model/Agenda.rb"
require "view/Tela.rb"

class Controller
    def initialize
    	@tela = Tela.new
        @agenda = Agenda.new
    end

 	def novoContato
 		# Adquire os dados do novo contato.
 		nome = @tela.requerir("Nome do novo contato: ");
 		telefone = @tela.requerir("Nome do telefone contato: ");
 		email = @tela.requerir("Nome do email contato: ");

		# Cria o novo contato na agenda
		@agenda.adicionar(Contato.new(nome, telefone, email))
	end

	def apagarContato
		# Lê o nome de quem será apagado.
		nome = @tela.requerir("Nome do contato a ser apagado:")
		
		# Encontra o contato.
		contato = @agenda.encontrar(nome)
		
		# E apaga-o.
		@agenda.remover(contato)
	end

	def listarContatos
		@tela.imprimir(@agenda)
	end
end