//
// REGIO SCIENTIAE - STARTER SET
// This prologue is the same for each course I teach
//
// Testing syncing via Dropbox and Unity3D
// Importing into Unity3D creates a separate instance
// The Assets/Ink-Storyline and INK file are now synced with GitHub
//
// Opening file with Inky directly from Assets directory
//
 
-> StartingPreface

=== StartingPreface ===
= Welcome
Welcome to weary adventure to <i>DISCOVERING CANIS VILLA</i>! This storyline takes place in the Starting Zone of Regio Scientiae.

->StartMenu

= Instructions
*[First time visitors PRESS START on the next page, all others may choose CONTINUE.] -> StartMenu

= StartMenu
+ [PRESS START] -> CaldaVale.Scene
+ [CONTINUE] -> TOC

-> DONE

=== TOC ===
<i>TABLE OF CONTENTS</i>
+ [IN THE WOODS] -> CaldaVale.Scene
+ [CANIS VILLA] -> CanisVilla.Scene

-> DONE

=== SleepingJedi ===
+[Jedi Master Scoy has fallen asleep again. This area is under development, check back again later.]
 -> CaldaVale.Scene
 
-> DONE

// CALDA VALE
=== CaldaVale ===
= Scene
<b>DISCOVERING CANIS VILLA</b>
The sun is just peaking over the horizon. You wake up disheveled in the woods. You are without food and few other possessions. You feel {~cold|hot|sweaty}, have {~an aching head|sore ribs}, covered in sparkling blue dust, and at the moment completely alone.
+ [Stumble out into a path and start walking] -> CaldaVale.path
+ Sit tight and wait for help
-> CaldaVale.wait_for_help

= wait_for_help
After a few hours, no one comes along. Its only getting hotter and your stomach more empty. It would seem no hero or heroine will be rescuing you.
+You finally get up and start walking.
-> CaldaVale.path

= path
Once you get your footing on the path, its an easy walk. You travel less than {~a quarter-mile|a mile|two miles} before coming to a crossroads.
An overgrown single-track trail snakes westwards towards a dark foreboding tower. Probably less than a day's march. To the east, a well worn path cuts through the forest.
->crossroads

= crossroads
+ {not ForestDeath.Ambush} [Head east on the forest path] -> ForestDeath.Ambush
+ {ClunCastle.early} {ForestDeath.Ambush} [Head east on the forest path...] -> CaldaVale.path_east
+ {not ClunCastle.early} [Trek west to the dark tower] -> ClunCastle.early

= path_east
Not long after midday a friendly farmer offers you a ride in his {~turnip|carrot|potato} cart towards the nearest village.
The forest comes to a clearing and opens to village.
+ [Go towards the village] -> CanisVilla
+ [Go back west] -> CanisVilla.leave_early

// CLUN CASTLE
=== ClunCastle ===
= scene
Stones have fallen and the place is clearly abandoned.
-> TOC

= early
Besides the occasional bushwhacking the walk isn't too difficult and soon you approach the dark tower’s main gate.
Stones have fallen around it.
+ [The place is clearly abandoned.] ->CastleDeath

= CastleDeath
 At least you <i>thought</i> it was abandoned. The Drow warrior slips from a shadowy side entrance. 
 + [Fight] -> Fight
+ [Flee] -> Fight

= Fight
 Blades move so fast they are a blur. You have no time to react. This quickly ends your otherwise pleasant walk.
+ {Death < 1} [Next] -> Death.One
+ {Death} [Next] -> Death.Two

-> DONE

=== ForestDeath ===
= Ambush
You walk a ways down the forest path. A short while later a group of bandits rushes out onto the path. They are dressed in gray colored clothing with red bandanas. Most of them are wielding daggers or short swords.  Perhaps if you had a weapon of some sort OR special training you might stand a chance. Unfortunately you have neither. 
+ [Fight] -> Fight
+ [Flee] -> Flee

= Fight
You attempt hand-to-hand combat, but you're no match for them.
+ {Death < 1} [Next] -> Death.One
+ {Death} [Next] -> Death.Two
-> DONE

= Flee
You attempt to flee, but you are caught. You're no match for them.
+ {Death < 1} [Next] -> Death.One
+ {Death} [Next] -> Death.Two
-> DONE

// Death
=== Death ===
= One
You have died, but do not fear failure. Kind paladins and clerics wander these lands. Soon enough your bones will be found and your life renewed.
+ [Res] -> CaldaVale.Scene

= Two
You have died <i>yet again</i>, but do not fear failure. You are demostrating persistence and grit. Kind paladins and clerics wander these lands. Soon enough your bones will be found and your life renewed.
+ [Res] -> CaldaVale.Scene


= Eastport_laser_fish
<i>Jedi Master Scoy has fallen asleep again. This area is under development, check back again later.
+ [TABLE OF CONTENTS] -> TOC

// CANIS VILLA
//Three locations of interest: Canis Villa, Clun Castle, and Eastport.
== CanisVilla ==
= Scene
 A small village lies before you. The village center is loosely surrounded by a variety of stout timbered buildings. You are greeted by a weathered signpost <i>Canis Villa</i>.
 + [Enter the village] ->village_center
 + {TOC < 1} [TABLE OF CONTENTS] -> TOC

// = ScenePostTOC
// A small village lies before you. The village center is loosely surrounded by a variety of stout timbered buildings. You are greeted by a weathered signpost <i><b>Canis Villa</i></b>.
 // + [Enter the village] ->village_center
 
 = village_center
You walk the main path between two buildings into the village center. It opens to a grassy courtyard. -> courtyard_views

