class Agenda
	def initialize
		@contatos = []
	end

	def adicionar(contato)
		@contatos << contato
	end

	def remover(nome)
		@contatos.reject! { |contato| contato.getNome == nome }
	end

	def encontrar(nome)
		selecionados = @contatos.select { |contato| contato.getNome == nome }
		#$puts selecionados
		selecionados.first

		# Solução de uma tacada só:
		#contatos.each { |contato| return contato if contato.nome == nome }
	end

	def to_s
		conts = @contatos.map { |item| item.to_s + "\n" }
		conts.to_s

		# Solução de uma tacada só:
		#@contatos.map { |item| item.to_s + "\n" }.to_s
	end
end