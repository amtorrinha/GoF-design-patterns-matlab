% GameElementFactories
kp = KittiesAndPuzzles();
kd = KillAndDismember();

% Game Environments
g1 = GameEnvironment(kp);
g2 = GameEnvironment(kd);

g1.play();
g2.play();
