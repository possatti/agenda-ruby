class Contato
	def initialize(nome, telefone, email)
		@nome = nome
		@telefone = telefone
		@email = email
	end

	def getNome
		@nome
	end

	def getTelefone
		@telefone
	end

	def getEmail
		@email
	end

	def to_s
		#@name.to_s + ": " + @number.to_s + ", " + @email.to_s
		"NOME: #{@nome};\t TEL.: #{@telefone};\t E-MAIL: #{@email};"
	end
end