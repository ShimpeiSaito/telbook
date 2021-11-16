fnames = ["伊藤", "加藤", "工藤", "近藤", "遠藤"]
gnames = ["春男", "夏子", "秋男", "冬子"]

0.upto(7) do |idx|
    Friend.create(
        name: "#{fnames[idx % 5]} #{gnames[idx % 4]}"
    )
end