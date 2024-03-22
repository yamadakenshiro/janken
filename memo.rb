require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集)"
memo_type = gets.to_i

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    puts "メモしたい内容を記入してください"
    puts "完了したらCtrl + Dをおします"
    input = STDIN.read
    memo = input.chomp

    CSV.open("#{file_name}.csv","w") do |csv|
    csv << [memo]
end

elsif memo_type == 2
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.chomp
    puts "編集内容を入力してください"
    puts "完了したらCtrl + Dをおします"
    input = STDIN.read
    memo = input.chomp

    CSV.open("#{file_name}.csv","a") do |csv|
    csv << [memo]
end

else
    puts "不正な数値です。1か2を入力してください"
end