= courtyard_views
+ [Looking to the south side] -> BlueMug.sign
 // *[Looking to your right] Apothecary
 // *[Looking to your left] 
 // *[Looking to the eastern farside of the courtyard] Path leading away from town and black
 // *[Looking along the northern side] Blacksmith shop
 + [Walk farther into the courtyard] -> courtyard1
 
= courtyard1
You walk into the courtyard, but nothing seems to be going on there. Most people are either coming or going from a large inn on the southern side.
+ [Head towards the inn] -> BlueMug.sign
+ [Leave the village to the west] ->leave_early

= leave_early
You decide the village is not for you. You head back west. It takes much longer without a cart ride, but you come to the crossroads again.
+ You continue west. -> ClunCastle.early


 
// BLUE MUG
=== BlueMug ===
= sign
 A hanging sign with a dark blue mug above catches your eye. An inscription along the bottom reads "Drink from the cup of knowledge."
 This looks like a place to find some answers.
 + [Enter the Blue Mug] -> BlueMug.scene
 * [Walk to the nearest courtyard] -> CanisVilla.courtyard1
 
= scene
You enter and look around <i>The Blue Mug</i>. Its a basic, two story wooden inn and tavern with a bar and dining on the first floor. Worn stairs lead above to rooms. The decor is simple and slighty dingy, but of stout timber material.
 The occupants can be likewise compared to the building: simple, slighty dingy, but of stout frame.

 + [Others] -> BlueMug.strangers
 
 = strangers
 A few mercenaries and traveling merchants are also sitting around the dining area, but keeping to themselves.
 + [Closer look] -> help_needed
// You might not remember your last raid, but clearly you are going to need some backup for adventuring in these parts if you decide to stay.
 
= help_needed
The people look beaten down. This community needs helps. You are not the most talented of adventurers...yet, but you are persistent. Perhaps you could make the difference?
+ [Stay and help]-> BlueMug.stay_help
* [Leave the village] -> CanisVilla.leave_early

= stay_help
You silently decide at that moment that you'll stay and help. Even if you had openly proclaimed your intentions, the town folk would not thank or praise you. Caring about others is the right thing to do though. They are lucky that you have a spine.
+ [Realization] -> upcoming
= upcoming
You realize the upcoming weeks are going to be a challenge. Growth in mind and muscle will be needed.
The serving maid comes over though and interrupts your thoughts.
-> serving_maid_intro

= serving_maid_intro
"What can I get you?" she asks you.

You reply,
+ ["What good food and drink do you have?"] -> BlueMug.food

= food
"Today we're cooking up {~roasted boar|chicken|vegetables}," she says.
+ "That sounds good," You reply. ->question_of_training
+ Not what you were hoping for, but you reply "OK, I'll have some." ->question_of_training

= question_of_training
After eating, you tell her "I am interested in Quests." 
+ And ask, "Where might I prepare for future Quests?" -> maid_training_reply

= maid_training_reply
"I reckon you want to seek a Master trainer just east of town. The King's army rarely makes it to small villages like ours, so we've had to learn to protect ourselves." she says with pride.
+ "What can a Master do?" -> MaidTrainingContinued

= MaidTrainingContinued
"All villages with Training grounds will have at least one Master Jedi, some have two or more. Often other trainees can help you in the Training grounds if the Masters are busy. You must hone your skills if you plan on traveling in this area of the realm. Training and practicing one's skills <i>before</i> taking part in Adventures or attacking Bosses is always a good idea" she says.
+ [Next] -> Reflection

// CALL TO ACTION
=== Reflection ===
= Part1
<b>REFLECTION</b>
You know to be useful to the community - and not die every five minutes - you need proper training and gear. Even with the best gear and Master trainers, its going to take hard work on your part. Having enthusiasm, maximum effort, and focus are a few of the mindsets you'll need to be successful.
+ [Next] -> Part2

= Part2
It is rumored that these Masters can grant access to a magical library in the ether. This magical library contains more information than any of the worldly libraries. It is said to contain books that can be summoned with special instruments. You'll have access to special scrolls, training strategies, and the ability to battle Bosses of varying levels.
+ [Next] -> Part3

= Part3
Keep in mind that a Master Jedi is a <i>guide</i> only. <i>You</i> must lead your own learning. You must ask for help and clarification. Great tools and gear mean nothing if you are unwilling to pick them up and use them properly.
+ [Next] -> Part4
= Part4
That is all ...for now. You hear whispers of troubling things. You suspect that very soon you may be called upon to go adventuring.

+ [CALL TO ACTION] -> CallToAction

=== CallToAction ===
<b>CALL TO ACTION</b>
Find a tool that can connect to the ether.
Enable the tool using your personal identification.
Find the nearest Master and ask for the access code to the library in the ether. Gaining access to one of the librarys in the ether will grant you access to others, so your sequence of actions is important.

-> END
 // Explore the quaint village to discover, Starter Set, your first Quest. Like all others, this Quest has multiple tasks to accomplish. Generally each quest has Training, an Adventure, a Boss, and a Boss Elite. An adventure may have one to four parts within it. Read each description of the required tasks carefully. Ask members of your Party for assistance and ask Jedi Master Scoy for clarification as needed.
 
// After completing the requirements consult with Jedi Master Scoy and move on to the next Quest. Be sure to follow the quest line for your campaign. All campaigns (Earth Science, Biology, Physical Science, Zoology, etc) start here. Good luck!

// *Clun Castle
// -> clun_castle_early
// *Eastport
// -> eastport
-> DONE