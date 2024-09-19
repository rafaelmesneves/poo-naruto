require_relative 'MundoNinja'

class Ninja < MundoNinja
  attr_accessor :nome, :aldeia, :idade, :patente_ninja


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

end