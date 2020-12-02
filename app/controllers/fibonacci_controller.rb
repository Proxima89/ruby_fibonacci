
class FibonacciController < ApplicationController
    

    post '/fibonacci/inspect' do
       @fibonacci = Fibonacci.create(sequence: params[:sequence])
       redirect "/fibonacci/#{@fibonacci.id}"
    end

    get '/fibonacci/:id' do 
        @fibonacci = Fibonacci.find(params[:id])

        def fib(places)
            a = 0
            b = 1    
            while b < places do
                puts b         
                a,b = b,a+b
            end   
        end

        erb :fibonacci
    end
    
end
