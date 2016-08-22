"Grubbyville" by Andrew Schultz

book release with

the story headline is "A Story of High School Ambition"

release number is 1.

release along with a website.

release along with an interpreter.

release along with a file of "basic walkthrough" called "intro-thru.txt".

Book includes

include reactable quips by michael martin.

include quip-based conversation by michael martin.

section i6 stuff

Include (- Switches z; -) after "ICL Commands" in "Output.i6t".

Book globals

use no scoring.

release along with cover art.

a thing can be examined or unexamined. a thing is usually unexamined.

a book is a kind of thing. a book can be read or unread. a book is usually unread.

before examining (this is the mark as examined rule) :
	if the noun provides the property examined, now noun is examined;

intromode is a truth state that varies.

when play begins ( this is the introcomp rule):
	now intromode is true;

debug-state is a truth state that varies.

to d (tt - text):
	if debug-state is true:
		say "DEBUG: [tt][line break]";

to dn (tt - text):
	if debug-state is true:
		say "DEBUG: [tt]";

the block burning rule is not listed in any rulebook.

check burning:
	if player does not have lighter:
		say "You have no source of fire." instead;
	if noun is lighter:
		say "Try to BURN X instead.";
	if noun is yearbook pass:
		say "[if Myron Knurp is visible]Well, that was stupid. And mean. Myron calls security on you, and you're escorted out[else]Foom! The yearbook pass goes up in flames quicker than you expected. You yell in surprise, alerting the security guards[end if]. Your bit of performance art means you won't be getting into art independent study.";
		end the story;
	if noun is book of modern chess strategy:
		if dennis is not visible:
			say "Nobody to show off to. Nobody who cares about the book." instead;
		say "'You--you...' Dennis's language isn't what you'd expect from a gentlemen's game.";
		now chess strategy is in lalaland;
		now dennis is vnast instead;

book values

a person can be youish, neut, nast, niced, vnast, vnice, meeted or slyed. a person is usually neut.

the player is youish.

every turn:
	if number of visible neut people > 0:
		now all visible neut people are meeted;

Book stuff-to-say

to say fake-time-of-day:
	say "MORNING";
[	let X be the remainder after dividing turn count by 6;
	let Y be the remainder after dividing turn count by 360;
	let Y be Y divided by 6;
	let Z be the remainder after dividing turn count by 21600;
	let Z be Z divided by 360;
	let Z be Z plus 10;
	[say "[turn count] -- ";]
	if Z > 12:
		say "[Z - 12]:[if Y < 10]0[end if][Y]:[X]0 PM";
	otherwise if Z is 12:
		say "[Z]:[if Y < 10]0[end if][Y]:[X]0 PM";
	otherwise:
		say "[Z]:[if Y < 10]0[end if][Y]:[X]0 AM";]

Check an actor going (this is the can't go this way rule):
	if the room gone to is nothing:
		say "There's a wall there. You should know GHS like the back of your hand after three years--and after a brief look, you see you can go [list of viable directions]." instead;

definition: a direction (called q) is viable:
	if the room q of the location of the player is nothing, decide no;
	decide yes;

the can't go that way rule is not listed in any rulebook.

book stock verbs

instead of waiting:
	say "You take a moment to pause. Not too long, of course[one of]. (NOTE: game time isn't tracked by turn count, so you can never actually run out of time.)[paragraph break][or][stopping]."

instead of singing:
	say "No, you wouldn't make it into Choir Honors."

instead of eating:
	say "You had a big breakfast. You won't need to eat. Not that anything's really edible around here. Even in the cafeteria."

instead of jumping:
	say "You made it into Gym Honors, but that's only because showing up is 80% of your gym grades. The other 15% is hiding contempt for gym teachers. Fitness tests are 5%."

instead of looking under:
	say "Nothing is hidden in the game."

instead of kissing:
	say "This is not a romance game." instead;

the block sleeping rule is not listed in any rulebook.

instead of touching:
	say "You need to poke around with ideas, not [if noun is a person]people[else]things[end if].";

instead of sleeping:
	if player is in chess hovel:
		say "That would've worked in eighth grade to 'prove' Dennis is boring, but not any more." instead;
	if player is in school yearbook office:
		say "That would've worked in eighth grade to 'prove' Myron is boring, but not any more." instead;
	if player is in computer science:
		say "It's comfy enough here, but no." instead;
	if player is in math study area:
		say "That'd be a principled stand, but you have work to do." instead;
	say "That'd be an embarrassing way to get a detention."

instead of attacking:
	say "That's beneath you. And it'd get you suspended.";

understand the command "sing" as something new.
understand the command "wave" as something new.

instead of dropping:
	say "You don't like to litter. Especially stuff that could be, or is, useful."

instead of pushing:
	say "You'll need to be pushy, but physical pushing won't do much good.";

instead of pulling:
	say "You'll need to exercise pull, but physical pulling won't do much good.";

instead of searching:
	if noun is shelf of chess books:
		say "There's no secret passage, and if there were, it'd lead back to the social lounge anyway." instead;
	say "Nothing secret's there. Or anywhere, sadly."

instead of taking scenery:
	say "You're not super weak, but you're smart enough to know when something's too heavy."

Book rooms -- outer

A room can be in-remembrance, remembered, unremembered, unmemorable or memorable. A room is usually unmemorable.

Chapter Entry Hall

Entry Hall is a room. "[if Entry Hall is unvisited]What a way to start the day. You've been through the Entry Hall countless times before, but never in the middle of summer. The Help Hole to the north is blocked off--tutoring during the school year--and the hall continues west to by the teachers[apostrophe] lounge.[otherwise if by teachers' lounge is unvisited]You're staring around Entry Hall, though you're not sure why. The Help Hole to the north is closed for the summer, so you should be getting a move on to the west.[otherwise]You wandered around back here, for some reason. The only way back is west.[end if][paragraph break]Of course, you can always chicken out back east. That'd make everyone except Pop happy."

after printing the locale description for Entry Hall when Entry Hall is unvisited:
	say "VERBS will tell you verbs used in the game, and THINK will give you an idea of what to do and where to go.";
	continue the action;

instead of going north in entry hall:
	try going inside;

going outside in Entry Hall is running away.
going east in Entry Hall is running away.

run-away is a number that varies

instead of running away:
	increment run-away;
	if run-away is 1:
		say "You think about it. You almost can. It would be so easy, except it isn't. (Note: you really will leave if you try again.)[paragraph break]" instead;
	say "You leave Grubbyville behind. Pop asks why you came back empty-handed, and you come up with a mishmosh of moral misgivings and, well, if other kids found out it might be hard for you. Pop tells you he's heard Harley isn't as popular as he pretends to be, and you just blew a chance...well. You'll learn.[paragraph break]That June as Harley steps up to give his valedictorian speech, Pop looks at you pointedly to applaud. You two almost have a contest, who can applaud louder. After, some people congratulate you on your sportsmanship before segueing into complaining what a fake Harley is. It's not much consolation.";
	end the story saying "You Finished Second";

Chapter The Help Hole

The Help Hole is inside of Entry Hall.

check going inside in entry hall:
	say "You did your tutoring for Honors Society, and you can't actually get tutoring for a task like this." instead;

Chapter By Teachers Lounge

By Teachers' Lounge is a room. It is west of Entry Hall. "You can enter the teachers[apostrophe] lounge here. It's completely locked, since it's summer. You can also go west to X-Hall, the center of GHS, or east back to the Entry. There's also a rug here."

The rug is scenery in By Teachers' Lounge. "SAY NO TO DRUGS is woven into it, but someone duct-taped over the D. In fact, a lot of people did, and the administrators just gave up getting the janitors to peel it off."

instead of taking the rug:
	say "You wouldn't get far carrying it."

The D is part of the rug. "It's covered by some nasty duct tape."

The duct tape is part of the rug. "Several years of people walking over the tape have made it more or less a part of the rug."

instead of taking the duct tape:
	say "If you removed the tape, the rug fibers would just come off, and the rug'd look even tackier. Plus, used duct tape is useless."

chapter rolling

rolling is an action applying to one thing.

understand the command "roll [something]" as something new.

understand "roll [something]" as rolling.

carry out rolling:
	if noun is player:
		say "That's not the way to get on a roll, here." instead;
	if noun is not rug:
		say "You don't have a posse, so you can't roll [if noun is a person]him or her[else]that[end if]." instead;
	say "There's no secret stair to a basement below. Grubbyville High School is big enough." instead;
	the rule succeeds;

Chapter X-Hall

X-Hall is a room. It is west of By Teachers' Lounge. "X-Hall is the center of GHS. Corridors head in diagonal directions to the various departments, the teachers['] lounge is to the east, the upperclassmen's social area is south, and the testing room is to the north[if is-testing is true]. Looks like people are still taking a standardized test right now[end if]. You can go inside to the library, and a rusted elevator panel lies to the west."

