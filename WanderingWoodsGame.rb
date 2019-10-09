
def start
    puts "You are going exploring in the woods looking for gold."
    puts "After hiking into the forest for about 2 miles you come to a fork."
    puts "You can go up the hill which looks like there are structures at the top,"
    puts "or you can continue further into the heart of the forest."
    puts "Which way do you go? (uphill or straight)"

    print "> "
    forest_path = $stdin.gets.chomp.downcase

    if forest_path == "uphill"
        puts "You make it to the top of the high hill."
        puts "There are old stone houses that oddly look well kept."
        stone_village
    elsif forest_path == "straight"
        puts "You wander further into the forest."
        puts "After a couple more miles you find a lake."
        find_lake
    else 
        die("Please pick one of the two routes next time!")
    end  
end

def stone_village
    puts "After inspecting the abandoned looking village you hear some noise in the distance."
    puts "You can explore for the noise or knock on the door and enter the stone house? (explore or knock)"
    
    print "> "
    knock_or_not = $stdin.gets.chomp.downcase

    if knock_or_not == "explore"
        puts "You go deeper into the small village and the noise turns into chanting."
        blood_ritual
    elsif knock_or_not == "knock"
        die("You knock loudly on the wooden door. The noise suddenly stops. You feel something warm runnnig down the back of your leg, then a sharp pain in your back. You look down and see the point of a knife sticking out of your stomach. You collapse onto the ground.")
    else
        die("Please pick one of the two options!")
    end        
end

def blood_ritual
    puts "You creep into the bushes nearby and find all the villagers performing a ritual."
    puts "You see a young woman tied up struggling in the center with a knife next to her."
    puts "You can either stay and watch or RUN! (stay or run)"

    print "> "
    sacrifical_ritual = $stdin.gets.chomp.downcase

    if sacrifical_ritual == "stay"
        die("A stray villager finds you, grabs you, and throws you into the center of the ritual. They all pick up their knives and begin to tear into you!")
    elsif sacrifical_ritual == "run"
        start
    else
        die("You have to pick one of the two options!")
    end
end

def find_lake
    puts "Along the edge of the lake is a canoe."
    puts "Should you take the canoe and go down the lake or walk along the edge of the lake? (canoe or walk)"

    print "> "
    lake_canoe = $stdin.gets.chomp.downcase

    if lake_canoe == "canoe"
        puts "You canoe into the massive lake and as soon as you feel like you cannot paddle any longer"
        puts "an island comes into view. You go to the island to rest your arms a bit."
        ferry_island
    elsif lake_canoe == "walk"
        die("As you are walking along the edge of the lake you see some bubbles coming out of the water next to you. You get closer and a crocodile jets out and swallows you whole!")
    else
        die("You didn't select one of the options!")
    end
end

def ferry_island
    puts "Insects swarm around you while you walk into the center of the island."
    puts "Some of the insects are much larger than the others."
    puts "After some concentration you notice the bigger insects are not bugs, but ferries!"
    puts "They are offering you many different colored berries and you are quite hungry."
    puts "Do you take the offering or refuse and move on? (take or refuse)"

    print "> "
    ferry_offering = $stdin.gets.chomp.downcase

    if ferry_offering == "take"
        die("You take the berries and jam them into your mouth... You feel some cotton mouth coming on and start to choke. You suffocate from poison berries.")
    elsif ferry_offering == "refuse"
        puts "You politely refuse and try to move forward, but the ferries are upset at the refusal and swarm around you."
        puts "You run ahead to escape them."
        apocolypse_latch
    else
        die("Come on ... You know you have to pick one of the choices...")
    end
end

def apocolypse_latch
    puts "You look back while you are running away from the ferries to see if they are still on your tail"
    puts "and end up tripping. You look up from the dirt and leaves to see what you tripped on"
    puts "and find a metal door flat on the ground. It looks as if it is latched to something. You open it up"
    puts "and find a bunker. Do you enter the bunker or continue down the island? (enter or continue)"

    print "> "
    bunker_latch = $stdin.gets.chomp.downcase

    if bunker_latch == "enter"
        puts "You jump down and find a pantry full of food, which you start to eat immediately."
        puts "You start moving your way deeper into the bunker into another room and find a weapons cache."
        zombies_attack
    elsif bunker_latch == "continue"
        puts "You pass by the latch and continue to the other end of the island."
        wood_ruins
    else
        die("You'll have to start over ... Pick an actual choice!")
    end
end

def zombies_attack
    puts "You hear light rustling deeper into the bunker."
    puts "You think it could be a rat and continue searching through the belongings."
    puts "You pick up a rifle but then you hear pots crashing to the groud just up ahead with a blood curtling moan."
    puts "You look behind you at the latch and then back up ahead to where the noise came from. Where do you go? (continue or run)"
    
    print "> "
    escape_bunker = $stdin.gets.chomp.downcase

    if escape_bunker == "continue"
        puts "You ready the rifle and move ahead."
        puts "You enter the kitchen and move slowly past the rows of counter tops and stoves looking down each isle."
        puts "You see a pair of legs sticking out of the third row. Slowly moving with painful moans."
        puts "You go closer to check it out."
        zombie_choice
    elsif escape_bunker == "run"
        die("You run back towards the latch screeching in fear! You turn to look back and miss a step, tripping and landing on the rifle which blows your head off")
    else
        die("You'll have to start over ... Pick an actual choice!")
    end
