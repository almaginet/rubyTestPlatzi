buscar_con = ARGV.shift.to_i

File.open('alimentos.txt', 'r') do |f|
  File.open('alimentos.nuevo.txt', 'w') do |f2|
    alimento_id = 1

    f.readlines.each do |linea|
      alimento, agregado = linea.chomp.split(/,/)

      if alimento_id == buscar_con
        f2.puts("#{alimento},#{agregado},#{Time.now}")
      else
        f2.puts("#{alimento},#{agregado},")
      end

      alimento_id += 1
    end
  end

  `mv alimentos.nuevo.txt alimentos.txt`
end