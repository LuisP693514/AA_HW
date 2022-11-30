class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    
    until @game_over
      take_turn
    end

    game_over_message
    reset_game


  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message
    @sequence_length += 1

  end

  def show_sequence
    add_random_color

  end

  def require_sequence
    @seq.each {|color| 
  
      p 'Type the colors (one at a time) in the order that they appeared'
      user_input = gets.chomp.downcase

      if color == user_input
        next
      else
        @game_over = true
      end
    
    }

  end

  def add_random_color

    @seq << COLORS.sample

  end

  def round_success_message
    p 'SUCCESS!'

  end

  def game_over_message
    self.round_success_message

  end

  def reset_game
    @seq = []
    @game_over = false
    @sequence_length = 1

  end
end
