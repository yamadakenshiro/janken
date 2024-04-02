puts "じゃんけん..."

def start_game
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    myside_type = gets.to_i
    opponent_type = rand(3)

    puts "ホイ！"
    puts "---------------"

    rsp = ["グー","チョキ","パー"]

    puts "あなた:#{rsp[myside_type]}を出しました"
    puts "相手:#{rsp[opponent_type]}を出しました"
    puts "---------------"

    if myside_type == opponent_type
        puts "あいこで..."
        return true
    
    elsif (myside_type == 0 && opponent_type == 1) || (myside_type == 1 && opponent_type == 2) || (myside_type == 2 && opponent_type == 0)
        $result = "win"
        return false

    elsif (myside_type == 0 && opponent_type == 2) || (myside_type == 1 && opponent_type == 0) || (myside_type == 2 && opponent_type == 1)
        $result ="lose"
        return false

    elsif myside_type == 3
        puts "終了"
        exit

    else
        puts "不正な数値です。0~3を入力してください"
        return true
    end
end

restart_game = true

while restart_game 
    restart_game = start_game
end

def start_game2
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    myside_number = gets.to_i
    opponent_number = rand(3)
    choises = ["上","下","左","右"]

    puts "ホイ！"
    puts "---------------"

    case $result
    when 'win' then
        puts "あなたの指:#{choises[myside_number]}"
        puts "相手の顔:#{choises[opponent_number]}"
    
        if myside_number == opponent_number
            puts "あなたの勝ちです"
            exit

        elsif myside_number != opponent_number
            return true 

        else
            puts "不正な数値です。0~3を入力してください"
            return true
        end

    when 'lose' then
        puts "あなたの顔:#{choises[myside_number]}"
        puts "相手の指:#{choises[opponent_number]}"

        if myside_number == opponent_number
            puts "あなたの負けです"
            exit

        elsif myside_number != opponent_number
            return true

        else
            puts "不正な数値です。0~3を入力してください"
            return true
        end
    end

end

restart_game2 = true

while restart_game2 
    restart_game2 = start_game2
end

puts "---------------"