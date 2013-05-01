module("Simple Math Lib");

test('Addition works as expected', function(){
  var actual = simple_math_lib.add(2,2);
  equal(actual, 4, '2 + 2 should equal 4')
});

test('Subtraction works as expected', function(){
  var actual = simple_math_lib.subtract(3,2);
  equal(actual, 1, '3 - 2 should equal 1')
});