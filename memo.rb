require "csv"
# CSVファイルを扱うためのライブラリを読み込んでいます
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
# ユーザーの入力値を取得し、数字へ変換しています
# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
memo_type = gets.to_i 

if memo_type == 1
puts "拡張子を除いたファイル名を入力してください"
memo_name = gets.chomp

puts "メモを入力してください"
puts "入力後にctrl+Dを入力してください"

CSV.open('#{memo_name}.csv','w') do |csv|
memo = STDIN.read
csv << ["#{memo}"]

end
elsif memo_type == 2 

puts "拡張子を除いたファイル名を入力してください"
memo_name = gets.chomp
puts "メモを入力してください"
puts "入力後にctrl+Dを入力してください"

CSV.open('#{memo_name}.csv','a') do |csv|
memo = STDIN.read
csv << ["#{memo}"]
end
# else
# puts  "１か２を入力してください"
end

