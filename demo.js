function tripleEvens(array) {
  array.map(function(number) {
    return number * 3;
  }).filter(function(number) {
    return number.isEven;
  }).reduce(function(sum, number) {
    sum + number;
  });
}

tripleEvens([1, 2, 3, 2])
