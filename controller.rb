require "model/Contato.rb"
require "model/Agenda.rb"
require "view/Tela.rb"

class Controller
    def initialize
    	@tela = Tela.new
        @agenda = Agenda.new

        # Para evitar a minha fádiga:
        @agenda.adicionar(Contato.new("Kiko", "123", "kiko@chaves.com"))
        @agenda.adicionar(Contato.new("Madruga", "456", "madruga@chaves.com"))
        @agenda.adicionar(Contato.new("Florinda", "789", "florinda@chaves.com"))
    end

 	def novoContato
 		# Adquire os dados do novo contato.
 		nome = @tela.requerir("nome do novo contato");
 		telefone = @tela.requerir("telefone do novo contato");
 		email = @tela.requerir("e-mail do novo contato");

		# Cria o novo contato na agenda
		@agenda.adicionar(Contato.new(nome, telefone, email))
	end

	def encontrarContato
		# Pega o nome.
 		nome = @tela.requerir("nome do contato");

 		# Busca na agenda.
 		contato = @agenda.encontrar(nome)

 		# Exibe o contato encontrato, se foi encontado algum.
 		if contato == nil
 			@tela.imprimir("[!] Contato não encontrado.")
 		else
 			@tela.imprimir("Contato encontrado: ")
 			@tela.imprimir(contato)
 		end
 	end

	def apagarContato
		# Lê o nome de quem será apagado.
		nome = @tela.requerir("nome do contato a ser apagado")
		
		# E apaga-o.
		@agenda.remover(nome)
	end

	def listarContatos
		@tela.imprimir(@agenda)
	end
end