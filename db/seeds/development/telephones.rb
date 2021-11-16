fnames = ["伊藤", "加藤", "工藤", "近藤", "遠藤"]
gnames = ["春男", "夏子", "秋男", "冬子"]
names = []

0.upto(7) do |idx|
    names[idx] = "#{fnames[idx % 5]} #{gnames[idx % 4]}"
end

def random_number_generator(n)
    ''.tap { |s| n.times { s << rand(0..9).to_s } }
end

for name in names do
    friend = Friend.find_by(name: name)
    0.upto(4) do |idx|
      Telephone.create(
          friend_id: friend.id,
          number: random_number_generator(3) + "-" + random_number_generator(4) + "-" + random_number_generator(4),
          cellphone: idx % 2 == 0 ? true : false
      )
    end
end