end

def zombie_choice
    puts "You get closer to the person in agony."
    puts "Once you are over the person you remove the pot that had fallen on their head."
    puts "The person's skin is slumping off and blood is coming out of their eyes. It's a ZOMBIE!!!"
    puts "What do you do? Shoot it in the head or runaway? (run or shoot)"

    print "> "
    zombie_gun = $stdin.gets.chomp.downcase

    if zombie_gun == "run"
        die("You run screaming! You turn and see the zombie get up and lumber after you. As you are staring at it you trip and hit your head... The zombie catches up and feasts on your brain!")
    elsif zombie_gun == "shoot"
        puts "You stomp on the back of the zombie to hold it down and shoot it in the head!"
        escape_apocolypse
    else
        die("You have to pick one of the choices!")
    end
end

def escape_apocolypse
    puts "You sigh in relief ... but then you feel rumbling with many moans coming closer from the room ahead."
    puts "Do you continue forward, hide in the kitchen, or run away? (forward, hide or run)"

    print "> "
    creepy_noise = $stdin.gets.chomp.downcase

    if creepy_noise == "forward"
        die("You move forward thinking you can kill some more zombies. You open the door to the room ahead and find a horde. You stare petrified as they lunge at you and tear you apart.")
    elsif creepy_noise == "hide"
        puts "You hide in one of the ovens like in Jurassic Park."
        puts "As you are in there you hear the door break down and a horde of zombies come out swarming the entire bunker."
        puts "You try to think of a way out."
        escape_kitchen_bunker
    elsif creepy_noise == "run"
        puts "You run all the way back to the opening of the bunker and slam the latch down after you."
        puts "You sigh in relief and continue forward on the island."
        wood_ruins
    else
        die("You have to pick a choice!")
    end
end

def escape_kitchen_bunker
    puts "You wait for a while but still hear a the zombies outside."
    puts "You figure there are only two options. Stay and wait them out or try to run past them all."
    puts "What do you do? (wait or run)"

    print "> "
    stove_bunker = $stdin.gets.chomp.downcase

    if stove_bunker == "wait"
        die("You try to wait them out but slowly wither away in the oven.")
    elsif stove_bunker == "run"
        die("You throw open the oven door and make a run for it! You bolt past the first zombie but the second one grabs on to you and the horde starts chomping down on you!")
    else
        die("There was no right option here anyway he he he.")
    end
end

def wood_ruins
    puts "You find a canoe at the opposite end and take it to go further upstream."
    puts "You look to the shore as you are going upstream and see some ruins."
    puts "Do you go to the shore or go further downstream? (shore or continue)"

    print "> "
    stream_shore = $stdin.gets.chomp.downcase

    if stream_shore == "shore"
        puts "You pull up to the shore and go into the ruins."
        puts "You look down the staircase of the ruins and find that it goes deep into the earth."
        inside_ruins
    elsif stream_shore == "continue"
        die("You continue downstream and realize there is a waterfall up ahead. You try to paddle to shore but the current pulls you over the waterfall ... you never resurface.")
    else
        die("You have to pick one of the options.")
    end
end

def inside_ruins
    puts "You walk down a ways and come to a fork."
    puts "The path to the left has a slight glimmer and the path to the right has a faint sweet smell."
    puts "Which path do you pick? (right or left)"

    print "> "
    fork_in_ruins = $stdin.gets.chomp.downcase

    if fork_in_ruins == "right"
        die("You go down the path to the right. You go deep inside and start to feel light headed. You realize their is gas leaking out from somewhere before you passout and never wake up.")
    elsif fork_in_ruins == "left"
        puts "You go towards the glimmer and find a bunch of gold!"
        greedy_gold
    else 
        die("You didn't pick a given choice.")
    end
end

def greedy_gold
    puts "The room is full of gold!"
    puts "You think of how rich this gold could make you. Do you take any? (yes or no)"

    print "> "
    take_gold = $stdin.gets.chomp.downcase

    if take_gold == "yes"
        puts "You begin to fill your backpack and pockets with gold."
        exit_ruins
    elsif take_gold == "no"
        die("You walk away from all the riches in the world and as you walk up the stairs of the ruin you look up and see a figure in the entrance way. You get shot by an arrow and die.")
    else
        die("You didn't pick one of the options.")
    end
end

def exit_ruins
    puts "As you begin thinking about leaving you notice the walls start to crumble!"
    puts "You look up and see a hole in the ceiling where the light was coming from."
    puts "Do you go try and climb towards the hole or run back out the entrance? (hole or entrance)"

    print "> "
    exit_route = $stdin.gets.chomp.downcase

    if exit_route == "hole"
        puts "You climb for the hole! Parts of the ceiling fly past you nearly hitting you off of the pillar you are climbing."
        puts "You reach the hole and climb through it on the other side of the ruins."
        puts "You get back to the canoe and make your way back home a rich person! Congratulations!!!"
        exit(0)
    elsif exit_route == "entrance"
        die("You run towards the entrance. On the way a part of the ceiling flies right into your shoulder knocking you down to the floor. You are crushed by the collapsing building.")
    else
        die("You have to pick one of the given choices!")
    end
end

def die(why)
    puts why
    exit(0)
end

start