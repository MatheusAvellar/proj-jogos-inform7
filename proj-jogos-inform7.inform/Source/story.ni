"Untitled" by Tokyo Drift

[
	Regras:
		[-] 1 room por aluno tem que ter alguma coisa para fazer na história
		[√] 2 "Person" ativos no jogo
		[√] 1 porta trancada
		[√] 2 container (Cupboard in Living Room, Toolbox in Garage)
		[√] 2 supporter (Sofa in Living Room, Work Bench in Garage)
]


Chapter 1 New Kinds

Section 1.1 The Staircase

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. A staircase is scenery.
Instead of climbing a staircase:
	try entering the noun.

Section 1.2 Chairs

A chair is a kind of supporter that is enterable with carrying capacity 1.

Definition: A chair is occupied if something is on it.

Understand the command "sit" as something new.
Sitting on is an action applying to one thing.
Understand "sit on [something]" as sitting on.
Understand "sit on top of [something]" as sitting on.

Check an actor sitting on a thing:
	If the noun is occupied, say "You can't sit in the [the noun], it is occupied.[paragraph break]" instead;
	If the noun is not enterable, say "You can't sit on [the noun]![paragraph break]" instead.

Check an actor entering a thing:
	If the thing is occupied, say "You can't sit in a occupied chair." instead;

Carry out sitting on a chair:
	silently try entering the noun.

Report sitting on a chair:
	say "You feel mildly comfortable.".

Section 1.3 Dealing with animals

Section 1.3.1 Petting animals

Petting is an action applying to one touchable thing.
Understand "pet [something]" as petting.

Carry out petting:
	if the noun is an animal:
		say "You pet [the noun]. You grew closer together!";
	otherwise:
		if the noun is a person:
			say "That's no way to treat someone!";
		otherwise:
			say "You pet [the noun]. That's kinda weird. Let's hope no one saw you!".

Section 1.3.2 Kissing animals

Instead of kissing spider:
	say "You give [the noun] a little kiss on the butt. [The noun] doesn't react, but you're sure [regarding the noun][they] liked it."

Section 1.3.3 Eating animals

Instead of eating spider:
	say "You could never do that to the cute little spider!"

Section 1.3.4 Licking animals

Licking is an action applying to one touchable thing.
Understand "lick [something]" as licking.

Carry out licking:
	if the noun is an animal:
		say "You shudder as you lick [the noun]. [regarding the noun][They] doesn't react.";
	otherwise:
		if the noun is a person:
			say "That would probably get you a restraining order.";
		otherwise:
			say "You shouldn't lick [the noun], it'd be very gross.".
		
Section 1.4 Fixing Things

Fixing it with is an action applying to two touchable things.

Understand "fix [something] with [something]" as fixing it with.

Carry out fixing:
	if the noun is Broken Broom:
		if has_fixed_broom is false:
			if the second noun is Silver Tape:
				say "You fixed the broom.";
				now has_fixed_broom is true;
				now player carries the broken broom;
			otherwise: 
				say "You can't fixed the broom with that.";
		otherwise:
			say "It's already fixed. You can't do better than that.";
	otherwise:
		say "It's not even broken. Why do you wanna fix that?".

Section 1.5 Cleaning Things

Cleaning it is an action applying to one thing.

Understand "clean [any room]" as cleaning it.

Carry out cleaning:
	if the noun is Lavabo:
		if player carries sponge and player carries bleach bottle and player carries wiping cloth and player carries broken broom and player carries brush:
			if has_fixed_broom is true:
				if player is in lavabo:
					say "You cleaned it! Of course you didn't do a good job, but at least it's usable right now. Time to go to bed!";
					now has_cleaned_lavabo is true;
				otherwise: 
					say "You should have everything already, but you need to be in the lavabo to clean it. It's pretty obvious, isn't it?";
			otherwise: 
				say "You need to fix this broken broom first.";
		otherwise: 
			say "You don't have everything needed to clean this. You should search for what you still need.";
	otherwise: 
		say "Really? Why do you wan to clean [the noun]? Let's focus just on the Lavabo!".
		
Chapter 2 Geography

Section 2.1 The House

