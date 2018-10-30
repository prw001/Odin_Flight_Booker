airport_codes = ['SFO', 'JFK', 'ATL', 'CHI', 'LAX', 'SEA', 'AUS', 'PHX',
				 'OAK', 'DEN', 'ASE', 'BDL', 'IAD', 'DAB', 'JAX', 'PIE',
				 'TPA', 'SAV', 'HNL', 'BOI', 'IND', 'DSM', 'LEX', 'BTR',
				 'MSY', 'AUG', 'PWM', 'BWI', 'BOS', 'DET', 'GRR', 'LAN',
				 'JAN', 'MCI', 'STL', 'BIL', 'LNK', 'OMA', 'LAS', 'MHT',
				 'ACY', 'TTN', 'ABQ', 'ALB', 'SYR', 'AVL', 'RDU', 'BIS',
				 'CVG', 'CMH', 'CLE', 'OKC', 'PDX', 'ABE', 'MDT', 'PHL',
				 'PVD', 'CHS', 'MYR', 'PIR', 'TRI', 'MEM', 'BNA', 'DAL',
				 'DFW', 'HOU', 'MAF', 'SAT', 'SLC', 'MPV', 'ORF', 'RIC',
				 'GEG', 'CRW', 'GRB', 'MKE', 'CPR', 'JAC']

#airports 

airport_codes.each do |airport_code|
	Airport.create!(code: airport_code)
end

#flights
airports = Airport.all.shuffle

(airport_codes.length - 1).times do |n|
	code = 1000 + n
	depart = airports[n]
	arrive = airports[n + 1]
	date = "#{rand(1..30)}_#{Date::MONTHNAMES[rand(1..12)].slice(0, 3).upcase}_2019"
	duration = "#{rand(0..6)}HR_#{rand(0..59)}MIN"
	Flight.create!(code: code,
				   departs_loc: depart,
				   arrives_loc: arrive,
				   departs_date: date,
				   arrives_date: date,
				   duration: duration)
end