check going inside in x-hall:
	say "Well, okay, I lied a bit. You can go inside in the full game." instead;

the rusted elevator panel is scenery in x-hall.

instead of doing something with the rusted elevator panel:
	say "You don't need to do anything with the rusted elevator panel. You're not sure why it's there, and you don't have time to find out, now. It's being curious about that sort of thing that can distract you from your business here."

check going west in X-Hall:
	say "No way you're finding the way in. You don't even know if the elevator would be there, or what it's for." instead;

is-testing is a truth state that varies. is-testing is usually true.

check going north from X-Hall:
	if is-testing is true:
		say "You shouldn't disrupt the testing. Nobody important may be taking those tests, but if people are distracted, GHS's average grades as a whole will suffer. That would make your valedictory less presitigious." instead;

Chapter Social Lounge

Social Lounge is south of X-Hall. "Back north is X-Hall. Ironically, you can go in to the Chess Hovel to the side of the social lounge, here."

Chapter Math and Science Wing

Math/Science Wing is northwest of X-Hall. "All the hard sciences are covered here: clockwise from south, you have Biology, Chemistry, Physics, Computer Science to the northwest (it's the only one open--independent study projects and all) and finally Math (math team off-season practice) to the north. The Earth Sciences department is upstairs."

Chapter Biology

Biology is south of Math/Science Wing.

Chapter Math

Math is north of Math/Science Wing. "You can go inside the math study area, which doubles as the math team's training room, if you'd like. Pneumonia Alley connects the science wing with the Arts wing."

there is a thing called list of birthdays. It is in Math. description of list of birthdays is "You look through today's, for curiosity's sake:[paragraph break]Thad Bings, Dennis Durfle, Pip O'Floppovich, Fredley Freydel, Simba Zabmis.[paragraph break]The only name you recognize is Dennis Durfle, [if chess hovel is visited]the chess guy[else]whom you saw today[end if]. Everyone knows who he is, but they don't know him."

check taking list of birthdays:
	say "You don't need to take it, but it maybe has useful information." instead;

after examining list of birthdays for the first time:
	enable the dennis-bday quip for dennis;
	enable the dennis-sad quip for dennis;
	enable the dennis-bye quip for dennis;
	continue the action;	

check going east in math:
	say "While you can't catch pneumonia there in the summer, you won't need to go through Pneumonia Alley for the introduction." instead;

Chapter Chemistry

Chemistry is southwest of Math/Science Wing.

Chapter Physics

Physics is west of Math/Science Wing.

Chapter Computer Science

Computer Science is northwest of Math/Science Wing. "This lab is full of computers that aren't quite as good as what you have at home. Most are off, but one PC is humming away. You see [if backpack is examined]Tod Smoot's[else]a[end if] backpack by it."

the backpack is scenery in Computer science. "The backpack appears to be Tod Smoot's[if played-thru is false]. He's kind of a jerk, from what you know but you don't want to look through his stuff without SERIOUS provocation. Maybe you'll find it[else][one of]. You wouldn't normally look through it, but after playing that game...well, there are notes for others, including CASINO FUN by NO FUN CASEY.[paragraph break]It has with formulas for the probability of turning $50 into $100 playing craps, and if you play, you either go broke tonight or get hooked on gambling and go really broke ten years from now. The game will note playing it saved you three hours you would've wasted rolling dice and a headache from the noise, and it also lets the user see the formula used so it didn't have to bother actually simulating all those dice rolls.[paragraph break]There's also notes for a game called Being Dennis Durfle[den-chess]. It's light on the technical stuff but in-depth in the usual hit-piece ways[note-den][or]. Man. Rough satire about casinos and Dennis Durfle[stopping][end if]."

understand "pack/bag" and "back pack" as backpack.

to say den-chess:
	say "[if chess hovel is unvisited], the guy who's good at chess[end if]";

to say note-den:
	enable the dennis-game quip for dennis;
	enable the dennis-bye quip for dennis;

instead of doing something with the backpack:
	if current action is searching:
		say "That'd be suspicious. But fortunately it's got a paper right in plain view. Probably someone wanted people to see it.[paragraph break]";
		try examining the backpack instead;
	if current action is examining:
		continue the action;
	say "That's someone's property. Better not do much more than look."
		
the working PC is scenery in computer science. understand "computer" and "working computer" as PC.

check talking to pc:
	if playing-it is false:
		say "Whoah. Nerdville, there." instead;

playing-it is a truth state that varies.

played-thru-twice is a truth state that varies.

check examining the working pc:
	if played-thru-twice is true:
		say "You've seen the entire game. It doesn't need further replay." instead;
	if played-thru is true:
		say "You play through as [pc-him] this time. The Disgruntled Intellectual club appears to hate you and Harley equally. They couldn't even bother to let you unlock a hidden character.";
		now played-thru-twice is true;
		the rule succeeds;
	say "You aren't expecting much, maybe some assignment on heap sorts or whatever. But wait! It's a game! A sort of cheap one, but a game nonetheless![paragraph break]It's...PARTICIPATION POINTS, by the Disgruntled Intellectuals Club. It features Harley Drotz and...you! Play it? (yes or no)";
	if the player consents:
		say "WHO WILL YOU PLAY AS?";
		now playing-it is true;
		now qbc_litany is the table of PC options;
		display the qbc options;
		now playing-it is false;
		the rule succeeds;

Include (-
	has transparent talkable
-) when defining PC.

check taking pc:
	say "Theft. Illegal. And impractical. Plus you have a better computer at home." instead;

understand "game" as pc when played-thru is true.

to say pc-u:
	say "[if is-max is true]Max[else]Harley[end if]"

to say pc-him:
	say "[if is-max is false]Max[else]Harley[end if]"

table of quip texts (continued)
quip	quiptext
pc-dro	"Well, it's you against Max Herdesh. It's sort of like the two political parties, but you're going with pure force over outer weenieness."
pc-max	"Well, it's you against Harley Drotz. It's sort of like the two political parties, but you're going with outer weenieness over pure force."
pc-h-berate	"You berate other students for not participating as much as you. Max nods in agreement."
pc-m-berate	"You berate other students for not participating as much as you. Harley nods in agreement."
pc-m-snivel	"The teacher appreciates your alternate view on life compared to Harley. It's a bold gambit, but not really, because you always manage to say people may not agree with you, but there you go."
pc-h-brag	"Of course, what you say sounds original--but you've done your research, and you know Mr. Jones goes in for that sort of thing."
pc-m-argue	"You and Harley argue for a bit, and Mr. Jones moans he wishes more students would participate so enthusiastically."
pc-h-argue	"You and Max argue for a bit, and Mr. Jones moans he wishes more students would participate so enthusiastically."
pc-ditch-j	"It doesn't seem terribly detailed. And you're curious how it ends."

