class Knight
  attr_accessor :position, :possible_moves, :moves, :parent

  @@movement = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [2, 1], [2, -1], [1, 2], [1, -2]]

  def initialize(position, parent = nil)
    @position = position
    @parent = parent
    @moves = []
  end

  def possible_moves(moves = [])
    @@movement.each do |move|
      x = position[0] + move[0]
      y = position[1] + move[1]

      moves.push([x, y]) if x.between?(0, 7) && y.between?(0, 7)
    end
    moves
  end
end