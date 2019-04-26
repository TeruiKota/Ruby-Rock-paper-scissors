def line
  puts "-----------------"
end

def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  puts player_hand = gets.to_i
  computer_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  if player_hand == computer_hand
    puts "あいこで..."
    return true
  elsif (player_hand == 0 && computer_hand == 1) || (player_hand == 1 && computer_hand == 2) || (player_hand == 2 && computer_hand == 0)
    puts "あなたの手:#{jankens[player_hand]}、相手の手:#{jankens[computer_hand]}"
    puts "あなたの勝ちです"
    return false
  elsif (player_hand == 0 && computer_hand == 2) || (player_hand == 1 && computer_hand == 0) || (player_hand == 2 && computer_hand == 1)
    puts "あなたの手:#{jankens[player_hand]}、相手の手:#{jankens[computer_hand]}"
    puts "あなたの負けです"
    return false
   else
    puts "入力された値が無効です"
    return false
  end
end

next_game = true

line
puts "最初はグー、じゃんけん..."

while next_game do
  next_game = janken
end

line