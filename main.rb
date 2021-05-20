# require_relative './game_state'
# require_relative './screen_message'
# require_relative './recipe'
# require_relative './customer_request'
# require_relative './player_option'
# require_relative './score_comparison'

# # Create instance from ScreenMessage class
# screen = ScreenMessage.new

# # Create instance of TTY Prompt
# prompt = TTY::Prompt.new

# # Feature 1
# puts
# puts screen.display_welcome
# screen.go_to_next
# user_input = gets.strip

# loop do
#   puts
#   user_input = prompt.select("What would you like to do?") do |menu|
#     menu.choice "View 'How to Play'"
#     menu.choice "Start Game"
#   end

#   break if user_input == "Start Game"

#   # Show instructions
#   puts
#   puts screen.display_instructions
  
#   screen.go_to_next
#   user_input = gets.strip
# end

# # Show prologue
# puts
# puts screen.display_prologue

# screen.go_to_next
# user_input = gets.strip

# # Loop game until WIN / GAME OVER
# loop do
#   # Display current money and reputation status
#   game_state = GameState.new
#   puts game_state.display_game_state

#   screen.go_to_next
#   user_input = gets.strip

#   # Display shop's Menu
#   puts
#   puts "Ruby Burger's Menu"
#   puts 
#   show_menu = Recipe.new
#   no_of_recipe = Recipe::RECIPES.length

#   puts
#   puts "We have #{no_of_recipe} recipes. Try to remember the recipe name, the stack order of ingredients and the quantity. We will build the burger from bottom to top."
#   puts

#   i = 0
#   loop do
#     puts show_menu.display_recipe(i)

#     screen.go_to_next
#     user_input = gets.strip

#     i += 1
#     break if i > (no_of_recipe - 1)
#   end

#   # Display customer request
#   puts
#   puts "There is a customer in the queue..."
#   puts
#   # Randomise customer
#   customer_no = rand(0..9)
#   customer = CustomerRequest.new
#   puts customer.display_request(customer_no)
#   puts

#   screen.go_to_next
#   user_input = gets.strip

#   # Display player's options
#   options = PlayerOption.new
#   player_recipe = options.get_options
#   customer_recipe = customer.get_request(customer_no)

#   # Calculate score
#   compare = ScoreComparison.new(player_recipe, customer_recipe)
#   score = compare.get_score
#   mood = compare.get_mood(score)
  
#   # Display customer's response
#   puts
#   puts "The customer wants to say something..."
#   puts
#   puts customer.display_response(customer_no, mood)

#   screen.go_to_next
#   user_input = gets.strip

#   # Update game state
#   compare.calculate_state(mood)

#   # GAME OVER condition
#   if GameState.current_reputation == 0
#     puts "show game over screen"
#     break
#   end

#   # WIN condition
#   if GameState.current_money >= GameState::TARGET_MONEY
#     puts "show win screen"
#     break
#   end
# end