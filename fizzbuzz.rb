class FizzBuzz
	def initialize
		@array = do_it
	end

	def do_it
		(1..100).to_a
	end

	def fizzify 
		for i in (1..34) do
			@array[3*i-1] = "fizz"
		end
		@array
	end

	def buzzed 
		for j in (1..20) do
			@array[5*j-1] = 'buzz'
		end
		@array
	end

	def fizzbuzzify
		for k in (1..6) do
			@array[15*k-1] = 'fizzbuzz'
		end
		@array
	end

	def allfizzbuzz
 		fizzify
 		buzzed
 		fizzbuzzify
 		@array
	end
end

