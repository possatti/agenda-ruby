#!/usr/bin/ruby

require "controller.rb"

controlador = Controller.new

begin
	puts
	puts "Agenda:"
	puts " [n] - Novo contato"
	puts " [e] - Encontrar contato"
	puts " [a] - Apagar um contato"
	puts " [l] - Listar contatos registrados"
	puts " [s] - Sair"
	puts
	print "Selecione a operação: "
	escolha = gets.chomp.downcase

	case escolha
		when "n"
			controlador.novoContato
		when "e"
			controlador.encontrarContato
		when "a"
			controlador.apagarContato
		when "l"
			controlador.listarContatos
		when "s"
			break
		else
			puts " [!] Opção inválida."
	end
	
end while escolha != 0

puts "Terminando a aplicação."
