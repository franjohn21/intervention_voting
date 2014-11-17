before do 
	response.headers['Access-Control-Allow-Origin'] = "*"
end


get '/api/v0/cardpair' do 
	cards = Card.where(:created_by => "Intervention").to_a
	card1 = cards.sample
	cards.delete(card1)
	card2 = cards.sample
	content_type :json
	{card1: card1, card2: card2}.to_json
end

post '/api/v0/cardpair' do 
	puts "Params: #{params}"
	winner = Card.find(params[:winner_id])
	loser = Card.find(params[:loser_id])
	CardPair.create(:card => winner, :loser => loser, :both_suck => params[:both_suck])
end

post '/api/v0/newcard' do 
	Card.create(params)
end

after do
  ActiveRecord::Base.connection.close
end