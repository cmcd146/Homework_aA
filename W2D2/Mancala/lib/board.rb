require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = []
    2.times do
      6.times do
        @cups << place_stones
      end
      @cups << Array.new()
      @name1 = name1
      @name2 = name2
    end

  end

  def place_stones
    [:stone,:stone,:stone,:stone]
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(0,13)
    raise "Starting cup is empty" unless @cups[start_pos].length > 0
    true
  end

  def make_move(start_pos, current_player_name)
    ending_cup_idx = start_pos
    until next_turn(ending_cup_idx) == :switch || next_turn(start_pos) == :prompt
      stones = @cups[start_pos]
      ending_cup_idx = start_pos
      @cups[start_pos] = []
      until stones.empty?
        start_pos += 1 unless start_pos == 13
        start_pos = 0 if start_pos == 13
        start_pos += 1 if current_player_name == @name1 && start_pos == 13 || current_player_name == @name2 && start_pos == 6
        @cups[start_pos] += [stones.pop]
      end
    end
    #render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
      return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
      return ending_cup_idx if @cups[ending_cup_idx].length > 0
      :switch
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
