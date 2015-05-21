module PapaDelmont
	class Alimento
    def initialize(desc, creacion, compra = nil)
      @desc, @creacion, @compra = desc, creacion, compra
    end

    def creacion
       @creacion
    end

    def desc
    	@desc
    end

    def comprado?
    	@compra
    end

    def compra
    	@compra
    end

    def to_s
      @desc
    end
	end

	class App
    def initialize
    	@vista = nil
    end

    def vista=(v)
      @vista = v
    end
		def lista
			@alimentos = []

			File.open('alimentos.txt', 'r') do |f|
				identificador = 1

				f.readlines.each do |linea|
					@alimentos << Alimento.new(*linea.chomp.split(/,/))

					identificador += 1
				end
			end

			@vista.alimentos
		end
	end

	class Cli
		def lista
			File.open('alimentos.txt', 'r') do |f|
				identificador = 1

				f.readlines.each do |linea|
					alimento = Alimento.new(*linea.chomp.split(/,/))

					printf("%3d - %s\n", identificador, alimento)
					printf("  Agregado : %s\n", alimento.creacion)
					printf("  Comprado : %s\n", alimento.compra) if alimento.comprado?

					identificador += 1
				end
			end
		end

		def empezar
			begin
				cmd = ARGV.shift.to_sym

				case cmd
				when :nuevo
					puts "aca va nuevo"
				when :lista
					lista
				when :comprar
					puts "aca va comprar"
				end

			rescue
				puts "decir ayuda"
			end
			
		end
	end
end

p = PapaDelmont::Cli.new
p.empezar