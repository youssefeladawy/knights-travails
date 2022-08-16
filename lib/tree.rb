require_relative 'knight'

class Tree
  attr_accessor :tree, :travels

  def initialize(start, destination)
    @travels = nil
    create_tree(start, destination)
  end

  def create_tree(start, destination)
    
    queue = [Knight.new(start)]
    root = queue.shift

    until root.position == destination
      root.possible_moves.each do |move|
        movement = Knight.new(move, root)
        root.moves.push(movement)
        queue << movement
      end
      root = queue.shift
    end
    @travels = parent_of(root)
  end

  def parent_of(root)
    parents = [root.position]
    until root.parent.nil?
      parents.push(root.parent.position)
      root = root.parent
    end
    parents
  end
end

