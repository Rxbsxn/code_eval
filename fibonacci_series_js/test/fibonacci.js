var expect  = require("chai").expect;
var fibonacci = require("../app/fibonacci");

describe("Fibonacci Series", function() {
  describe("Zero as input", function() {
    it("returns zero", function() {
      var zero = fibonacci.result(0);

      expect(zero).to.equal(0);
    });
  });

  describe("One as input", function() {
    it("returns one", function() {
      var zero = fibonacci.result(1);

      expect(zero).to.equal(1);
    });
  });

  describe("Five as input", function() {
    it('returns five', function() {
      var five = fibonacci.result(5);

      expect(five).to.equal(5)
    });
  });

  describe("Twelve as input", function() {
    it('returns 144', function() {
      var twelve = fibonacci.result(12);

      expect(twelve).to.equal(144);
    })
  })
});