[ First Floor ]
[[ Porch ]]
Porch is a room. "To the north you can see the main door of the house.".

[[ Hall ]]
Hall is room. "To the east you see the entrance to lavabo. To the north there is the living room. The staircase leads you to the upper hall. To the south there's the porch — you don't wanna go back there, it's 40 degrees outside.".
Main Stairs is a staircase, above Hall and below Upper Hall.
Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is Main key.

[[ Living Room]]
Living Room is a room. Living room is north of Hall. "The living room smells faintly of cat food.[paragraph break]To the west you see the garage. To the north there's the dinning room. To the east you can see the home office. To the south you can go back to the hall.".
After going to the Living Room:
	now has_been_in_living_room is true;
	try looking

[[ Garage ]]
Garage is a room, west of Living Room. "I don't know if we could even call this place a garage, it's crowded with boxes. There's no way to put a car in here. Beyond all this trash, maybe something can be useful.[paragraph break]To the north you see the kitchen. To the east is the living room.".

[[ Kitchen ]]
Kitchen is a room, north of garage. "To the south you see the garage. To the east there's the dinning room.".

[[ Dining Room ]]
Dining Room is a room, east of kitchen, north of Living Room. "The dining room is decorated with furniture from the 60's.[paragraph break]To the west you see the kitchen. To the south there's the living room.".

[[ Home Office ]]
Home Office is a room, east of Living Room. "The office has a lot of stuff. There is an old computer, a cabinet, a bookshelf, a wall clock and a portrait. There is also a window.[paragraph break]To west you can go back to the living room.".
A wall clock, a cabinet, a bookshelf, a portrait and a window are scenery in the home office.
The description of the wall clock is "It's an old clock but it stills works. It's [time of day]."
The description of the cabinet is "An white cabinet that has seen better days. It's getting yellowish. Maybe there's something useful inside."
The description of the bookshelf is "There are a lot of books. Seeing those books remind you of your childhood."
The description of the portrait is "A portrait with a photo of you, your aunt and your uncle. You three are happy on the picture."
The description of the window is "Through the window you can see the outside of the house."

[[ Lavabo ]]
Lavabo is a room. "To the west you can go back to the hall.".
Lavabo is east of Hall. 
After going to the Lavabo:
	now has_been_in_lavabo is true;
	try looking.
After looking when player is in lavabo:
	if has_cleaned_lavabo is true:
		say "Now this place is kinda clean. One hour from now it's gonna be as dirty as before you cleaned it. It's a beach house, nothing here stays clean for too long.";
	otherwise:
		say "This place is kinda dirty. Maybe you should clean it.".

[ Second Floor ]
[[ Upper Hall ]]
Upper Hall is a room. "To the west you see the Small Bedroom. To the north you see the Large Bedroom. To the east you see the Medium Bedroom. To the south there's the Bathroom."

[[ Large Bedroom ]]
Large Bedroom is a room, north of Upper Hall. "This is the largest bedroom of the house. You can see some beds and a bathroom. I guess this bedroom is restricted to the owners of the house.[paragraph break]To the west you see the Inner Bathroom. To the south you can see the Upper Hall.".

[[ Medium Bedroom ]]
Medium Bedroom is a room. "Another bedroom. As expected, there are a lot of mattresses on the floor.[paragraph break]To the west you see the Upper Hall.".
Medium bedroom door is a closed door. The Medium bedroom door is west of the Medium Bedroom and east of the Upper Hall. Medium bedroom door is locked.
The matching key of the Medium bedroom door is Medium bedroom key.

[[ Small Bedroom ]]
Small Bedroom is a room, west of Upper Hall. "Seriously, I don't how they fit this many mattresses in this room. You can't even walk here. It's like the floor is made out of mattress.[paragraph break]To the east you see the Upper Hall.".

[[ Bathroom ]]
Bathroom is a room, south of Upper Hall. "Another bathroom of the house. This is much cleaner though.[paragraph break]To the north you can see the Upper Hall."

