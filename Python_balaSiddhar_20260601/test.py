#using class
class Operations:
    def __init__(self):#constructor
        print("Welcome")
    
    def sum(self,a,b):
        c=a+b
        print(c)
    
    def mul(self,a,b):
        c=a*b
        print(c)

    def sub(self,a,b):
        c=a-b
        print(c)

t=Operations() # creating the object
t.sum(3,5)
t.mul(5,6)
t.sub(40,50)
