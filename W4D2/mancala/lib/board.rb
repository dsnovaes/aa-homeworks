class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new(4, :stone) }
    @cups[6] = []
    @cups[13] = []
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if @cups[start_pos] == []
      raise "Starting cup is empty"
    end
    if !(start_pos.between?(0,5) || start_pos.between?(7,12))
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)

    num_stones = @cups[start_pos].length # get the number of stones to distribute
    @cups[start_pos] = [] # empties the cup at starting position
    ending_index = start_pos + num_stones # defines the ending index

    if start_pos.between?(0,5)
      player_side = 1
    elsif start_pos.between?(7,12)
      player_side = 2
    end
    num_stones.times do |i|

      index = (start_pos+i+1) % 13
      # if (player_side == 1 && index == 13) && (player_side == 2 && index == 6)
      #   puts "cup skipped"
      #   next
      # end

      @cups[index] << :stone
      num_stones -= 1
    end

    next_turn(ending_index)
    render
    if ending_index.between?(0,5)
      
    elsif start_pos.between?(7,12)
      ending_index = 2
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
