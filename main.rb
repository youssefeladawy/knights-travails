require_relative 'lib/board'

knight_travalis = Board.new

knight_travalis.knight_moves([0, 0], [1, 2])
puts ''
knight_travalis.knight_moves([0, 0], [3, 3])
puts ''
knight_travalis.knight_moves([3, 3], [0, 0])
puts ''
knight_travalis.knight_moves([1, 1], [7, 7])
