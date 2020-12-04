class FibonacciController < ApplicationController

    get '/fibonacci' do
        place = params[:place].to_i
        @sequence = fib(place)
        erb :fibonacci
    end

    def fib(place)
        res = []
        a = 0
        b = 1
        
        while b < place do
        res << b         
        a,b = b,a+b
        end
        
        res 
    end

end
