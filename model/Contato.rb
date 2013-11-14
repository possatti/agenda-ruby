class Contato
	def initialize(name, number, email)
		@name = name
		@number = number
		@email = email
	end

	def to_s
		#@name.to_s + ": " + @number.to_s + ", " + @email.to_s
		"#{@name}: #{@number}, #{@email}"
	end
end