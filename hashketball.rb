def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
      },
      "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
    },
    "Brendan Haywood" => {
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
    }
    }
  }
}
game_hash
end

def num_points_scored(player_n)
   game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if data.include?(player_n)
          return game_hash[location][attribute][player_n][:points]
    end 
  end
end 
end 



def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, data|
      if player_name == name
        return data[:shoe]
      end
    end
  end
end

  
def team_colors(team_name)
    game_hash.each do |team, team_details|
       if game_hash[team].values.include?(team_name)
        team_details.each do |attribute, data|
          if attribute == :colors
            return data
            end
         end
       end 
     end
end



def team_names
	team_names = []
	game_hash.each do |location, data|
	  data.each do |attribute,info| 
	    if attribute == :team_name
		team_names << info
	end
	end 
	end 
	return team_names
end

def player_numbers(team_name) 
	jersey = []
	game_hash.each do |location, data|

		if data[:team_name] == team_name
		data[:players].each do |player, stats|
				jersey << stats[:number]
			
			end
		end
	end
		jersey 
end 

def player_stats(player_name)
	game_hash.each do |location, data|
	data[:players].each do |player, stats|
			if player== player_name
	        return stats
			end
		end
	end
end

def big_shoe_rebounds 
	biggest_shoe = 0
	rebounds = 0
	game_hash.each do |location, loc_data|
		loc_data[:players].each do |player, stats|
			if stats[:shoe] > biggest_shoe 
				biggest_shoe = stats[:shoe]
			end
			if stats[:shoe] == biggest_shoe
				rebounds = stats[:rebounds]
			end
		end
	end
	rebounds
end






