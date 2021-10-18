def Head(x) :
  ''' Head is a function that takes an array as the input and returns its first value as the output '''
  if len(x) > 0 :
    return x[0]
  else : 
    return None
def Last(x) :
  '''Last is a function that takes an array as the input and returns its  last value as the output'''
  if len(x) > 0 :
    return x[-1]
  else : 
    return None
def Take(n,x) :
  '''Truncate the Array x from the N-th position, return x if a mismatch happens''' 
  if n < len(x) :
    return x[:n]
  else : 
    return x
def Drop(n,x) :
  '''Drop the first n elements from the Array x, return x if a mismatch happens'''
  if n<len(x) :
    return x[n:]
  else : 
    return x
def Access(n,x) :
  '''Access the n+1th element in array x''' 
  if n<len(x) and n>-1 :
    return x[n]
  else :
    return None
def Min(x) :
  '''Return the minimum of the array'''
  if len(x) > 0 :
    return min(x)
  else :
    return None
def Max(x) :
  '''return the maximum of the array'''
  if len(x) > 0 :
    return max(x)
  else :
    return None
def Reverse(x) :
  '''return the reverse of the array'''
  if len(x) > 0 :
    return list(reversed(x))
  else : 
    return None
def Sorted(x) :
  '''return the sorted array'''
  return sorted(x)
def Sum(x) :
  '''return the sum of the elements of an array'''
  return sum(x)
def Map(f,x) :
  '''apply function f to every element in x''' 
  x_m = []
  for i in x :
    x_m.append(f(i))
  return x_m
def Filter(f,x) :
  '''return the elements satisfying the predicate f''' 
  x_f = []
  for i in x :
    if f(i) : 
      x_f.append(i)
  return x_f
def Count(f,x) :
  '''return the number of elements satisfying the predicate f'''
  count = 0
  for i in x :
    if f(i) :
      count += 1
  return count
def ZipWith(f,x,y) :
  '''apply the the function f to tuples in the form of (x[i],x[j])'''
  x_c = []
  result = list(zip(x,y))
  for i,j in result :
    x_c.append(f(i,j))
  return x_c
def ScanL1(f,x) :
  '''Applies a binary operator to a list in a two tuple manner, returns a list of the same size as x'''
  y = [x[0]]
  for i in range(len(x)-1) :
    y.append(f(y[i],x[i+1]))
  return y
def BinSum(n,z) :
  return n+z
def BinMinus(n,z) :
  return n-z
def BinMult(n,z) :
  return n*z
def BinMax(n,z) :
  return max((n,z))
def BinMin(n,z) :
  return min((n,z))
def Plus(n) :
  return n+1
def Minus(n) :
  return n-1
def Mult2(n) :
  return n*2
def Div2(n) :
  return n/2
def Negate(n) :
  return n*(-1)
def Pow2(n) :
  return n**2
def Mult3(n) :
  return n*3
def Div3(n) :
  return n/3
def Mult4(n) :
  return n*4
def Div4(n) :
  return n/4
def Pos(n) :
  if n > 0 :
    return True
  else : 
    return False
def Neg(n) :
  if n < 0 :
    return True
  else :
    return False
def Even(n) :
  if n%2 == 0 :
    return True
  else :
    return False
def Odd(n) :
  if n%2 == 1 :
    return True
  else :
    return False