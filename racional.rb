# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
	attr_reader :a, :b
	
	def initialize(a, b)
		raise unless a.is_a?(Numeric)
		raise unless b.is_a?(Numeric)
		raise unless (b != 0)
			@a, @b = a, b
	end
	
	def to_s
		"#{@a}/#{@b}"
	end
	
	def suma (other)
		comun = @b * other.b
		a1 = @a * other.b
		a2 = other.a * @b
		a3 = a1 + a2
		k = gcd(a3,comun)
		a3 /= k
		comun /= k
		Fraccion.new(a3,comun)
	end
	
	def resta (other)
		comun = @b * other.b
		a1 = @a * other.b
		a2 = other.a * @b
		a3 = a1 - a2
		k = gcd(a3,comun)
		a3 /= k
		comun /= k
		Fraccion.new(a3,comun)
	end
	
	def producto (other)
		a = @a * other.a
		b = @b * other.b
		k = gcd(a,b)
		a /= k
		b /= k
		Fraccion.new(a,b)
	end
	
	def division (other)
		a = @a * other.b
		b = @b * other.a
		k = gcd(a,b)
		a /= k
		b /= k
		Fraccion.new(a,b)
	end
	
end