table of PC options
prompt	response	enabled
"HARLEY DROTZ"	pc-dro	1
"MAX HERDESH"	pc-max	1
"Berate other students"	pc-m-berate	0
"Snivel"	pc-m-snivel	0
"Argue with Harley"	pc-m-argue	0
"Berate other students"	pc-h-berate	0
"Brag"	pc-h-brag	0
"Argue with Max"	pc-h-argue	0
"Ditch this stupid game"	pc-ditch-j	1

played-thru is a truth state that varies.

is-max is a truth state that varies.

after quipping when qbc_litany is table of PC options:
	if current quip is pc-dro:
		now is-max is false;
		enable the pc-h-berate quip;
		enable the pc-h-brag quip;
		enable the pc-h-argue quip;
		disable the pc-max quip;
		enable the pc-ditch-j quip;
	else if current quip is pc-max:
		now is-max is true;
		enable the pc-m-berate quip;
		enable the pc-m-snivel quip;
		enable the pc-m-argue quip;
		disable the pc-dro quip;
		enable the pc-ditch-j quip;
	repeat through table of pc options:
		if enabled entry is 1 and response entry is not pc-ditch-j:
			continue the action;
	say "WOW! WHAT A BUSY DAY! ALTHOUGH IT WAS NOTHING SPECIAL FOR YOU, [if is-max is true]MAX[else]HARLEY[end if]! IT REALLY IS THAT EASY, IF IT'S EASY![paragraph break]Harsh.[paragraph break]IF YOU HATED THIS GAME, THE DISGRUNTLED INTELLECTUALS CLUB DOESN'T CARE! OKAY, WE SORT OF DO![paragraph break]You have to admit. You're curious now. And a little annoyed. Even without the ten control-g bells at the end of the game.[paragraph break]You groan and roll your eyes, and the backpack gets your attention. Whoah, a sequel, or something. You wouldn't normally mess with others['] property, but hey, they baited you, and you aren't going to STEAL it.";
	now played-thru is true;
	terminate the conversation;

Chapter Earth Science/Astronomy

Earth Science/Astronomy is above Math/Science Wing. "The only way back is down."

Chapter Arts Wing

Arts Wing is northeast of X-Hall.

Chapter Fine Arts

Fine Arts is northeast of Arts Wing.

Chapter Applied Arts

Applied Arts is east of Arts Wing.

Chapter Food Sciences

Food Sciences is above Applied Arts.

Chapter Verbal Arts

Verbal Arts is north of Arts Wing.

Chapter Humanities Wing

Humanities Wing is southeast of X-Hall. "This is the Humanities Wing of Grubbyville High School. It has various activities you can't put a price on, and it encourages people to have careers that won't make much money.[paragraph break]The World Languages Sub-Wing is south, the Social Studies Sub-Wing is southeast, and the English Sub-Wing is east. The Social Studies Sub-Wing is actually open, because it houses the yearbook staff, too."

Chapter English

English is east of Humanities Wing.

Chapter Social Studies

Social Studies Sub-Wing is southeast of Humanities Wing. "[one of]This sub-wing, part of a NW/SE hall, brings back bad memories of a teacher who couldn't quite find enough subjectively wrong with your work to give an A-. Still, it's an annoying memory[or]This is a NW/SE hall[stopping]."

check going southeast in social studies:
	try going inside instead;

check going inside in social studies:
	if player has yearbook pass:
		say "You don't want to deal with Myron Knurp more than you need to." instead;

Chapter World Languages Sub-Wing

World Languages is south of Humanities Wing. "You see the parking lot to the west. The main Humanities Wing is back north. You may also enter the Language Lab."

Chapter Life Preparation Wing

Life Preparation Wing is southwest of X-Hall. "Every wing is a life preparation wing here at GHS, but some prepare for better lives than others. The one that actually says it is, of course, is the lamest."

[every wing is a life preparation wing. Duh.]

Chapter Gym

Gym is southwest of Life Preparation Wing.

Chapter Drivers' Ed

Drivers' Ed is south of Life Preparation Wing.

Chapter Health

Health is west of Life Preparation Wing.

Chapter Parking Lot

Parking Lot is east of Drivers' Ed and west of World Languages.

[blah blah]

Chapter Pneumonia Alley

Pneumonia Alley is east of Math and west of Verbal Arts.

the lighter is a thing in pneumonia alley. description is "It has PROPERTY OF CRAZY RAY Z on it."

Chapter Testing Room

Testing Room is north of X-Hall.

Book rooms -- inner

Chapter Teachers' Lounge

Inside of By Teachers' Lounge is a room called Teachers' Lounge.

Chapter Library

Library is inside of X-Hall.

Chapter Math Study Area

Math Study Area is inside from Math. "The Math Study Area is full of all kinds of mathy things that are supposed to make math fun."

Chapter Chess Hovel

Chess Hovel is inside from Social Lounge. Chess Hovel is memorable. "You can really only go back outside from here."

Chapter Theater

Theater is inside from Fine Arts.

Chapter AV Room

AV Room is inside from Applied Arts.

Chapter School Paper Office

The School Paper Office is a room.

The paper office door is a door. It is inside of English and outside of the school paper office.

Chapter Yearbook Office

check pushing a door:
	say "You can just walk through an open door instead." instead;

check pulling a door:
	say "You don't usually need to close doors." instead;

School Yearbook Office is a room.

check going northwest in yearbook office:
	try going outside instead;

the yearbook office door is an open door. It is inside of Social Studies and outside of the school yearbook office. initial appearance of yearbook office door is "An open door leads [if player is in school yearbook office]northwest[else]southeast[end if] [if location of player is social studies]into[else]back out of[end if] the yearbook office.". description of yearbook office door is "It has YEARBOOK OFFICE written on it. Original."

check taking a door:
	say "Senior pranks are nine months away." instead;

check closing a door:
	say "There's no need to." instead;

Myron Knurp is a person in Yearbook Office. "Myron Knurp fidgets and chews his nails here[if player does not have yearbook pass]. At the sight of you, he hastily guards a yearbook pass[end if].". description of Myron Knurp is "He doesn't gaze right up at you. You're not surprised he had no nerve to tell his colleagues he doesn't want to do drudge work on a summer Saturday morning."

the litany of Myron Knurp is table of mychat.

the yearbook pass is a thing in yearbook office. "A yearbook pass, just the thing to patrol the halls of GHS, lies here. But Myron Knurp is guarding it.". description is "[if player has yearbook pass]It's laminated and neon-ish, and nobody questions its authority. Though it also expires at the end of the day[else]The name of the bearer is blank. It would be nice to have one[end if]."

after choosing notable locale objects:
	set locale priority of yearbook pass to 0.

instead of taking yearbook pass:
	say "'It's not that easy, Herdesh. You don't work for the yearbook. And they told me not to let someone run over me to get it.'"
	
table of mychat
prompt	response	enabled
"'Hey, Myron, what's up?'"	myron-up-quip	1
"Share a few up-to-date jokes"	share-jokes	0
"'Yeah, but I'd like to join the yearbook staff.'"	like-yearbook	0
"'C'mon, just a loan.'"	just-a-loan	0
"'C'mon, someone'll con you out of it, why not someone respectable?'"	someone-else-will	0
"(bribe him)"	bribe-myron	0

table of quip texts (continued)
quip	quiptext
myron-up-quip	"'The sky.'[paragraph break]That joke's so bad, it'll never be so bad it's good.[paragraph break]You frown and glance meaningfully at the hall pass.[paragraph break]'No you don't. That's yearbook staff property. And you're not yearbook.'"
share-jokes	"You share a few jokes with Myron in general. He seems appreciative of your camaraderie and has a few forehead-slapping moments of THAT'S WHAT THEY MEANT. He writes down a few comedians['] books to research at the library and nudges the hall pass towards you--in case you need it--you won't be doing anything illegal. After some I couldn't/I insist pong. Sheesh, you find yourself vaguely volunteering. Nothing full-time, of course."
like-yearbook	"You explain you'd like to be on the yearbook, just because. Maybe you could help him with some of the drudgework. But you might need lunch first. Fair enough, says Myron, as he hands you a temporary pass for the day. "
just-a-loan	"He opens his mouth to protest, but really, he doesn't want to drag negotiations out. You motion for him to give it, and he does."
someone-else-will	"The logic makes sense to him. There's no use pretending he can stand up for himself. He seems relieved by what you had to say. He'll get away without being yelled at."
bribe-myron	"Really? Myron's the sort of person who bribes others with his lunch money."

