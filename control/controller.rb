require("../model/Contato.rb")
require("../model/Agenda.rb")

class Controller
  def initilize
    @agenda = Agenda.new
  end
    
  def novoContato
    # Lê os dados do novo contato.
    print "Nome do contato: "
    nome = gets
    print "Telefone do contato: "
    telefone = gets
    print "E-mail do contato: "
    email = gets
    
    # Cria o novo contato na agenda
    @agenda.adicionar(Contato.new(nome, telefone, email))
  end
  
  def apagarContato
    # Lê quem será apagado.
    print "Nome de quem será apagado: "
    nome = gets
    
    # Encontra o contato.
    contato = @agenda.encontrar(nome)
    
    # E apaga-o.
    @agenda.remover(contato)
  end
end