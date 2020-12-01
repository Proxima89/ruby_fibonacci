class FibonacciController < ApplicationController

    post '/fibonacci/inspect' do
       @fibonacci = Fibonacci.create(sequence: params[:sequence])
       redirect "/fibonacci/#{@fibonacci.id}"
    end

    get '/fibonacci/:id' do 
        @fibonacci = Fibonacci.find(params[:id])
        erb :fibonacci
    end

end