[[ Inner Bathroom ]]
Inner Bathroom is a room, west of Large Bedroom. "The inner bathroom is a bit damp. There is a sink with a round mirror above it. A faint light shimmers through a small window above a bathtub.[paragraph break]To the east you see the large bedroom. There's also a window that leads you to the roof."
A mirror, a sink, a bathtub, and a small window are scenery in the inner bathroom.
The description of the mirror is "It's a slightly dusty rounded mirror."
The description of the sink is "The faucet drips very slowly."
The description of the bathtub is "This bathtub looks like it hasn't been used in a while."
The description of the small window is "It looks like someone could squeeze through there."
Small Window is a staircase, above Inner Bathroom and below Roof 1.

[ Third Floor ]
[[ Roof ]]
Roof 1 is a room. "The sun burns you! This looks like hell.".
After going to the roof 1:
	now has_been_in_roof is true;
	try looking.
Instead of going to the roof 1 when has_been_in_roof is true, say "NO! Don't go out there again. The sun will kill you!".

[ Regions ]
First Floor is a region. The Hall, Living Room, Garage, Kitchen, Dining Room, Home Office and Lavabo are in First Floor.
Second Floor is a region. The Upper Hall, The Large Bedroom, the medium bedroom,  The Small Bedroom, The Bathroom and the Inner Bathroom are in Second Floor.

Chapter 3 Things

Player is in Porch.

Section 3.1 On the Porch


[ Wooden Chair ]
Wooden chair is a chair in Porch.

[ Gnome ]
Gnome is a thing in the Porch.
There is a Main Key. [This places it "off-stage" until we move it somewhere else]
Instead of taking gnome, say "Don't do it. Don't mess up the house decoration.".
Instead of examining gnome:
	if main key is off-stage:
		say "It's just a decorative Gnome. It seems there's something under it.";
	otherwise:
		say "Remember to tell your family that it is not a good place to hide a key.".
Instead of looking under gnome when main key is off-stage:
	say "You see the main key under the Gnome. Your family needs to find a better place to hide the key.";
	move main key to the porch.

[ Bucket ]
Bucket is a container in Porch.

[ Old Box ]
Candle is a thing.
String is a thing.
Old box is a container. Old box is in Porch.
Candle, String are in Old box.

Section 3.2 In the living room

[ Sofa ]
A Sofa is a chair in the Living Room.

[ Reclining chair ]
A Reclining chair is a chair in the Living Room. It is fixed in place.
Instead of examining the Reclining chair, say "A creaky old reclining chair."

[ Rug ]
An Old rug is a thing in the Living Room.
Instead of examining the old rug, say "A dusty rug that makes your nose feel itchy.".
[ TV ]
A TV is a switched off device in the Living Room. It is fixed in place.
After switching on the TV:
	say "You switch the TV on.[paragraph break]There's nothing good on right now, but the background noise is nice.".

[ Painting ]
A Painting is a thing in the Living Room.
Instead of examining the Painting, say "It's like a van Gogh... Or a Picasso... Or maybe a Beethoven? You don't really know much of art."
After taking Painting for the first time:
	say "This feels like a crime. Luckily, this isn't a museum.".

[ Cupboard ]
An Old photo album is a thing.
A wiping cloth is a thing.
Cupboard is an openable closed container in the Living Room. It is fixed in place.
Old photo album and wiping cloth are in the Cupboard.
Instead of examining the Cupboard, say "It's a dusty wooden cupboard."
Instead of examining the Old photo album, say "A bunch of 20+ year old photos. You don't recognize anyone in them."
Instead of examining the Wiping cloth:
	if has_been_in_lavabo is true:
		say "This cloth might be useful to clean the Lavabo.";
	otherwise:
		say "This cloth might be useful if you need to clean something.".

Section 3.3 In the inner bathroom

After going to the Inner bathroom:
	now has_found_spider is true;
	try looking.
A spider is a neuter animal in the Inner Bathroom. 
The description of the spider is "A cute little brown spider. It probably won't kill you.".

Section 3.4 Garage

[Cobweb]
Cobweb is a thing in the Garage. It is fixed in place.
Instead of examining cobweb:
	if has_found_spider is true:
		say "Thank god the spider that made this is just a little cute animal.";
	otherwise:
		say "A spider has been here... I hope it's not a dangerous spider.".

Section 3.5 Home Office

