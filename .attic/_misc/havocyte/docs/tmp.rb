#res = (1...30).map do |h|
#  r = h / 1.61803399
#  [h,r,((r - r.round).abs * 100).round]
#end

#res = res.sort_by{|t| t[2]}

#require 'pp'
#res.each{|r| pp r}


#   ****  34 | 21 | 13 |  8 | 5 | 3 | 2 | 1
#   *     39 | 24 | 15 |  9 |(6)|(4)| 2 |(1)
#   **    42 | 26 | 16 | 10 | 6 |(4)|(2)|(1)
#   ***   47 | 29 | 18 | 11 | 7 | 4 |(3)|(2)
#

gr = 0.6180339887

i = 24

i *= (1 + gr)

while i > 1 do
  puts "#{i.round}\t#{i}"
  i *= gr
end
