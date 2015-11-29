game_results = [
  { par: 5, score: 7 },
  { par: 4, score: 5 },
  { par: 3, score: 3 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 2 },
  { par: 4, score: 5 },
  { par: 5, score: 5 },
  { par: 4, score: 5 },
  { par: 5, score: 7 },
  { par: 4, score: 4 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 4, score: 5 },
  { par: 4, score: 5 },
  { par: 4, score: 4 },
  { par: 3, score: 3 },
  { par: 5, score: 6 }
]

full_score = 0
full_par = 0

game_results.each do |hole|
  full_score += hole[:score]
  full_par += hole[:par]
end

puts "Total Strokes: #{full_score}"
puts "Total Par: #{full_par}"

par_value = full_score - full_par

par_status = ""
unless par_value >= 0
  par_status = "under"
  par_value = par_value * -1
else
  par_status = "over"
end

puts "You were #{par_value} #{par_status} par."
