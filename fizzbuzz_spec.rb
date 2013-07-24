require "./fizzbuzz"

describe FizzBuzz do
	it "is not nil" do
		expect(subject).not_to be_nil
	end

	it "returns an array" do
		expect(subject.do_it).to be_instance_of(Array)
	end

	it "first element is one" do
		expect(subject.do_it[0]).to eql(1)
	end

	it "includes numbers 1-100" do
		expect(subject.do_it).to include(*(1..100).to_a)
	end

	it "makes third element equal fizz" do
		expect(subject.fizzify[2]).to eql('fizz')
	end

	it "makes the fifth element equal to buzz" do
		expect(subject.buzzed[4]).to eql('buzz')
	end

	it "makes every multiple of three include fizz" do
		for i in (1..34) do
			expect(subject.fizzify[3*i-1]).to eql('fizz')
		end
	end

	it "makes every multiple of 5 buzz instead" do
		for j in (1..20) do  
			expect(subject.buzzed[5*j-1]).to eql('buzz')
		end
	end

	it "makes every multiple of fifteen 'fizzbuzz' instead" do 
		for k in (1..6) do 
			expect(subject.fizzbuzzify[15*k-1]).to eql('fizzbuzz')
		end
	end

	it "is an array" do 
		expect(subject.allfizzbuzz).to be_instance_of(Array)
	end

	it "inserts 'fizz', 'buzz', and 'fizzbuzz' where appropriate" do 
		for k in (1..6) do 
			expect(subject.allfizzbuzz[15*k-1]).to eql('fizzbuzz')
		end

		for j in (1..20) do 
			if (j % 3 != 0)
				expect(subject.allfizzbuzz[5*j-1]).to eql('buzz')
			end
		end

		for i in (1..34) do
			if (i % 5 != 0)
				expect(subject.allfizzbuzz[3*i-1]).to eql('fizz')
			end
		end
	end

end