[ Cabinet ]
Cabinet is an openable closed container in the Home Office. It is fixed in place.
A bleach bottle is a thing.
A bleach bottle is in the Cabinet.
Instead of examining the bleach bottle:
	if has_been_in_lavabo is true:
		say "This bleach bottle might be useful to clean the Lavabo.";
	otherwise:
		say "This bleach bottle might be useful if you need to clean something.".


[Pile of boxes]
Pile of boxes is a thing in the Garage.
Instead of taking Pile of boxes, say "There are a lot of boxes. You can't carry them all. Besides, these boxes would probably be useless.".
The description of pile of boxes is "I guess every single box is just trash".

[ Broom ]
A Broken broom is a thing in the Garage.
Instead of examining the Broken broom:
	if has_been_in_lavabo is true:
		if has_fixed_broom is true:
			say "It looks like a new broom! Now you can use it to clean the lavabo.";
		otherwise:
			say "The broomstick is broken, but it doesn't seem hard to fix. You'll need to fix it if you want to clean the lavabo.";
	otherwise:
		if has_fixed_broom is true:
			say "It looks like a new broom!";
		otherwise:
			say "The broomstick is broken, but it doesn't seem hard to fix.".
		

[Work bench]
Work Bench is a supporter in the garage. It is fixed in place.
Instead of examining Work Bench, say "It's a work bench. But you are no specialist in tools, so it's just a table with a toolbox.".

[ Toolbox ]
A Wrench is a thing.
A Screwdriver is a thing.
A Silver Tape is a thing.
A Hammer is a thing.
Toolbox is an openable closed container on Work Bench.
Wrench, Silver Tape, Hammer and Screwdriver are in the Toolbox.
Instead of taking toolbox, say "It's too heavy. It's better to just take what you need. ".
The description of Wrench  is "It's a tool. I don't think it'll be useful for you today.".
The description of Hammer is "You don't have any nails to use with that hammer. But it's also great to destroy things!".
The description of Screwdriver is "You don't have any screws to screw. Maybe you'll need the screwdriver it to unscrew some, though.".
Instead of examining Silver Tape:
	if player carries broken broom: 
		say "Maybe it'll be useful to fix the broken broom.";
	otherwise:
		say "It's a great tool to fix things.".

Section 3.6 In the Dining room

[ Old Cabinet ]
An Old Cabinet is a thing in the Dining room. It is fixed in place.
Instead of examining the Old Cabinet, say "Seems just like an Old Cabinet, there are some plates and beverages inside."

[ Old mirror ]
An Old mirror is a thing in the Dining room.
Instead of examining the Old mirror, say "It is a beautiful antique. It looks pretty, but you can tell it wasn't manufactured. You wonder who could have made such wonderful piece of furniture."
Instead of taking the Old mirror:
	if has_been_in_living_room is true:
		say "It has 'B64' followed by a surname writen on the back. It's your surname. You may want to go back to the Living Room and ask your aunt about it.";
	otherwise:
		say "It has 'B64' followed by a surname written on the back. It's your surname. You feel curious, but you don't know who could tell you more about this B64 thing.";

[ Dining table ]
A Dining table is a thing in the Dining room. It is fixed in place.
The Sponge is a thing. The Sponge can be found or lost. The Sponge is lost.
Instead of examining the Dining table:
	now the Sponge is found;
	if has_been_in_living_room is true:
		say "There's an unfinished meal at the Dining table. Your aunt must've forgotten it.";
	otherwise:
		say "There's an unfinished meal at the Dining table. You wonder who left it here.";
	if has_been_in_lavabo is true:
		say "You also see a Sponge on the Dining table. You could use it to clean the Lavabo.";
	otherwise:
		say "You also see a Sponge on the Dining table. You could use it to clean this plate later, or use it to clean something else. You should take it with you.";
	move the Sponge to the Dining room;

Section 3.7 In the Large Bedroom

[ King size bed ]
King size bed is a thing in the Large Bedroom. The King size bed is enterable. It is fixed in place.

[ Desk ]
A Desk is a thing in the Large Bedroom. The bed is fixed in place.

[ Medium bedroom key ]
The Medium bedroom key is a thing. The Medium bedroom key can be found or lost. The Medium bedroom key is lost.

Section 3.8 In the Medium Bedroom

