require 'pry'
new_hash = {
:winter => {
:christmas => ["Lights", "Wreath"],
:new_years => ["Party Hats"]
},
:summer => {
:fourth_of_july => ["Fireworks", "BBQ"]},
:fall => {
:thanksgiving => ["Turkey"]
},
:spring => {
:memorial_day => ["BBQ"]
}
}

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
    supplies << supply
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash.each do |seasons, holidays|
  holidays.each do |holiday, supplies|
      supplies << supply
    end
  end
end
    # add the second argument to the memorial day array



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  holiday_hash.each do |seasons, holidays|
      puts "#{seasons.capitalize}:"
      holidays.each do |holiday, supplies|
      puts "#{holiday}": "#{supplies}"
    end
  end
end
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end
