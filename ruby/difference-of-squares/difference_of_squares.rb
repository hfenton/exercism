#!/usr/bin/env ruby

class Squares

    def initialize(number)
        @number = number
    end

    def square_of_sum 
        sum = 0
        (1..@number).each { |x| sum+= x }
        sum**2
    end
   
    def sum_of_squares
        sum = 0
        (1..@number).each { |x| sum+= x**2 }
        sum
    end
    
end
