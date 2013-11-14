class Agenda
	def initialize
		@contatos = []
	end

	def adicionar(contato)
		@contatos << contato
	end

	def remover(contato)
		@contatos - [contato]
	end

	def encontrar(nome)
		#contatos.each { |contato| return contato if contato.nome == nome }
		selecionados = contatos.select { |contato| contato.nome == nome }
		selecionados.first
	end

	def to_s
		conts = @contatos.map { |item| item.to_s + "\n" }
		conts.to_s	
		#@contatos.map { |item| item.to_s + "\n" }.to_s
	end
end