def gamma_fnc(num)

    # base case
    return num if num == 0
    return 1 if num == 1

    # calculates num - 1, without modifying num
    temp_num = num -1

    # recursive step
    temp_num * gamma_fnc(num-1)

end

p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040