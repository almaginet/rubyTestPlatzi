alimento = {}

alimento[:nombre] = "Broccoli"
alimento[:categoria] = "Vegetal"
alimento[:micronutriente] = "Carbohidrato"
alimento[:cuantos] = 5


puts alimento

puts "Deseo #{alimento[:nombre]} y deme #{alimento[:cuantos]}"
puts 'Deseo #{alimento[:nombre]} y deme #{alimento[:cuantos]}'


alimento = {
  nombre: "Coliflor",
  categoria: "Vegetal"
}

alimento = {
  :nombre => "Espinaca",
  :categoria => "Vegetal"
}

class Fixnum
  def calorias
  	self
  end
end

alimento = {
  "calorias" => 100.calorias
}

puts alimento