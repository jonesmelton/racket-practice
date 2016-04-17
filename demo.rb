def triple_evens(array)
  array.map do |number|
    number * 3
        end
      .select do |number|
          number if number.even?
        end
              .inject do |sum, number|
                  sum += number
              end
end

print triple_evens([1, 2, 3, 2])
