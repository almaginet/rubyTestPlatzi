File.open('alimentos.txt', 'r') do |f|
  identificador = 1

  f.readlines.each do |linea|
    alimento, agregado, comprado = linea.chomp.split(/,/)

     printf("%3d - %s\n", identificador, alimento)
     printf("  Agregado : %s\n", agregado)
     printf("  Comprado : %s\n", comprado) if comprado

     identificador += 1
  end
end

#PlatziOnRails
