class Alimento
	include Enumerable 


	def initialize()
		@materiales = []
	end

	#PlatziOnRails

	attr_accessor :materiales

	def each &b 
      @materiales.each &b
	end
end

broccoli = Alimento.new
broccoli.materiales << :vitamin
broccoli.materiales << :proteina

broccoli.materiales.each do |a|
  puts a
end

puts broccoli.materiales.find {|b| b == :vidasdtamin}

