# Implement a function that adds two numbers together and returns their sum in binary. 
# The conversion can be done before, or after the addition.

# The binary number returned should be a string.

def add_binary(a,b)
  #your code here
  binary = a + b
  binary.to_s(2) # Convert um inteiro para string na base 2(base binária)
end