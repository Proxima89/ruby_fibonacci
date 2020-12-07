class FibonacciController < ApplicationController

    get '/fibonacci' do
      place = params[:place].to_i
      sequence = fib(place)
      @table = generate_table(sequence)
      erb :fibonacci
    end
  
    def fib(place)
      return [] if place <= 0
  
      a = 0
      b = 1
      res = [a]
  
      while res.length < place do
        res << b
        a,b = b, a+b
      end
  
      res 
    end
  
    def generate_table(sequence)
      return [] if sequence.length.zero?
  
      cols = []
      (sequence.length + 1).times do |row|
        row_data = []
        (sequence.length + 1).times do |col|
          row_data << generate_table_element(row, col, sequence)
        end
        cols << row_data
      end
      cols
    end
  
    def generate_table_element(row, col, sequence)
      return '_' if row.zero? && col.zero?
      return sequence[col - 1] if row.zero?
      return sequence[row - 1] if col.zero?
  
      sequence[col - 1] * sequence[row - 1]
    end
  
  end
