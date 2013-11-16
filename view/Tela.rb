class Tela
	def imprimir(msg)
		puts msg
	end

	def requerir(msg)
		print " >> Entre com " + msg + ": "
		gets.chomp!	
	end
end