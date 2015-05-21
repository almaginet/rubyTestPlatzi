File.open('alimentos.txt', 'r') do |f|
  f.readlines.each do |alimento|
    puts alimento
  end
end