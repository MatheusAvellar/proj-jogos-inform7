"Untitled" by Tokyo Drift

[
	Regras:
		[-] 1 room por aluno tem que ter alguma coisa para fazer na história
		[-] 2 "Person" ativos no jogo
		[-] 1 porta trancada
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
	if the noun is a person:
		say "That would probably get you a restraining order.";
	otherwise:
		say "You shouldn't lick [the noun], it'd be very gross.".
		
Section 1.4 Fixing Things

Fixing it with is an action applying to two touchable things.

Understand "fix [something] with [something]" as fixing it with.

Carry out fixing:
	if the noun is Broken Broom:
		if has_fixed_the_broom is false:
			if the second noun is Silver Tape:			
				say "You fixed the broom.";
				now has_fixed_the_broom is true;
				now player carries the broken broom;
			otherwise: 
				say "You can't fixed the broom with that.";
		otherwise:
			say "It's already fixed. You can't do better than that.";
	otherwise:
		say "It's not even broken. Why do you wanna fix that?".


Chapter 2 Geography

Section 2.1 The House

[ First Floor ]
[[ Porch ]]
Porch is a room.

[[ Hall ]]
Hall is room.
Main Stairs is a staircase, above Hall and below Upper Hall.
Main door is a door. It is north of Porch and south of Hall. Main door is closed and locked.
The matching key of the Main door is Main key.

[[ Living Room]]
Living Room is a room. Living room is north of Hall. "The living room smells faintly of cat food."

[[ Garage ]]
Garage is a room, west of Living Room. "I don't know if we could even call this place a garage, it's crowded with boxes. 
There's no way to put a car in here.
Beyond all this trash, maybe something can be useful.".

[[ Kitchen ]]
Kitchen is a room, north of garage.

[[ Dining Room ]]
Dining Room is a room, east of kitchen, north of Living Room.

[[ Home Office ]]
Home Office is a room, east of Living Room.

[[ Lavabo ]]
Lavabo is a room, east of Hall. "The lavabo needs to be cleaned.".
has_been_in_lavabo is initially false.
After going to the Lavabo:
	now has_been_in_lavabo is true.

[ Second Floor ]
[[ Upper Hall ]]
Upper Hall is a room.

[[ Large Bedroom ]]
Large Bedroom is a room, north of Upper Hall.
Medium Bedroom is a room, east of Upper Hall.
Small Bedroom is a room, west of Upper Hall.

[[ Bathroom ]]
Bathroom is a room, south of Upper Hall.

[[ Inner Bathroom ]]
Inner Bathroom is a room, west of Large Bedroom. "The inner bathroom is a bit damp. There is a sink with a round mirror above it. A faint light shimmers through a small window above a bathtub."
A mirror, a sink, a bathtub, and a small window are scenery in the inner bathroom.
The description of the mirror is "It's a slightly dusty rounded mirror."
The description of the sink is "The faucet drips very slowly."
The description of the bathtub is "This bathtub looks like it hasn't been used in a while."
The description of the small window is "It looks like someone could squeeze through there."
Small Window is a staircase, above Inner Bathroom and below Roof 1.

[ Third Floor ]
[[ Roof ]]
Roof 1 is a room.

[ Regions ]
First Floor is a region. The Hall, Living Room, Garage, Kitchen, Dining Room, Home Office and Lavabo are in First Floor.
Second Floor is a region. The Upper Hall, The Large Bedroom, the medium bedroom,  The Small Bedroom, The Bathroom and the Inner Bathroom are in Second Floor.

Chapter 3 Things

Player is in Porch.
Main key is in Porch.

Section 3.1 On the Porch

Wooden chair is a chair. Wooden chair is in Porch.

Bucket is a container. Bucket is in Porch.

Candle is a thing.
String is a thing.

Old box is a container. Old box is in Porch.
Candle, String are in Old box.

Section 3.2 In the living room

[ Sofa ]
A Sofa is a chair in the Living Room.

[ Reclining chair ]
A Reclining chair is a chair in the Living Room.
Instead of examining the Reclining chair, say "A creaky old reclining chair."

[ Rug ]
An Old rug is a thing in the Living Room.
Instead of examining the old rug, say "A dusty rug that makes your nose feel itchy."

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
Cupboard is an openable closed container in the Living Room.
Old photo album and wiping cloth are in the Cupboard.
Instead of examining the Cupboard, say "It's a dusty wooden cupboard."
Instead of examining the Old photo album, say "A bunch of 20+ year old photos. You don't recognize anyone in them."
Instead of examining the Wiping cloth:
	if has_been_in_lavabo is true:
		say "This cloth might be useful to clean the Lavabo.";
	otherwise:
		say "This cloth might be useful if you need clean something.".

Section 3.3 In the inner bathroom

has_found_spider is initially false.
After going to the Inner bathroom:
	now has_found_spider is true.
A spider is a neuter animal in the Inner Bathroom. "A cute little brown spider. It probably won't kill you."

Section 3.4 Garage

[Cobweb]
Cobweb is a thing in the Garage.
Instead of examining cobweb:
	if has_found_spider is true:
		say "Thank god the spider that made this is just a little cute animal.";
	otherwise:
		say "A spider has been here... I hope it's not a dangerous spider.".

[Pile of boxes]
Pile of boxes is a thing in the Garage.
Instead of taking Pile of boxes, say "There are a lot of boxes. You can't carry all of them. Besides that, this boxes probably would be useless.".
The description of pile of boxes is "I guess every single box is just trash".

[ Broom ]
has_fixed_the_broom is initially false.
A Broken broom is a thing in the Garage.
Instead of examining the Broken broom:
	if has_fixed_the_broom is true:
		say "It looks like a new broom!";
	otherwise:
		say "The broomstick is broken, but it doesn't seem hard to fix.".

[Work bench]
Work Bench is a supporter in the garage.
Instead of examining Work Bench, say "It's a work bench. But you are no specialist in tools, so it's just a table with a toolbox.".

[ Toolbox ]
A Spanner is a thing.
A Screwdriver is a thing.
A Silver Tape is a thing.
A Hammer is a thing.
Toolbox is an openable closed container on Work Bench.
Spanner, Silver Tape, Hammer and Screwdriver are in the Toolbox.
Instead of taking toolbox, say "It's too heavy. It's better just take what you need. ".
The description of Spanner is "It's a tool. I don't think it would be useful for you today.".
The description of Hammer is "You don't have any nails to driving in with a hammer. But it's also great to destroy things!".
The description of Screwdriver is "You don't have any screws to screw. Maybe you would need it to unscrew some screws.".
Instead of examining Silver Tape:
	if has_been_in_lavabo is true: 
		say "It's a great tool to fix things.";
	otherwise:
		say "Maybe it would be useful to fix the broken broom.".


Chapter 4 People

[ Aunt (Living Room) ]
The Aunt is a woman. "Your old aunt sleeps quietly on her creaky recliner."
The Aunt is on the Reclining chair. The indefinite article of the aunt is "your".
Instead of examining the aunt, say "You don't really know how old your aunt is, but you're pretty sure she's over 100."

Chapter 5 What Happens when entering

Being Outside the House is a Scene.
Being Outside the House begins when play begins.
Being Outside the House ends when player is in Hall.

Before taking the Main Key during Being Outside the House:
	Say "You know your hand is going to smell of iron afterwards, but you pick up the key anyways.".

When Being Outside the House ends:
	Say "It feels good to leave the sunny outside.".

Figure of InitialPicture is the file "house-bright.jpg"

When play begins:
	Display the Figure of InitialPicture;
	Say "The afternoon is incredibly hot as the sun shines strongly on the lawn.".