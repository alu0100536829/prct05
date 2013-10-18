# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

	def setup
		@f1 = Fraccion.new(3,4)
		@f2 = Fraccion.new(5,6)
	end
 
	def teardown
		## No hace nada
	end
 
	def test_simple
		assert_equal("3/4", Fraccion.new(3,4).to_s)
		assert_equal("19/12", @f1.suma(@f2).to_s)
		assert_equal("-1/12", @f1.resta(@f2).to_s)
		assert_equal("5/8", @f1.producto(@f2).to_s)
		assert_equal("9/10", @f1.division(@f2).to_s)
	end

	def test_typecheck
		assert_raise(RuntimeError) { Fraccion.new('a',1) }
	end

	def test_failure
		assert_equal("19/11", @f1.suma(@f2).to_s, "La suma no funciona" )
	end
 
end