Before opening the Medium bedroom door:
	now tried_to_enter_bedroom is true;
	say "You try to open the door, but your Mother has taken the key. She is currently resting in the Large Bedroom.".

[ Single Bed ]
The pillow is on the Single bed. The Single bed is enterable and fixed in place. 
The Single bed is in the Medium bedroom.

Section 3.9 Kitchen


[ Cabinets ]
Cabinets  is an openable closed container in the Kitchen.
Cabinets is fixed in place.
A Brush is a thing. 
A Knife is a thing.
Brush and Knife are in Cabinets.
Instead of examining the Brush:
	if has_been_in_lavabo is true:
		say "This brush might be useful to clean the Lavabo.";
	otherwise:
		say "This brush could to be used to clean something.".


[ Kitchen Table ]
Kitchen Table is a supporter in the garage.
Instead of examining Kitchen Table, say "This Kitchen Table is a mess, I don't know how it's still standing.".

Chapter 4 People

[ Aunt (Living Room) ]
The Aunt is a woman. "Your old aunt sleeps quietly on her creaky recliner."
The Aunt is on the Reclining chair. The indefinite article of the aunt is "your".
Instead of examining the aunt, say "You don't really know how old your aunt is, but you're pretty sure she's over 100."
After asking the Aunt about "B64", say "Oh, he was such an amazing man. He was your great-great grandfather. His name was Breno and he was born in 1864. We used to play so many games together... I recall his favourite game had an incredibly weird but surely remarkable name: aHR0cHM6Ly95b3V0dS5iZS95VTRaWTAybFhEawo="

[ Mother (Large Bedroom) ]
The Mother is a woman.
The Mother is on the King size bed. The King size bed is enterable and fixed in place. The indefinite article of the Mother is "your".

Instead of examining mother:
	if medium bedroom key is lost:
		say "You should ask her about the medium bedroom key.";
	otherwise:
		say "You already have the key. Just go to your bedroom.".

Instead of asking mother about "key", try asking mother about "the medium bedroom key".
Instead of asking mother about "the key", try asking mother about "the medium bedroom key".
Instead of asking mother about "bedroom key", try asking mother about "the medium bedroom key".
Instead of asking mother about "the bedroom key", try asking mother about "the medium bedroom key".
Instead of asking mother about "medium bedroom key", try asking mother about "the medium bedroom key".
After asking mother about "the medium bedroom key" when the Medium bedroom key is lost:
	if has_cleaned_lavabo is true:
		now the Medium bedroom key is found;
		say "Finally, it was about time. Your mom gave you the bedroom key.";
		now player carries medium bedroom key;
	otherwise:
		if tried_to_enter_bedroom is true:
			say "She says you have to clean the lavabo before you sleep. Only then the she'll give you the key.";
		otherwise:
			say "Go clean the Lavabo before doing anything else. Then you can do whatever you want.";



Chapter 5 What Happens when entering

Being Outside the House is a Scene.
Being Outside the House begins when play begins.
Being Outside the House ends when player is in Hall.

Before taking the Main Key during Being Outside the House:
	Say "You know your hand is going to smell of iron afterwards, but you pick up the key anyways.".
	
After going to medium bedroom:
	say "You can finally rest here. Congratulations!";
	end the story.

When Being Outside the House ends:
	Say "It feels good to leave the sunny outside.".

Figure of InitialPicture is the file "house-bright.jpg"

When play begins:
	Display the Figure of InitialPicture;
	now the time of day is 1:12 PM;
	Say "The afternoon is incredibly hot as the sun shines strongly on the lawn.".

Chapter 6 After cleaning the lavabo

Dirty lavabo is a Scene.
Dirty lavabo begins when play begins.
Dirty lavabo ends when has_cleaned_lavabo is true;

When Dirty lavabo ends:
	say "You can finally go to the Medium bedroom to have some rest. But get the key with your Mother before.".

Chapter 7 Variables

has_been_in_living_room is initially false.
has_cleaned_lavabo is initially false.
has_been_in_lavabo is initially false.
has_been_in_roof is initially false.
has_fixed_broom is initially false.
has_found_spider is initially false.
tried_to_enter_bedroom is initially false.