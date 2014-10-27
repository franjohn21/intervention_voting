File.open(APP_ROOT.join('db','card_list.txt')).each do |line|
	card = Card.create(:content => line.chomp, :created_by => "Intervention")
end

20.times do |x|
	cards = Card.all.to_a
	winner = cards.sample
	cards.delete(winner)
	loser = cards.sample
	winner.losers << loser 
end