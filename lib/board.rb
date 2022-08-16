require 'pry-byebug'
require_relative 'knight'
require_relative 'tree'

class Board

  def knight_moves(start, destination)
    tree = Tree.new(start, destination)
    display_moves(tree, start, destination)
  end

  def display_moves(tree, start, destination)
    puts "To get from the #{start} position to the #{destination} position you must follow this path:"
    p tree.travels.reverse
  end
end