after quipping when current quip is myron-up-quip:
	enable the like-yearbook quip;
	enable the just-a-loan quip;
	enable the someone-else-will quip;
	enable the bribe-myron quip;
	enable the share-jokes quip;

after quipping when current quip is like-yearbook:
	now Myron Knurp is slyed;
	get-pass;

after quipping when current quip is just-a-loan:
	now Myron Knurp is slyed;
	get-pass;

after quipping when current quip is someone-else-will:
	now Myron Knurp is nast;
	get-pass;

after quipping when current quip is share-jokes:
	now Myron Knurp is niced;
	get-pass;

to get-pass:
	disable the like-yearbook quip;
	disable the just-a-loan quip;
	disable the someone-else-will quip;
	disable the bribe-myron quip;
	now player has yearbook pass;
	terminate the conversation;
	
check talking to myron:
	choose row with response of myron-up-quip in table of mychat;
	if enabled entry is 0:
		say "It's already been awkward enough. You have your pass. [if math/science is visited]It's led you new places. Time to find more[else]Time to use it to explore new possibilities[end if]." instead;

check giving something to myron:
	if noun is yearbook pass:
		say "You'll take care of returns later." instead;
	if player has yearbook pass:
		say "You've gotten enough from him." instead;
	say "He doesn't seem open to bribes." instead;

check giving the spreadsheet to someone:
	say "That's pretty confidential stuff." instead;

Chapter Language Lab

Language Lab is inside World Languages.

Book items

Chapter brochures

does the player mean reading a brochure: it is very likely.
does the player mean doing something to the brochure rack: it is very unlikely.

A brochure is a kind of thing. A brochure can be read or unread. A brochure is usually unread. A brochure can be smart or dumb. A brochure is usually dumb.

The brochure rack is in By Teachers' Lounge. The brochure rack is fixed in place.

Section GHS brochure

The GHS brochure is in the brochure rack.

check taking GHS brochure:
	say "You already know enough about GHS. You understand the inner workings pretty well, and of course brochures never cover that." instead;

description of GHS is "You see nothing special about the GHS brochure and the ways it extols GHS. You've heard/read it all in three years."

instead of taking brochure rack:
	say "That sort of stupid prank does not behoove a fine young American of valedictorian aspirations. Plus it's ugly tacky plastic."

Chapter book of math puzzlers

The Book of Modern Chess Strategy is in the Math Study Area.

report taking book of modern chess strategy:
	say "Taken. Geez, it's as painful to slug around as a textbook.";

check examining the Book of Modern Chess Strategy:
	say "[one of]A piece of paper flutters out. CONFISCATED FROM DURFLE FOR READING DURING CLASS, MAY 20. You can't help paging through, but this book still goes off the deep end really quickly. I mean, you remember not just how the horsey moves but even how en passant works, and there was even that time you let some sucker castle across check so you won their rook for a bishop[or]While you notice 'Dennis Durfle' written in the upper left, you can't make any sense out of the bit on [one of]positional pawn sacrifices[or]the Queenside minority attack[or]isolated queen pawn formations[or]hanging pawn formation[or]two-bishop versus bishop and knight examples[or]light- and dark-square weakness exploitation[or]pawn levers and YOU[or]endgame transitioning[or]two grandmasters shuffling pieces around for seventy-odd moves[or]opposite-colored bishops in the middlegame and endgame[or]pluses and minuses of doubled pawns[or]when and why you can and should break some esoteric rule that doesn't make sense in the first place[or]long-term rook-for-bishop/knight sacrifices[or]attacks on a backwards pawn[or]opposite-side castling attacks[or]weird positions with all the pawns locked[in random order][stopping]." instead;

dennis-ready is a truth state that varies.

before talking to dennis:
	if modern chess strategy is not in lalaland:
		say "'Go away. I don't trust you.'" instead;
	if dennis-ready is true:
		say "'You know what, Dennis? I changed my mind.'[paragraph break]";
		end-the-intro instead;
	repeat through table of dennis chat:
		if enabled entry is 1:
			continue the action;
	say "Awkwardness. Nothing to talk about with Dennis right now." instead;

to end-the-intro:
	say "You take a closer look at Dennis's note. It's a lot more coherent and funny than you'd imagined. You're almost...jealous. You find yourself riffing on it--like you're not totally happy with Grubbyville. You wonder how serious he is about not really wanting any credit. Maybe he'll backstab you later. I mean, If you can think ten moves ahead in chess, what else can you plan?[paragraph break]But with this writing, you feel like you [if knurp is slyed]should be able to shmooze[else if knurp is niced]might have some legitimate common ground[else]won't be a total poseur in the arts wing. Or, well, the poseurs there can't make you feel like one[end if].";
	end the story saying "INTRO IS OVER";
	say "[line break]Leaving the Chess Hovel behind, you feel like ";
	if number of niced people > number of nast people:
		say "maybe you could make more out of Art Appreciation Independent Studies than outdoing Harley.";
	else if number of niced people is number of nast people:
		say "this grades thing is just business. You're not finding some huge tax loophole. Harley started it. Someone will find a new loophole next year.";
	else:
		say "you can really show Harley what's what, and people better not get in your way."

table of quip texts (continued)
quip	quiptext
dennis-bday	"'How did you know?' You explain something about the math team, and he launches into turf wars between the math and chess teams, and how people who are on both are extra annoying. You nod in agreement. He seems almost surprised."
dennis-sad	"'I knew it! You just gave me the book to get a cheap shot in. I felt guilty writing this--about the kids who get good grades. But I guess it's true.'[paragraph break]You notice a paper lying under a book Dennis is reading. 'This one?' you say, taking it. Dennis grabs for it. You run out. 'AND STAY OUT,' you hear, as the door locks.'"
dennis-game	"'Whoah. Those hacker types. They're pretty rough.'[paragraph break]'Yeah,' you say. 'They got me, already.'"
dennis-bye	"He mutters a good-bye and goes back to his tactics."

table of dennis chat
prompt	response	enabled
"Oh, hey, man. Happy birthday. Why are you spending it here?"	dennis-bday	0
"You know it's pretty sad to be spending a birthday in summer at SCHOOL..."	dennis-sad	0
"So you probably didn't see the game the Disgruntled Intellectual Club wants to write about you?"	dennis-game	0
"So, yeah, bye."	dennis-bye	0

after quipping when qbc_litany is table of dennis chat:
	if current quip is dennis-bday or current quip is dennis-game:
		trust-dennis;
	if current quip is dennis-sad:
		terminate the conversation;
		now dennis is nast;
		end-the-intro;
	if current quip is dennis-bday or current quip is dennis-sad:
		disable the dennis-sad quip;
	if current quip is dennis-bye:
		enable the dennis-bye quip;
		terminate the conversation;
	continue the action;

dennis-trust is a number that varies.

to trust-dennis:
	increment dennis-trust;
	if dennis-trust is 2:
		say "'Man. I didn't know we were bummed by the same stuff. But you asked me what I'm doing here. What are YOU doing here?'[paragraph break]After you explain, Dennis continues, 'Well, enemy's enemy stuff, I guess. Still can't forgive Harley for, um...look, I have something that can help you. I wrote some really satirical protest poetry or something but if I submitted it to the school art magazine, they'd say I was just some bitter dork. You'd give it gravitas and stuff. What do you say? I just want to get the message out.' (yes or no)";
		if the player consents:
			end-the-intro;
		else:
			say "'Talk to me if you change your mind.'";
			now dennis-ready is true;
		disable the dennis-bye quip;
		terminate the conversation;
	else:
		say "Dennis looks like he almost trusts you.[paragraph break]";

