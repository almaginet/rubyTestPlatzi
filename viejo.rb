require './papa_delmont'

class Cli
	def alimentos_leidos
		@app.alimentos.each do |identificador, alimento|
			printf("Código(%d) %s\n", identificador, alimento.desc)
			printf(" Agregado : %s\n", alimento.creacion)
			printf(" !Comprado! %s\n", alimento.compra) if alimento.comprado?
		end
	end

	def initialize
		@app = PapaDelmont::PapaDelmontApp.new
		@app.vista = self
	end

	def ejecutar(argumentos = ARGV)
		cmd = argumentos.shift.to_sym

		case cmd
		when :nuevo
			puts "nuevo"
		when :comprar
			puts "comprar"
		when :lista
			@app.lista
		end
	end
end

ui = Cli.new
ui.ejecutar