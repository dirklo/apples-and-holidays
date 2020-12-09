require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter][:christmas] << supply
    holiday_hash[:winter][:new_years] << supply
  puts holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  final = []
    holiday_hash.each do |key, value|
      value.each do |key, value|
        value.each do |i|
          final.push(i)
        end
      end  
    end
  final
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key}:".capitalize
    value.each do |key, value|
      puts "  #{key.to_s.split("_").collect{|i| i.capitalize}.join(" ")}: #{value.join(", ")}"
    end  
  end
end

def all_holidays_with_bbq(holiday_hash)
  final = []
  holiday_hash.each do |key, value|
    value.each do |key, value|
      if value.include?("BBQ")
        final << key
      end
    end  
  end
  final
end








