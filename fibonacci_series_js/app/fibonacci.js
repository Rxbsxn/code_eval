exports.result = function(number) {
  return fibonacci(number)
};

fibonacci = (number) => {
  if(number == 0 || number == 1) {
    return number
  } else {
    return fibonacci(number - 1) + fibonacci(number - 2);
  }
};
