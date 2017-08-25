class Calculator
	def add(num1, num2)
		num1 + num2
	end

	def sub(num1, num2)
		num1 - num2
	end

	def multiple(num1, num2)
				num1 * num2
	end
	def multiple_2(num1, num2, num3)
		result1= num1 * num2
		result2= num1 * num3
		result3= num2 * num3
		print result1
		print result2
		print result3
	end

	def val_int(num)
		expect(num.is_a?(Integer)).to be true
	end

	def divide(num1, num2)
		num1 / num2
	end
end
