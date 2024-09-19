require_relative 'Ninja'

class Uchiha < Ninja
  attr_accessor :nivel_do_sharingan, :sharingan_ativado

  NIVEL_1 = 'nivel_1'
  NIVEL_2 = 'nivel_2'
  NIVEL_3 = 'nivel_3'
  NIVEL_4 = 'nivel_4'

  def nivel_do_sharingan
    case @nivel_do_sharingan
    when 'nivel_1'
      'Sharingan Desperto (1 Tomoe)'
    when 'nivel_2'
      'Sharingan em Desenvolvimento (2 Tomoe)'
    when 'nivel_3'
      'Sharingan Maduro (3 Tomoe)'
    when 'nivel_4'
      'Mangekyou Sharingan'
    else
      'Mangekyou Sharingan Eterno'
    end
  end

end