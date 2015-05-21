cmd = ARGV.shift

if cmd
  alimento = ARGV.shift

  File.open('alimentos.txt', 'a') do |f|
  	creada = Time.now
    f.puts "#{alimento},#{creada}"
  end

  puts "#{alimento} agregado"
end