require_relative 'Uzumaki'
require_relative 'Uchiha'

naruto = Uzumaki.new
naruto.nome = 'Naruto Uzumaki'
naruto.aldeia = 'Aldeia da Folha'
naruto.idade = 17
naruto.tem_biju = true
naruto.estado_ninja = 'País do Fogo'
puts "Nome: #{naruto.nome}"
puts "Aldeia: #{naruto.aldeia}"
puts "Idade: #{naruto.idade}"
puts "Nasceu no país ninja: #{naruto.estado_ninja}"
naruto.patente_ninja = Ninja::GENIN
puts "O nível atual é: #{naruto.patente_ninja}"
puts "Tem Biju?: #{naruto.tem_biju}"
naruto.chakra_infinito

puts

sasuke = Uchiha.new
sasuke.nome = 'Sasuke Uchiha'
sasuke.aldeia = 'Aldeia da Folha'
sasuke.idade = 18
sasuke.estado_ninja = 'País do Fogo'
puts "Nome: #{sasuke.nome}"
puts "Aldeia: #{sasuke.aldeia}"
puts "Idade: #{sasuke.idade}"
puts "Nasceu no país ninja: #{sasuke.estado_ninja}"
sasuke.patente_ninja = Ninja::GENIN
puts "O nível atual é: #{sasuke.patente_ninja}"
sasuke.nivel_do_sharingan = Uchiha::NIVEL_4
puts "O nível atual do sharingan é: #{sasuke.nivel_do_sharingan}"
sasuke.sharingan_ativado = true
puts "O Sharingan está ativo?: #{sasuke.sharingan_ativado}"