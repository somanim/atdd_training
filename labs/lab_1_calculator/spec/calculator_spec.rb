require 'rspec'
require 'calculator'

describe Calculator do
	describe 'addition' do
		it 'does not care about the order numbers are added' do
			calc = Calculator.new
			expect(calc.add(5, 9)).to eq 14
      calc.
			expect(calc.add(9, 5)).to eq 14
		end
		it 'does not change when you add 0' do
			calc = Calculator.new
			expect(calc.add(12, 0)).to eq 12
		end
	end

	describe 'subtraction' do
		it 'Should return in integer' do
			calc = Calculator.new
      result=calc.sub(5, 7)
			expect(result.is_a?(Integer)).to be true
    end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			expect(calc.sub(12, 0)).to eq 12
    end
		it 'does change when you subtract with the same number' do
			calc = Calculator.new
			expect(calc.sub(12, 12))
    end
		it 'does not change when you subtract 0' do
			calc = Calculator.new
			result=calc.sub(5, 7)
      print result

    end

  end
	describe 'multiple' do
		it 'should return in integer' do
			calc = Calculator.new
			result=calc.multiple(10, 2)
			expect(result.is_a?(Integer)).to be true

      expect(calc.multiple(20, 5)).to eq 100
		end
		it 'multiplying an integer by one should return the first integer' do
			calc = Calculator.new
			expect(calc.multiple(12, 1)).to eq 12
		end
		it 'multiplying an integer by zero should return zero' do
			calc = Calculator.new
			expect(calc.multiple(12, 0)).to eq 0
      calc.multiple_2(5,3,2)
    end

  end

	describe 'divide' do
		it 'should return in integer' do
			calc = Calculator.new
			result=calc.divide(10, 2)
			expect(result.is_a?(Integer)).to be true
			expect(calc.divide(2020, 5)).to eq 4
		end
		it 'dividing an integer by one should return the first integer' do
			calc = Calculator.new
			expect(calc.divide(12, 1)).to eq 12
		end
		it 'dividing an integer by zero should return zero' do
			calc = Calculator.new
			expect(calc.divide(12, 0)).to eq 0
		end
	end
end



