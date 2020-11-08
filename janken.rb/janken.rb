puts "数字を入力してください。"
puts "0:グー\n1:チョキ\n2:パー"
class Player
  def hand
    input_hand = gets.chomp
    while true
      if input_hand == "0" or input_hand == "1" or input_hand == "2"
        break
      else
        puts "0〜2の数字を入力してください。"
        return true
      end
    end
    input_hand = input_hand.to_i
    program_hand = rand(3)
    jankens = ["グー", "チョキ","パー"]
    puts "相手の手は#{jankens[program_hand]}です。"
    if input_hand == program_hand
        puts "あいこ"
        return true
    elsif (input_hand == 0 && program_hand == 1) || (input_hand == 1 && program_hand == 2) || (input_hand == 2 && program_hand == 0)
        puts "あなたの勝ちです"
        return false
    else
        puts "あなたの負けです"
        return false
    end
  end
end

player = Player.new
next_game = true
while next_game
  next_game = player.hand
end
