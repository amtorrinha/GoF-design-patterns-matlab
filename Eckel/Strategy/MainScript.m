solver = MinimaSolver(LeastSquares());
line = {1.0, 2.0, 1.0, 2.0, -1.0, 3.0, 4.0, 5.0, 4.0};
disp(solver.minima(line));
solver.changeAlgorithm(Bisection());
disp(solver.minima(line));
