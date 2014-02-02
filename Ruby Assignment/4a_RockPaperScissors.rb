# Part4a: Rock Paper Scissors

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
		puts game[0][0] + " wins due to a tie!"
	# If the first player beats the second player
	elsif gamewinning[game[0][1]] == game[1][1]
		puts game[0][0] + " would win because " + game[0][1] + " beats " + game[1][1]
	# If the second player beats the first player
	elsif gamewinning[game[1][1]] == game[0][1]
		puts game[1][0] + " would win because " + game[1][1] + " beats " + game[0][1]
	end
end

rps_game_winner([["Armando", "P"], ["Dave", "S"]])
