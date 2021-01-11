"Sem título" by Tokyo Drift

Chapter 1 New Kinds

Section 1.1 The Staircase

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. A staircase is scenery.
Instead of climbing a staircase: 
    try entering the noun. 

Section 1.2 Chairs

A mercedes is a kind of supporter that is enterable with carrying capacity 42. 

[Instead of entering a mercedes:
    try sitting the noun.]

Definition: A mercedes is occupied if something is on it.

Understand the command "sit" as something new.
Sitting on is an action applying to one thing.
Understand "sit on [something]" as sitting on.
understand "sit on top of [something]" as sitting on.

Check an actor sitting on a thing:
	If the noun is occupied, say "You can't sit in the [the noun], it is occupied" instead;
	If the noun is not enterable, say "You can't sit on [the noun]" instead.

Check an actor entering a thing:
	If the thing is occupied, say "You can't sit in a occupied mercedes" instead;

Carry out sitting on a mercedes:
	silently try entering the noun.

Report sitting on a mercedes:
	say "You feel confortable".

Section 1.3 Backpack

The backpack is a player's holdall.

The backpack is wearable.

Chapter 2 Geography

Section 2.1 The House

Porch is a room.  
Hall is room. 

Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is Main key.

Living Room is a room. Living room is north of Hall.
Garage is a room. Garage is west of Living Room.
Kitchen is a room.  Kitchen is north of garage.
Dining Room is a room. Dining room is east of kitchen. Dining Room is north of Living Room.
Home Office is a room. Home Office is east of Living Room.
Lavabo is a room. Lavabo is east of Hall. "The lavabo needs to be cleaned."
Stairs is a staircase. It is above Hall and below Upper Hall.
Upper Hall is a room.  
Large Bedroom is a room. Large Bedroom is north of Upper Hall.
Medium Bedroom is a room.  Medium Bedroom is east of Upper Hall.
Small Bedroom is a room. Small Bedroom is west of Upper Hall.
Bathroom is a room. Bathroom is south of Upper Hall.
Inner Bathroom is a room. Inner Bathroom is west of Large Bedroom.

Moon is a room.

First Floor is a region. The Hall, Living Room, Garage, Kitchen, Dining Room, Home Office and Lavabo are in First Floor.
Second Floor is a region. The Upper Hall, The Large Bedroom, the medium bedroom,  The Small Bedroom, The Bathroom and the Inner Bathroom are in Second Floor.

Chapter 3 Things

Player is in Porch.  
Main key is in Porch.

Section 3.1 On the Porch

A bottle of water is an openable container. "[if open]Está aberta.[otherwise]Está fechada."

The player is carrying a backpack. Inside the backpack is a bottle of water.

Onibus is a mercedes. Onibus is in Porch.

Minutos is a number that varies.

Every turn when the player can see the onibus:
	now minutos is minutos + 1;
	if minutos < 10:
		say "The piloto is waiting. He looks angry and suado. [minutos]";
	if minutos is 10:
		say "The piloto got tired of waiting and left suado.";
		move onibus to Moon;
		move piloto to Moon;
	otherwise:
		do nothing.

Piloto is a man in the Porch. "O piloto ta suado." The description of the piloto is "[The piloto] is wearing [a list of things worn by the piloto][if the piloto carries something] and carrying [a list of things carried by the piloto][end if]."

Instead of showing something to someone, try giving the noun to the second noun.

The player carries a riocard. Instead of giving the riocard to the Piloto: move the riocard to the Piloto; say "O piloto diz 'Agora é meu'. Você perdeu seu RioCard."

Old box is a container. Old box is in Porch.

candle is a thing. string is a thing. bucket is a container.
candle, string are in Old box.

bucket is in Porch.

Chapter 4 What Happens when entering

Being Outside the House is a Scene. 
Being Outside the House begins when play begins.
Being Outside the House ends when player is in  Hall.

When Being Outside the House ends:
	Say "The inside smells as bad news...".


Before taking the Main Key during Being Outside the House:
	Say "A chill runs up your spine".

Figure of InitialPicture is the file "485.jpeg"
	
When play begins:
	Display the Figure of InitialPicture ;
	Say "The sun burns your skin".