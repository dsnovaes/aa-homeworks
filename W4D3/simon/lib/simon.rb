require 'colorize'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    if !self.game_over
      show_sequence
      user_sequence = require_sequence
      if user_sequence != self.seq
        self.game_over = true
        game_over_message
      else
        round_success_message
        self.sequence_length += 1
      end
    end
  end

  def show_sequence
    add_random_color
    self.seq.each do |color|
      system("clear")
      case color
        when "red"
          puts (" " + color + " ").red.on_red
          puts (" " + color + " ").white.on_red
          puts (" " + color + " ").red.on_red
          hold
        when "blue"
          puts (" " + color + " ").light_blue.on_light_blue
          puts (" " + color + " ").white.on_light_blue
          puts (" " + color + " ").light_blue.on_light_blue
          hold
        when "green"
          puts (" " + color + " ").green.on_green
          puts (" " + color + " ").black.on_green
          puts (" " + color + " ").green.on_green
          hold
        when "yellow"
          puts (" " + color + " ").yellow.on_yellow
          puts (" " + color + " ").black.on_yellow
          puts (" " + color + " ").yellow.on_yellow
          hold
        else
        puts color
      end
      system("clear")
    end
  end

  def require_sequence
    puts "Type the sequence, divide color by spaces."
    seq_input = gets.chomp.split(" ")
  end

  def add_random_color
    self.seq << COLORS.sample

  end

  def round_success_message
    system("clear")
    puts "Great job!"
    sleep(1)
  end

  def game_over_message
    system("clear")
    puts "YOU LOSE"
    puts "YOU LOSE"
    puts "YOU LOSE"
    puts "You got #{self.seq.count-1} correct answer(s)"
    puts "Correct sequence:"
    self.seq.each do |color|
      case color
      when "red"
        puts (" " + color + " ").white.on_red
      when "blue"
        puts (" " + color + " ").white.on_light_blue
      when "green"
        puts (" " + color + " ").black.on_green
      when "yellow"
        puts (" " + color + " ").black.on_yellow
      else
        puts color
      end
    end

  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end

  private
  def hold
    sleep(1)
    system("clear")
    sleep(0.1)
  end
end

g=Simon.new
g.play