[	say "Hm. This is interesting. You turn to the bookmarked page, and there's something about how all cows are brown:[paragraph break]1. one cow is brown[line break]2. Assume all groups of N cows are brown. Then cows 1..N and 2..N+1 in a group of N+1 cows are brown. Ergo, all cows are brown.[paragraph break]You realize smart people might fall for this sort of baloney, too.";]

	[now player has induction;]
[?? knowing is a relation applying to one concept. REVIEW concept]

[?? bookmark]

Book people

Dennis Durfle is a male person in Chess Hovel. "Dennis Durfle paces here in front of a shelf of chess books, reading a chess book and mumbling to himself.". description is "You remember being horrified when you barely placed above Dennis on both a female and male list of Who's Hot. He's not ugly, but he sure frowns a lot, so he might as well be."

does the player mean giving strategy to dennis durfle: it is likely.

the litany of dennis durfle is the table of dennis chat.

does the player mean doing something with the chess strategy book: it is likely.

The shelf of chess books is scenery in Chess Hovel. "A dizzying array of books with weird names."

understand "book" as shelf of chess books.

check taking shelf of chess books:
	say "You wouldn't know where to start." instead;

check giving the strategy book to Dennis:
	say "'Hey! Wow! Where'd you...? But Big Ed... oh, man! I'd been missing that two months! Thanks! I...I was about to go buy a new one.'";
	now Dennis is vnice;
	now strategy book is in lalaland instead;

Book parser errors

rule for printing a parser error when the latest parser error is didn't understand error:
	if the player's command matches the regular expression "^<0-9>":
		say "You gave a numerical command, but you're not in a conversation any more, so you can go back to words. VERBS has the list.";
		reject the player's command;
	say "[one of]You got a great score on the SAT Verbal, but really...no need to try anything fancy. Just type VERBS to see what actions this game recognizes[or]That wasn't a recognized verb. You may wish to try something from VERBS[stopping].";
	reject the player's command;
	
rule for printing a parser error when the latest parser error is i beg your pardon error:
	try waiting instead;
	reject the player's command;
	
Book verbs

Chapter out of world

section xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "Text adventure in-jokes? You with a Sega Genesis you're too busy to play and an old NES--the one you still can't quite admit is passe and NOT coming back, EVER--can and should do a lot better.";
	the rule succeeds;

["You're not one of the Really Cool Kids, but still--kids who make up nonsense words kind of, well, have to admit they're weird, you know? Except they don't. Weird."]

Section thinking

a procedural rule: ignore the block thinking rule.

[thinking is an action out of world. understand the command "think" as something new. understand "think" as thinking.]

carry out thinking:
	if chess hovel is unvisited and school yearbook office is unvisited:
		say "You haven't met anyone yet. But they are there. People with extra-EXTRA-curricular activities must be around." instead;
	if yearbook office is visited and player does not have yearbook pass:
		say "Maybe you could wangle a yearbook pass from Myron Knurp." instead;
	if dennis-trust is 0:
		if birthdays is examined:
			say "Boy! Dennis Durfle could use a birthday gift." instead;
		say "Hm, maybe you could get Dennis Durfle to trust you." instead;
	if dennis-trust is 2:
		say "You should take up Dennis's offer." instead;
	if book of strategy is in lalaland:
		say "Maybe look for some other common ground you have with Dennis." instead;
	else:
		say "Maybe Dennis is missing something you can find." instead;

Section profanity

a procedural rule: ignore the block swearing mildly rule.
a procedural rule: ignore the block swearing obscenely rule.

swear-count is a number that varies. swear-count is usually 0.

swear-bogus-count is a number that varies. swear-bogus-count is usually 0.

check swearing obscenely:
	say "Dude, chill[if swear-count > 3]. Seriously[end if][if swear-count > 7]. You can cuss when complaining to your pals later[end if].";
	increment swear-count instead;
	
swear-bogus-count is a number that varies. swear-bogus-count is usually 0.

check swearing mildly:
	say "Dude, that was hella lame[if swear-bogus-count > 3]. Seriously[end if][if swear-bogus-count > 7]. Even real cusses won't help[end if].";
	increment swear-bogus-count instead;
	
Section score

score-warned is a truth state that varies.

to decide what number is slyness:
	decide on number of slyed people.

to decide what number is nastiness:
	decide on number of nast people + (2 * number of vnast people).

to decide what number is meetiness:
	decide on number of meeted people.

to decide what number is niceness:
	decide on number of niced people + (2 * number of vnice people).

to decide what number is noot:
	decide on number of neut people.

check requesting the score:
	let need-comma be false;
	if slyness > 0 and nastiness > 0:
		now need-comma is true;
	if word number 1 in the player's command is "score" and score-warned is false:
		now score-warned is true;
		say "Your weekend vision quest in Grubbyville High School is about more than some silly old game score. It's about your future. MOOD is more appropriate.[paragraph break]";
	say "Your current mood is [player-mood]. ";
	if slyness + nastiness + niceness is 0:
		say "You haven't done anything to change your mood yet.";
		the rule succeeds;
	say "You've done ";
	if slyness > 0:
		say "[slyness] sly thing[if slyness > 1]s[end if]";
	if nastiness > 0:
		say "[if niceness is 0 and slyness > 0]and [end if][nastiness] nasty thing[if nastiness > 1]s[end if]";
		now need-comma is true;
	if niceness > 0:
		say "[if need-comma is true], [end if][if slyness + nastiness > 0]and [end if][niceness] nice thing[if niceness > 1]s[end if]";
	say ". You can list everything you've done with DONE.";
	the rule succeeds;

chapter playing

playing is an action applying to one thing.

understand the command "play" as something new.

understand "play [something]" as playing.

carry out playing:
	if noun is dennis:
		say "Oh, he'd totally whoop you. It'd be no fun for anyone." instead;
	if noun is not pc:
		say "That's not very fun." instead;
	try examining pc instead;
	the rule succeeds.
	
Chapter reading

reading is an action applying to one thing.

understand the command "read" as something new.

understand "read [something]" as reading. understand "read" as reading.

before reading:
	if noun is a person:
		say "You try to size up [noun] but you can't quite figure their emotions at the moment." instead;
	if noun is shelf of chess books:
		say "It'd take too long to get started." instead;
	if noun is not a book and noun is not a brochure:
		say "That's not readable." instead;

carry out reading:
	say "Incomprehensible rubbish." instead;
	

Section remember/rememberplus (action applying to one thing)

remembering is an action applying to nothing.

rememberplusing is an action applying to one topic.

carry out remembering:
	if location of player is remembered:
		say "You can't really change what you did." instead;
	if location of player is unmemorable:
		say "This place isn't of much consequence." instead;
	if location of player is in-remembrance:
		say "You already are." instead;

understand the command "remember" as something new. understand "remember" as remembering.

carry out rememberplusing:
	say "If you know what you want to remember ahead of time, it isn't really remembering. Try REMEMBER instead." instead;

understand the command "remember [text]" as something new. understand "remember [text]" as rememberplusing.

Book scenes

Chapter chess game

chess game is a scene. chess game begins when chess hovel is in-remembrance. chess game ends when chess hovel is remembered.

Volume basics

Section Your spreadsheet

The spreadsheet is a thing. "Pop's spreadsheet that breaks down your situation is here."

understand "sheet" as spreadsheet

The description of the spreadsheet is "It's got a comparison of your grades to Drotz's, a brief explanation of how Grubbyville awards GPA, and a listing of teachers and administrators with whom Pop has discussed your newfound interest in the study of art.[paragraph break]The math still makes sense. Harley's got an extra 4.5, which lowers his average from 4.6, but if you slip and get an A-, it's like he's got an extra 4.8."

