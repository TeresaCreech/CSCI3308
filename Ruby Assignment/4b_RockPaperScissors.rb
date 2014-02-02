# Part4b: Rock Paper Scissors

class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)
	# Winning moves
	gamewinning = { "r" => "s", "s" => "p", "p" => "r" }
	
	game[0][1] = game[0][1].downcase
	game[1][1] = game[1][1].downcase

	# Make sure there is the correct amount of players
	raise WrongNumberOfPlayersError unless game.length == 2
	
	# Check to make sure each player made a valid move
	raise NoSuchStrategyError unless ["r", "p", "s"].include? game[0][1] and game[0][1].length == 1
	raise NoSuchStrategyError unless ["r", "p", "s"].include? game[1][1] and game[1][1].length == 1
	
	# If both players chose the same the first player wins
	if game[0][1] == game[1][1]
		return game[0]
	# If the first player beats the second player
	elsif gamewinning[game[0][1]] == game[1][1]
		return game[0]
	# If the second player beats the first player
	elsif gamewinning[game[1][1]] == game[0][1]
		return game[1]
	end
end

def rps_tournament_winner(games)

	# Base Case - Check to see if only two players (one round) is left
    if games[0][0].is_a? String
        return rps_game_winner(games)
    end

	# Continue Recursion if more than two players are left
    return rps_game_winner([rps_tournament_winner(games[0]), rps_tournament_winner(games[1])])
end

print rps_tournament_winner([[[ ["Armando", "P"], ["Dave", "S"] ], [ ["Richard", "R"],  ["Michael", "S"] ],],[[ ["Allen", "S"], ["Omer", "P"] ],[ ["David E.", "R"], ["Richard X.", "P"] ]]])
