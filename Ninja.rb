require_relative 'MundoNinja'

class Ninja < MundoNinja
  attr_accessor :nome, :aldeia, :idade, :patente_ninja, :pontos_de_vida

  def initialize(nome, aldeia)
    @nome = nome
    @aldeia = aldeia
    @pontos_de_vida = 100
  end
  
  ACADEMICO = 'academico'
  GENIN = 'genin'
  CHUNIN = 'chunin'
  JOUNIN = 'jounin'

  def patente_ninja
    case @patente_ninja
    when ACADEMICO
      'Estudante da Academia'
    when GENIN
      'Genin'
    when CHUNIN
      'Chunin'
    when JOUNIN
      'Jounin'
    else
      'Olha o Kage ai'
    end
  end

  def ataques
    { soco: 1, chute: 2, kunai: 3, ataque_especial: 4 }
  end
end