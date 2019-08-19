# PHASE 2
class CoffeeError < StandardError; end
class NotKnownLongEnough < StandardError; end
class StringTooShort < StandardError; end

def convert_to_int(str)
  begin
    Integer(str)
    # raise NotIntError if result = Integer(str)
  rescue 
    return nil
  end
  
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else 
    raise StandardError
  end 
end

def feed_me_a_fruit
    puts "Hello, I am a friendly monster. :)"
    puts "Feed me a fruit! (Enter the name of a fruit:)"

    begin 
      maybe_fruit = gets.chomp

    reaction(maybe_fruit) 

  rescue CoffeeError
    retry
  end 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin
      raise StringTooShort if name.length < 1
      @name = name
    rescue StringTooShort
       p "You didn't put in a name"
      name = gets.chomp
      retry
    end 

    begin 
      raise NotKnownLongEnough if yrs_known < 5
      @yrs_known = yrs_known
    rescue NotKnownLongEnough
      p "haven't known this friend long enough, to be best friends. Put in new Years known"
      yrs_known = gets.chomp.to_i
      retry
    end

    begin
      raise StringTooShort if fav_pastime.length < 1
      @fav_pastime = fav_pastime
    rescue StringTooShort
       p "You didn't put in a favorite pastime"
      fav_pastime = gets.chomp
      retry
    end  
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


