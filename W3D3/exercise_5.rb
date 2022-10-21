def reverse(string)

    # base case
    return string if string.length == 0

    # recursive step
    reverse(string[1..-1]) + string[0]


end

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""