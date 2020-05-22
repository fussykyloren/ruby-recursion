def fibs_rec(number, fib_sequence = [0,1])
    return fib_sequence[0] if number == 1
    return fib_sequence if number == fib_sequence.size
    fibs_rec(number, fib_sequence << fib_sequence[-1] + fib_sequence[-2]) if number > 2
end

p fibs_rec(0)
p fibs_rec(1)
p fibs_rec(2)
p fibs_rec(5)
p fibs_rec(9)
p fibs_rec(13)