buscar_con = ARGV.shift.to_i

File.open('alimentos.txt', 'r') do |f|
  alimento_id = 1

  f.readlines.each do |linea|
     registro = linea.chomp.split(/,/)
     alimento = registro[0]
     agregado = registro[1]
     
     if alimento_id == buscar_con
     	puts "Esto es lo que debemos marcar comprado"
     end

     alimento_id += 1
  end
end
