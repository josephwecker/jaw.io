math =
  cube: (x) -> x * x * x
  square: (x) -> x * x

startNumber = 2
cubeStartNumber = math.cube(startNumber)
squareStartNumber = math.square(startNumber)
alert "Cube: " + cubeStartNumber
alert "Square: " + squareStartNumber