The listing is part of the spreadsheet. understand "teachers/administrators/list" as the listing.

The description of the listing is "It notes the following important contacts:[line break]--Wygle, the star art teacher[line break]--Mahe, the department chair[line break]--Heggs, administrator who signs off on independent studies.".

The explanation is part of the spreadsheet.

The description of the explanation is "[fixed letter spacing]4=A 3.7=A- 3.3=B+
3=B 2.7=B- 2.3=C+
2=C 1.7=C- 1.3=D+
1=D 0=F
1 bonus for AP (advanced placement,) .5 for H (honors,) all averaged together."

The description of the comparison is "[fixed letter spacing]
[line break]AP=advanced placement H=honors R=regular
[line break]Each course = 1 semester
[line break]
[line break]JUNIOR YEAR     AP (5.0) H (4.5)  R (4.0) Avg
[line break]Max now:        6        34       2       4.547 (wins tiebreak due to fewer A-[']s)
[line break]Drotz now:      6        34       2       4.547
[line break]
[line break]SENIOR YEAR     AP (5.0) H (4.5)  R (4.0) Avg
[line break]Max w/art:      14       39       3       4.598
[line break]Drotz ceramics: 14       40       2       4.607
[line break]Max w/AAIS:     14       39       2       4.611
[line break]
[line break]Auditing 4.0 (art appreciation independend study)
[line break]    = .6 below the average but DOESN'T COUNT
[line break]
[line break]Taking honors (4.5) = just below the average
[line break]
[line break]A- = .3 below A
[line break]Don't screw up!
[variable letter spacing]"

The comparison is part of the spreadsheet. understand "grades" as comparison.

Volume At Home (1)

Pop is a youish man. "Pop taps his foot as you stare around your room. (Note: type REPEAT to see how you can respond to him.)". description of Pop is "He nods at you as if to say, stop staring and start listening. Or is that stop listening and ask the obvious questions?"

the litany of pop is the table of Pop comments.

Your bedroom is a room.

the player is in your bedroom.

before examining player when player is in bedroom:
	say "'Max? Max! Now's not the time to worry about your looks.'" instead;

description of player is "In pretty good shape, but not dumb-jock shape. Pretty well-dressed, but not mindless preppie well-dressed. People wouldn't suspect you of being a valedictorian, til they talked to you."

The hall is west of your bedroom.

after looking for the first time:
	now current quip is null-quip;
	now pop is in your bedroom;
	say "You hear a knock. 'Max! Son!'[paragraph break]The door opens. Pop nods determinedly. 'Son, we need to have a talk.'";
	now the right hand status line is "sleepy";
	try talking to pop;

to say zone-pop-out:
	choose row with response of pop-girls in the table of pop comments;
	say "You listen to [if enabled entry is not 1]the rest of [end if]Pop's lecture.[paragraph break][pop-leaves]";

before doing something other than looking or examining or qbc responding with or talking to when pop is in your bedroom:
	pop-impatient instead;
	
rule for printing a parser error when pop is in your bedroom:
	say "'Eh? What? Speak up, son. I spent time making this clear for you.'";

to say pop-leaves:
	say "'Son, these are pretty straightforward points, but you're flaking out, here. It's late at night, so I'll let it slide.'[paragraph break]'Look, it's up to you[if player does not have spreadsheet]. I'll leave this spreadsheet right here[end if]. Short story: you're number one. Drotz's got the honors art course. And you're gonna slip to #2 without that independent study course. If you're too good for your father, maybe you're not too good for the hard work he put in.'";
	if player does not have spreadsheet:
		say "[line break]He hands you the spreadsheet. It looks sort of boring, but then again, you are a bit behind on your sleep. It helps you catch up.[no line break]";

to pop-impatient:
	say "[one of]'Son. Son? I'm being clear. I know I am.'[or][pop-leaves][to-ghs][stopping]"

to say to-ghs:
	move-to-ghs;

Book quips-modified

the basic rq out of range rule is not listed in any rulebook.

Carry out QBC responding with (this is the modified perform talking rule):
	let qbc_index be 0;
	repeat through the qbc_litany:
		if the enabled entry is 1:
			increase qbc_index by 1;
			if qbc_index is the number understood:
				now the enabled entry is 0;
				deliver the response entry quip;
				display the QBC options;
				rule succeeds;
	if number understood < 1:
		say "[first time]Lowballing Pop, eh? You're not nearly wise enough, yet.[paragraph break][only][bracket]Valid responses range from 1-[qbc_index].  Type REPEAT to relist the options.[close bracket][paragraph break]";
		the rule succeeds;
	otherwise:
		if pop is visible:
			say "[first time]Pop wants you to think out of the box, except when he needs to box you in for your own good.[paragraph break][only][bracket]Valid responses range from 1-[qbc_index].  Type REPEAT to relist the options.[close bracket][paragraph break]";
		if myron is visible:
			say "You're not letting someone like Myron leave you tongue-tied, are you?";
		the rule succeeds;

Book quips

to say still-wanna-be:
	say "'Bad news, son. You still want to be valedictorian?' (yes or no)";
	if pop is in your bedroom:
		if the player consents:
			say "'Attaboy.[paragraph break]";
		otherwise:
			say "'Not funny. But it's late, so I'll let it slide.[paragraph break]";
	say "'Harley Drotz's ahead of you now, son. Or he will be, at year's end.'";
	enable the i-have-tiebreak quip;
	enable the did-he-cheat quip;
	enable the still-pretty-good quip;

table of quip texts (continued)
quip	quiptext
null-quip	"This shouldn't be here, young man. You will fix this bug, and you will fix this bug right now."
zone-pop-out	"[zone-pop-out]"
pop-girls	"'No, no, no, son. This is about GRADES.'"
pop-grades	"[still-wanna-be]"
i-have-tiebreak	"It's not worth dwelling on the details--all you have to say is 'Those A-minuses.' An A- in one quarter, with an A in the other and the final, or even an A each quarter and a B+ on a final, still gets an A. But each quarter or exam grade that's not an A is a tiebreak. And Harley had that slip-up in Health class.[paragraph break]'I think his parents pulled a dirty trick,' says Pop, 'and it's the principle of the thing, along with me wanting to do what's best for you.'"
did-he-cheat	"'Hate to say it, son, but his dad's got a little pull in the art department. Some of the mid-level administrators let him slip into honors Ceramics for his fine art elective.'"
still-pretty-good	"'Where's the will to win, son? You'll need it in college. At least, the sort of college you really should get into, with your grades.'"
better-let-me	"Easy, son. I've got a plan."
oh-no-you	"'Of course not. What do you take your Pop for?'[paragraph break]There's no really good response to that question."
trump-him	"'His dad went for the art teachers. I went for the humanities teachers. With a little luck, we could get you into Art Appreciation Independent Study. That's better than honors. Just imagine. You wouldn't just be making art. You'd be on your way to a PATRON of art, son. Lots of people out there can make just one good piece of art. They waste their whole life. You'll get to promote MANY!'"
show-me-the-math	"'Here's the spreadsheet. It's got my plans for you. Now you're going to have to sign up for that course all by yourself. There's gonna be opposition. You need to show you can deal with those dead-end counselors. You're going to be a man soon.[paragraph break]Oh, and no A-minuses, eh? I mean, a quarter or two, have fun having a senior slump and all. But a little overconfidence could undo a lot of hard work.[paragraph break]I suggest you take a look at the numbers right now."
no-slump	"Good work, son. But all the same, you know those Advanced Placement classes have a HIGHER percent of A's than Honors or Regular classes. You know, it'd be a shame if you lost out on being valedictorian now."
i-give-up	"'You only think you do, son.'"
honors-ceramics-wtf	"'Not much. But enough to pass all the tests. And not piss off the teacher.'"
in-my-head	"'You don't have to be one of those weird math geniuses, son. It's just, AP courses give you a 5 for an A, Honors 4.5, Regular 4. Both your GPAs are over 4.5. So any honors course LOWERS them. Any pass-fail DOESN'T.'"
home-safe	"'You won't be enough ahead to afford an A- on your report card, son. Don't go getting any crazy ideas.'[paragraph break]Pop draws out the math again. Both your Grade-Point Averages are something like 4.6, so a 4.5 lowers it, and you don't have to worry about a decimal. But one single A-minus and, well, Harley's 4.5 becomes like a 4.8."
got-it-pop	"'Hope so. But you won't be able to go in there and get things stamped. Things don't work that way. Those administrators wanna pretend like I didn't twist their arms. Diplomacy. You'll learn about that.'"
ap-art	"'Nope. There's AP English and History that sort of cover that.'"
document-what-why	"'We're better than sleazy copycats. And we can do better, period. Oh, and they closed that loophole, too.'"

table of Pop comments
prompt	response	enabled
"'You forgot to initialize a variable, young man,' Pop growls at someone behind the fourth wall."	null-quip	0
"(Zone Pop out[one of]. He LOVES to hear himself talk, sometimes[or][stopping]. You'll get the general drift.)"	zone-pop-out	1
"Geez, I know about girls already!"	pop-girls	1
"But I've gotten all A's!"	pop-grades	0
"Pop, we've been through this. I won't have a senior slump."	no-slump	0
"Got it, Pop."	got-it-pop	0
"But we've got the same grades! The same classes! And I have the tiebreaks!"	i-have-tiebreak	0
"How'd he do it? You can only take so many Advanced Placement classes!"	did-he-cheat	0
"I'm still going to a really good college, though. Whatever, I'll deal."	still-pretty-good	0
"You better let me know what you did."	better-let-me	0
"Oh no. You didn't do anything illegal..."	oh-no-you	0
"Show me the math."	show-me-the-math	0
"I give up. If he really wants it that bad..."	i-give-up	0
"Honors CERAMICS?! What does he know about that?"	honors-ceramics-wtf	0
"So let's just do what he and his father did. Or get an applied art elective."	document-what-why	0
"So how do we go one better?"	trump-him	0
"What, is there some AP Art course I don't know about?"	ap-art	0
"What do you mean, better than honors?! It's no grade at all!"	in-my-head	0
"Awesome! I'll be home safe after this."	home-safe	0

after quipping when the current quip is honors-ceramics-wtf:
	enable the document-what-why quip;
	enable the oh-no-you quip;
	enable the ap-art quip;
	enable the trump-him quip;

after quipping when the current quip is did-he-cheat:
	enable the honors-ceramics-wtf quip;
	enable the i-give-up quip;

after quipping when the current quip is trump-him:
	enable the in-my-head quip;
	disable the oh-no-you quip;
	disable the document-what-why quip;
	disable the i-have-tiebreak quip;
	disable the still-pretty-good quip;
	disable the i-give-up quip;
	disable the show-me-the-math quip;
	disable the ap-art quip;

after quipping when current quip is oh-no-you or current quip is better-let-me:
	disable the oh-no-you quip;
	disable the better-let-me quip;
	enable the trump-him quip;

after quipping when current quip is pop-grades:
	disable the no-slump quip;
	
after quipping when current quip is better-let-me:
	enable the oh-no-you quip;
	enable the better-let-me quip;

before quipping when the current quip is still-pretty-good:
	choose row with response of did-he-cheat in table of pop comments;
	if enabled entry is 0:
		say "'Why didn't you say so right away instead of stringing me out? That's not the main thing, though...[paragraph break]";
		disable the did-he-cheat quip;

after quipping when current quip is pop-girls:
	enable the pop-grades quip;
	enable the no-slump quip;
	
after quipping when current quip is zone-pop-out:
	say "You know Pop probably would be pretty cross if he caught you wandering around so late, so you decide to call it a night. Pop drops you off the next day at Grubbyville High School, in the entry hall.";
	move-to-ghs;

after quipping when current quip is got-it-pop:
	say "You know Pop probably would be pretty cross if he caught you wandering around so late, so you decide to call it a night. Pop drops you off the next day at Grubbyville High School, in the entry hall.";
	move-to-ghs;

to move-to-ghs:
	terminate the conversation;
	now pop is off-stage;
	now player is in Entry Hall;
	now player has the spreadsheet;
	now the turn count is -1;
	now the left hand status line is "[locshort] (MOOD: [player-mood])";
	now the right hand status line is "[fake-time-of-day]";

to say locshort:
	if player is in school yearbook office:
		say "YRBK OFFICE";
	else:
		say "[location of player]";

to say player-mood:
	if player does not have pass:
		say "RESTRICTED";
	else if chess hovel is not visited:
		say "EXPLORING";
	else if dennis-trust is 0:
		say "UN-ALLIED";
	else if dennis-trust is 1:
		say "DIPLOMATIC";
	else:
		say "ARTISTIC";
[	if slyness is 0 and nastiness is 0 and niceness is 0:
		say "NEUTRAL";
		continue the action;
	if slyness is nastiness and niceness is slyness:
		say "PERFECTLY AMBIVALENT";
		continue the action;
	if nastiness > slyness + niceness:
		say "VERY KICK-ASS";
		continue the action;
	if slyness > niceness + nastiness:
		say "DIPLOMATIC";
		continue the action;
	if niceness > slyness + nastiness:
		say "VERY WEIRD";
		continue the action;
	if nastiness > slyness and nastiness > niceness:
		say "KICK-ASS";
		continue the action;
	if slyness > niceness and slyness > nastiness:
		say "NEGOTIATIN[']";
		continue the action;
	if niceness  > slyness and niceness > nastiness:
		say "WEIRD";
		continue the action;
	if slyness is nastiness:
		say "AMBIVALENT-[if slyness > niceness]CUTTHROAT[else]DECENT[end if]";
		continue the action;
	if slyness is niceness:
		say "AMBIVALENT-[if slyness > nastiness]MISCHIEVOUS[else]SNOTTY[end if]";
		continue the action;
	if nastiness is niceness:
		say "AMBIVALENT-[if slyness > nastiness]SLY[else]UNIMAGINATIVE[end if]";
		continue the action;
	say "UNDEFINED";]

before doing something other than talking to or qbc responding with when qbc_litany is table of mychat:
	say "Best to get this conversation over with. REPEAT if you need to see the options." instead;

after quipping when current quip is show-me-the-math:
	give-spreadsheet;

to give-spreadsheet:
	say "Glad you asked, son. I printed out a spreadsheet showing what's happening.";
	now the player has the spreadsheet;

after quipping when current quip is trump-him:
	enable the home-safe quip;
	enable the got-it-pop quip;
	
a quip can be in-list. a quip is usually not in-list.

to decide whether (q - a quip) is in-list:
	choose the row with response of q in the table of Pop comments;
	say "[q] [enabled entry].";
	if the enabled entry is 1:
		decide yes;
	otherwise:
		decide no.

[debug stuff here]
[to decide if a quip is disabled:
	decide yes.]

chapter mooding

understand the command "mood" as something new.

understand "mood" as requesting the score.

chapter verbsing

verbsing is an action out of world.

understand the command "verbs" as something new.

understand "verbs" as verbsing.

carry out verbsing:
	say "You can TAKE things, or TALK TO people. Typing I takes inventory. You can check your MOOD (synonym is SCORE,) see what you've DONE or GIVE people items. You can also see what this game is ABOUT, or CREDITS/CREDIT for people who helped. You can also THINK to figure what to do next, or see a rough MAP of the high school.";
	the rule succeeds;

chapter doneing

doneing is an action out of world.

understand the command "done" as something new.

understand "done" as doneing.

carry out doneing:
	d "[niceness] [slyness] [nastiness] [meetiness] [noot].";
	d "Nasty: [number of nast people] [number of vnast people].";
	d "Nice: [number of niced people] [number of vnice people].";
	if ignore-havent is false or niceness > 0:
		say "[if niceness is 0]You haven't been nice to anyone[else]You've been nice to [list of mlni people][partic-nice][end if].";
	if ignore-havent is false or slyness > 0:
		say "[if slyness is 0]You haven't been sly to anyone[else]You've been sly to [list of slyed people][end if].";
	if ignore-havent is false or nastiness > 0:
		say "[if nastiness is 0]You haven't been nasty to anyone[else]You've been nasty to [list of mlna people][partic-nast][end if].";
	if ignore-havent is true:
		say "[line break][if niceness > nastiness]You're looking forward to more than just getting a better GPA. It sounds a bit hokey, and it might not last, but there you go[else if niceness is nastiness]Business is business. Might as well beat Harley in the GPA stakes[else]You know, Harley's not the only person you want to get even with[end if].";
		now ignore-havent is false;
		the rule succeeds;
	if meetiness > 0:
		say "You've met [list of meeted people], but you haven't done anything meaningful around them.";
	if noot is 0:
		say "You've met pretty much everyone you're going to at Grubbyville today.";
	the rule succeeds;

definition: a person (called p) is mlna if p is nast or p is vnast.
definition: a person (called p) is mlni if p is niced or p is vnice.

to say partic-nast:
	if number of vnast people > 0:
		say ", particularly [list of vnast people]";

to say partic-nice:
	if number of vnice people > 0:
		say ", particularly [list of vnice people]";

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "Grubbyville is an entry in the 2016 IntroComp. I intended it for 2013, but I had other projects. It reflects loosely on extreme extensions of what I remember from my high school's valedictorian races. Many people did legitimate work to get very good grades. But there was always more political intrigue than there should've been.[paragraph break]See CREDITS for people who helped make the game better.";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "credits" as something new.

understand "credits" as creditsing.

understand the command "credit" as something new.

understand "credit" as creditsing.

carry out creditsing:
	say "Thanks to my testers, who found bugs and also inspired me to expound on things I forgot to.[paragraph break]Keetie de Kater, Jason Lautzenheiser and Vince Laviano, in last-name alphabetical order.[paragraph break]Thanks to Jacqueline Lott Ashwell for holding IntroComp, which was a great venue for helping me push forward this idea I liked but didn't have a firm grasp on, yet.[paragraph break]Thanks to the usual suspects for making cool extensions, and of course, to those who created Inform itself.";
	the rule succeeds;

chapter maping

maping is an action out of world.

understand the command "map" as something new.

understand "map" as maping.

to say nosp:
	say "";

carry out maping:
	say "Grubbyville High School is laid out in an X, with the main exit going east from the center. Northwest is Math/Science, northeast is Art, southeast is Humanities, and southwest is Life Skills.[paragraph break]";
	say "[fixed letter spacing]                                NOT IN INTRO[line break]Math/Science Wing---\        /---Fine Arts Wing[line break]                     \      /[line break]                      X-Hall-----Entry[line break]                     /      \[line break]Life Studies Wing---/        \---Humanities Wing[line break]   NOT IN INTRO[variable letter spacing]";
	the rule succeeds;

chapter command read

after reading a command:
	if the player's command matches the regular expression "^<\*;>":
		say "([if currently transcripting]Noted[else]This looked like a note for a transcript, but you're not currently transcripting. You may wish to type TRANSCRIPT[end if].)";
		reject the player's command;
	if the player's command matches the regular expression "\bed\b":
		say "[one of]Big Ed is pretty big, but somehow, he manages to stay out of sight and keep kids in just enough fear of him when he needs to. Students have all sorts of jokes about his alleged detention quotas, but you should be okay, though[or]Thinking about Big Ed is just a distraction[stopping].";

Include (-
[ CheckTranscriptStatus;
#ifdef TARGET_ZCODE;
return ((0-->8) & 1);
#ifnot;
return (gg_scriptstr ~= 0);
#endif;
];
-).

To decide whether currently transcripting: (- CheckTranscriptStatus() -)

[thanks to Zarf for the above code]

volume garbage collection

lalaland is a room.

volume blocking

check going in humanities wing:
	if noun is east:
		say "The school paper office is that way, but you don't need to influence anyone on the editorial staff. Maybe when you're older, you'll need to schmooze them. But nobody REALLY reads the school paper. Especially in the summer when it's not being published." instead;
	if noun is south:
		say "Exotic languages won't help you with exotic art appreciation, here. Well, maybe they will once this game is more than an introduction. We'll see." instead;

Book introcomp rules

instead of deadending:
	if intromode is true:
		if player is in math/science:
			say "That area's beyond the scope of this introduction. You can go north to Math or northwest to Computer Science, though." instead;
		say "That area's beyond the scope of this introduction. You'll want to stick to the computer lab--in the northwest area--and the yearbook offices to the southeast. And maybe the social area.";
		the rule succeeds;
	otherwise:
		continue the action;

going up in Math/Science Wing is deadending.
going west in Math/Science Wing is deadending.
going south in Math/Science Wing is deadending.
going southwest in Math/Science Wing is deadending.

check going southwest in x-hall:
	say "The life skills wing is beyond the scope of the introduction. Which is kind of ironic, because you find the skills therein a bit...introductory." instead;

check going northeast in x-hall:
	say "You think about going northeast, but you're intimidated a bit--you don't really have anything resembling art to show off. Obviously, you'll need to get there, but you get the feeling they don't like tip-top students there. You need some street cred. (NOTE: the arts wing is beyond the scope of the introduction. The goal is to find something that will get you something resembling art.)[paragraph break]" instead;

check going northwest in x-hall:
	if player does not have yearbook pass:
		say "[one of]Big Ed, the security guard, is probably lying in wait. While he hated science in school, he's extra enthusiastic about guarding the science wing. You would be quite a scalp for his detention quota without a pass. Unfortunately, there are no teachers here to give you a pass[or]You have nothing to get by Big Ed, yet[stopping]." instead;
	if math/science wing is unvisited:
		say "You flash your hall pass at Big Ed, who's cleverly hidden in a drinking fountain recess like it's a speed trap, as you walk down the corridor. It works!"

check going east in math/science wing:
	say "That's about the only direction you can't go here." instead;

volume endgame

rule for amusing a victorious player:
	say "Well, there's not much. Have you tried:[line break]--examining the strategy book repeatedly?[line break]--going east twice at the game's start?[line break]--SLEEPing by Dennis or Myron?";

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see your final MOOD"	false	"MOOD"	--	moodshowing

moodshowing is an activity.

ignore-havent is a truth state that varies.

rule for moodshowing:
	say "Different dialogue choices will give you different intro-end text. In this playthrough...";
	now ignore-havent is true;
	try doneing;

volume testing - not for release

when play begins:
	now debug-state is true;

chapter cases

test durf with "1/w/w/se/se/se/talk to myron/1/1/nw/nw/nw/nw/n/x list/in/get book/out/s/nw/x backpack/x computer/y/1/1/1/1/x computer/x computer/x backpack/se/se/s/in/x dennis/give book to dennis/talk to dennis"

test nice with "1/w/w/se/se/se/talk to myron/1/1/nw/nw/nw/nw/n/x list/in/get book/out/s/nw/x backpack/x computer/y/1/1/1/1/x computer/x computer/x backpack/se/se/s/in/x dennis/give book to dennis/talk to dennis/1/1/talk to dennis"

test nasty with "1/w/w/se/se/se/talk to myron/1/4/nw/nw/nw/nw/n/x list/in/get book/out/s/nw/x backpack/x computer/y/1/1/1/1/x computer/x computer/x backpack/se/se/s/in/x dennis/give book to dennis/talk to dennis/2"

test gm with "1/w/w/se/se/se/talk to myron/1/4/nw/nw/nw/nw/nw/talk to computer/x computer"

test gm-h with "test gm/1/1/1/1"

test gm-m with "test gm/2/1/1/1"
