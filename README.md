# knights-travails
knight_travails is a function that returns the shortest path a knight can travel from a given start position to a destination on the normal 8x8 chess board  
The function is implemented by building a tree that contains all the moves possible from start to destination and then we use a search algorithm to traverse this tree (I used BFS but DFS can also be implemented although I believe that it requires a couple of more checks to keep the program from entering an infinite loop)
