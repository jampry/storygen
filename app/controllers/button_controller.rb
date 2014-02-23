class ButtonController < ApplicationController
  
def home
end
  
  
  
def story
  #Arrays are used to store the data used to create a story.
  location_adj = ["alternative-timeline", "tolkeinesque", "neo-noir", "alternate-history", "ancient", "post-apocalyptic", "dystopian", "metaphorical", "anachronistic", "leather-clad", "coal-powered", "dragon-filled"]
  location_noun = ["America", "Japan", "Soviet Russia", "Steampunk Britain", "medieval Europe", "Egyptian empire", "Atlantis", "terraformed Mars", "Antarctica", "one-way spaceflight", "Outer Rim world", "set from Road Warrior"]
  protagonist = ["Ferris Bueller wannabe", "student of metaphysics", "milquetoast office drone", "schlub with mild OCD", "farm boy with dreams", "techno-obsessed geek", "brooding loner", "wisecracking mercenary", "idealistic revolutionary", "journeyman inventor", "collector of oddities", "rocketman of the 24th century"]
  discovery = ["magic ring", "arcane prophecy", "dusty tome", "crazy old woman", "alien artifact", "enchanted sword", "otherworldly portal", "dream-inducing drug", "encrypted data feed", "time-traveling soldier", "exiled angel", "talking fish"]
  adversary = ["a megalomaniacal clown", "a government conspiracy", "a profit-obsessed corporation", "a sneering witch", "supernatural monsters", "computer viruses made real", "murderous robots", "an army led by a sadist", "forces that encourage conformity", "a charismatic politician on the rise", "humanity's selfish nature", "his own insecurity vis-a-vis girls"]
  assistant = ["sarcastic female techno-geek", "tomboyish female librarian", "shape-shifting female assassin", "leather-clad female in shades and red leather jacket", "girl who's always loved him for himself", "bookish female scholar with mousy brown hair", "cherubic girl with pigtails and spunk", "female who inexplicably becomes attracted to the damaged protagonist for unstated reasons"]
  inventory = ["wacky pet", "electric chainsaw", "closet full of assault rifles and one bullet", "reference book", "meat cleaver", "facility with magic", "condescending tone", "discomfort in formal wear"]
  conflict = ["a fistfight atop a cable car", "a daring rescue preceding a giant explosion", "a demonic sacrifice", "a philosophical argument punctuated by violence", "a false victory with the promise of future danger", "the invocation of a spell at the last possible moment", "eternal love professed without irony", "the land restored to health", "authorial preaching through the mouths of the characters", "convoluted nonsense that squanders the readers goodwill", "wish-fulfillment solutions to real-world problems", "a cliffhanger for the sake of prompting a series"]
  title_adj = ["Time", "Micro", "Aero", "Cosmo", "Reve", "Necro", "Cyber", "Astro", "Psycho", "Steam", "Meta", "Black"]   
  title_noun = ["punks", "mechs", "noiacs", "opolis", "nauts", "phages", "droids", "bots", "blades", "trons", "mancers", "wars"]
 
  
  #Create the title
  @my_title = "The #{title_adj.sample}" + "#{title_noun.sample}!!!"

  
  #Create the story
  # 'location_adj' and 'discovery' need to be separate instanced variables here. 'a or 'an' will be used correctly, and the random choices taken from the arrays will remain the same throughout each story.
  @location_adj = location_adj.sample
  @discovery = discovery.sample
  @my_story = "In #{generate_identifier(@location_adj)} #{@location_adj} #{location_noun.sample} a young #{protagonist.sample} stumbles across #{generate_identifier(@discovery)} #{@discovery} which spurs him into conflict with #{adversary.sample} with the help of a #{assistant.sample} and her #{inventory.sample} culminating in #{conflict.sample}."
end


#Decide if 'a' or 'an'
def generate_identifier(sample)
  # Here, I will include every 'location adjective' and 'discovery' beginning with a vowel. These must all be preceeded by 'an'.
  if ["alternative-timeline", "alternate-history", "ancient", "anachronistic", "arcane prophecy", "alien artifact", "enchanted sword", "otherworldly portal", "encrypted data feed", "exiled angel"].include?(sample)
      "an"
  else
      "a"
  end
end
  

end
