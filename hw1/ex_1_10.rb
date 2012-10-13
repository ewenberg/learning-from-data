require 'csv'

puts "Flipping 1000 fair coins..."

CSV.open(File.join(File.expand_path(File.dirname(__FILE__)), "ex_1_10.csv"), "w") do |csv|
  results = []
  for coin in 0..999 do
    flip_results = []
    for flip in 0..9 do
      flip_results[flip] = (rand < 0.5 ? "T" : "F")
    end
    csv << flip_results
  end

end
