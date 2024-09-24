require_relative 'Ninja'

class Uzumaki < Ninja
  attr_accessor :tem_biju

  def initialize(nome, aldeia)
    super(nome, aldeia)
    @habilidade = 7
  end

  def chakra_infinito
    puts 'Você é um Uzumaki, então tem chakra infinito'
  end

  def habilidade
    @habilidade = 7
  end
end