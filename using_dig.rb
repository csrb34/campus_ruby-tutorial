user = {
  name: 'Kristine',
  favorites: {
    food: 'Pizza',
    movies: 'Fiddler on the Roof'
  }
}

p user.dig(:name) # => "Kristine"
p user.dig(:favorites) # => {:food=>"Pizza", :movies=>"Fiddler on the Roof"}
p user.dig(:favorites, :movies) # => "Fiddler on the Roof"

require 'yaml'

config = YAML.load_file('config.yml')

p config # => {"secret_key"=>"password", "production"=>{"aws_key"=>123}, "development"=>{"aws_key"=>456}}

p config.dig('secret_key') # => "password"

p config.dig('development', 'aws_key') # => 456
