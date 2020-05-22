def fibs(number, fib_sequence = [])
    number.times do |i|
        if i <= 1
            fib_sequence << i
        else
            fib_sequence << fib_sequence[i-1] + fib_sequence[i-2]
        end
    end
    fib_sequence
end

p fibs(0)
p fibs(1)
p fibs(2)
p fibs(5)
p fibs(9)
p fibs(13)