class Alimento

  include Enumerable

  def initialize(desc, creacion, compra = nil)
    self.desc = desc
    self.creacion = creacion
    self.compra = compra

    @materiales = []
  end

  def each &b
    @materiales.each &b
  end

  def materiales 
    @materiales
  end

  def agregar_material(material)
    @materiales << material
  end

 
  attr_accessor :creacion, :desc

  def compra
  	@compra
  end

  def compra=(otro)
  	@compra = otro
  end
end

[1,2,3].each {|n| puts n}

broccoli = Alimento.new('Broccoli', Time.now)

broccoli.agregar_material :vitaminaC
broccoli.agregar_material :vitaminaB
broccoli.agregar_material :hierro
broccoli.agregar_material :proteina

#broccoli.each do |material|
#  puts "#{material}"
#end

#puts broccoli.find {|m| m == :proteina}
#puts broccoli.find {|m| m == :grasa } || puts("no hay")

module MiModulo
	def saludar
		#puts "Hola Freddy"
	end
end

include MiModulo

saludar
