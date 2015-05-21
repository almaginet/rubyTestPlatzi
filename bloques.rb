["Pollo", "Arroz"].each do |alimento| 
 puts "Este es el alimento #{alimento}"
end

def tres_veces
  yield
  yield
  yield
end

def reportar(archivo, alimento) 
  archivo.puts(alimento)
end

def nuestro_reportar(nombre)
  fp = File.open(nombre, 'w')
  yield(fp)
ensure
  fp.close
end

File.open('alimentos.txt', 'w') do |fp|
  tres_veces do
    reportar(fp, 'Broccoli')
  end
end

nuestro_reportar('alimentos.2.txt') do |fp|
  tres_veces { fp.puts("Coliflor") }
end

