# Reverse the text of the string without using the reverse method
class Reversing

def reverse (str)
  split_s = str.split("")
  reversed = []
  str.size.times { reversed << split_s.pop }
  puts reversed.join
end

  NewInstance=Reversing.new
  NewInstance.reverse("Preethi")
  NewInstance.reverse("Monika")
end