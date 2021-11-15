names = ["佐藤 太郎", "鈴木 次郎", "高橋 花子"]
0.upto(2) do |idx|
    Friend.create(
        name: names[idx]
    )
end