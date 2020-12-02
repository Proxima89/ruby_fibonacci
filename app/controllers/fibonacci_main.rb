
class FibonacciMain

    def fib(places)

            a = 0
            b = 1
        
            while b < places do
                puts b
            
                a,b = b,a+b
            end
        fib(1000)
    end
    
end
