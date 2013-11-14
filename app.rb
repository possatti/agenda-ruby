require("model/Contato.rb")
require("model/Agenda.rb")
require("control/controller.rb")

control = Controller.new
control.novoContato

#agenda = Agenda.new
#agenda.adcionar(Contato.new("Lucas", "1234", "lucas@possatti.com"))
#agenda.adcionar(Contato.new("Mateus", "5678", "mateus@possatti.com"))
#puts agenda