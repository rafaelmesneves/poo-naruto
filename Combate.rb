require_relative 'Uzumaki'
require_relative 'Uchiha'
require_relative 'Ninja'


class Combate

  def initialize(ninja1, ninja2)
    @ninja1 = ninja1
    @ninja2 = ninja2
  end

  def ordem_de_ataque_inicial
    loop do
      sorte_ninja1 = rand(1..6)
      sorte_ninja2 = rand(1..6)

      if sorte_ninja1 > sorte_ninja2
        return [@ninja1, @ninja2]
        puts "O primeiro ataque será de #{@ninja1.nome}"
      elsif sorte_ninja2 > sorte_ninja1
        return [@ninja2, @ninja1]
        puts "O primeiro ataque será de #{@ninja2.nome}"
      else 
        puts "Ninguém com sorte ainda para começar a luta"
      end
    end
  end

  def aleatoriedade_golpe(ninja)
    ataques = ninja.ataques.values
    golpes = ["soco", "chute", "kunai", "ataque_especial"]
    golpe = ataques.sample
    golpe_index = ataques.index(golpe)
    golpe_nome = golpes[golpe_index]

    [golpe_index, golpe_nome]
  end

  def habilidade_combate(ninja)
    ninja.habilidade + rand(1..6)
  end

  def dano_total(ninja, golpe)
    golpes = {0 => "Soco", 1 => "Chute", 2 => "Kunai", 3 => "Ataque Especial"}

    ataque = case golpe
    when 0 then 1
    when 1 then 2
    when 2 then 3
    when 3 then 4
    else 1
    end
    puts "#{ninja.nome} usou #{golpes[golpe]}!"
    habilidade_combate(ninja) * ataque
  end

  def iniciar_batalha
    puts "Nessa batalha se encontram os ninjas: #{@ninja1.nome} da #{@ninja1.aldeia} e #{@ninja2.nome} da #{@ninja2.aldeia}"

    atacante, defensor = ordem_de_ataque_inicial

    loop do
      golpe_atacante, golpe_nome = aleatoriedade_golpe(atacante)

      dano = dano_total(atacante, golpe_atacante)
      defensor.pontos_de_vida -= dano
      puts "#{defensor.nome} sofreu #{dano} de dano. Vida restante: #{defensor.pontos_de_vida}"

      break if defensor.pontos_de_vida <= 0

      atacante, defensor = defensor, atacante
    end

    if @ninja1.pontos_de_vida <= 0
      puts "#{@ninja1.nome} foi derrotado!"
    elsif @ninja2.pontos_de_vida <= 0
      puts "#{@ninja2.nome} foi derrotado!"
    end
  end
end

sasuke = Uchiha.new("Sasuke Uchiha", "Aldeia da Folha")
naruto = Uzumaki.new("Naruto Uzumaki", "Aldeia da Folha")

combate = Combate.new(naruto, sasuke)
combate.iniciar_batalha
  


