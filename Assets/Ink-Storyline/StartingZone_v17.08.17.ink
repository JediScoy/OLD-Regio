//
// REGIO SCIENTIAE - STARTER SET
// This prologue is the same for each course I teach
//
// Testing syncing via Dropbox and Unity3D
//
=== StartingPreface ===
= welcome
* [Welcome to the starting zone]
- [<i> This narrative is a companion to your real world science experience. ] -> instructions

= instructions
*[<i>First time visitors PRESS START on the next page, all others may choose CONTINUE.</i>] -> begin

= begin
+ [PRESS START] -> CaldaVale.scene
+ [CONTINUE] -> StartingZone.TOC

=== StartingZone ===
= TOC
+ [Discovering CaldaVale] -> CaldaVale.scene
+ [Canis Villa] -> CanisVilla
+ [BlueMug] -> BlueMug.scene

=== SleepingJedi ===
*[<i>Jedi Master Scoy has fallen asleep again. This area is under development, check back again later.</i>]
 -> CaldaVale.scene
 
-> DONE

// CALDA VALE
=== CaldaVale ===
= scene
<b>Discovering Calda Vale</b>
The sun is just peaking over the horizon. You wake up disheveled in the woods. You are without food and few other possessions. You feel {~cold|hot|sweaty}, have {~an aching head|sore ribs}, covered in sparkling blue dust, and at the moment completely alone.
+ [Stumble out into a path and start walking] -> CaldaVale.path
+ Sit tight and wait for help
-> CaldaVale.wait_for_help

= wait_for_help
After a few hours, no one comes along. Its only getting hotter and your stomach more empty. It would seem no hero or heroine will be rescuing you.
*You finally get up and start walking.
-> CaldaVale.path

= path
Once you get your footing on the path, its an easy walk. You travel less than a {~a quarter-mile|a mile|two miles} before coming to a crossroads.

An overgrown single-track trail snakes westwards towards a dark foreboding tower. Probably less than a day's march. To the east, a well worn path cuts through the forest.
->crossroads

= crossroads
+ [Head east on the forest path] -> CaldaVale.path_east
+ [Trek west to the dark tower] -> ClunCastle.early

= path_east
Not long after midday a friendly farmer offers you a ride in his {~turnip|carrot|potate} cart towards the nearest village.
The forest comes to a clearing and opens to village.
+ [Go into the village] -> CanisVilla
+ [Go back west] -> CanisVilla.leave_early

// CLUN CASTLE
=== ClunCastle ===
= scene
Stones have fallen and the place is clearly abandoned[.]
-> StartingZone.TOC

= early
Besides the occasional bushwhacking the walk isn't too difficult and soon you approach the dark tower’s main gate.
Stones have fallen around it.
+ [The place is clearly abandoned.] ->early_death

= early_death
 At least you <i>thought</i> it was abandoned. The Drow warrior slips from a shadowy side entrance. Blades move so fast they are a blur. This quickly ends your otherwise pleasant walk.
+ [Death]-> Death.ClunCastle_early

// DEATH
=== Death ===
= ClunCastle_early
You have died, but fear not the failure. Kind paladins and clerics wander these lands. Soon enough your bones will be found and your life renewed.
+ [Resurrect]
-> CaldaVale.scene

= Eastport_laser_fish
TODO: <i>Jedi Master Scoy has fallen asleep again. This area is under development, check back again later.

// CANIS VILLA
//Three locations of interest: Canis Villa, Clun Castle, and Eastport.
== CanisVilla ==
= scene
 A small village lies before you. The village center is loosely surrounded by a variety of stout timbered buildings. You are greeted by a weathered signpost, <i><b>Canis Villa</b></i>.
 *[Go ahead into the village center] ->village_center
 = village_center
You walk the main path between two buildings into the village center. It opens to a grassy courtyard. -> courtyard_views

= courtyard_views
 *[Looking to the south side] -> BlueMug.sign
 // *[Looking to your right] Apothecary
 // *[Looking to your left] 
 // *[Looking to the eastern farside of the courtyard] Path leading away from town and black
 // *[Looking along the northern side] Blacksmith shop
 *[Walk farther into the courtyard] -> courtyard1
 
= courtyard1
You walk into the courtyard, but nothing seems to be going on there. Most people are either coming or going from a large tavern on the southern side.
+ [Head towards the tavern] -> BlueMug.sign
* [Leave the village to the west] ->leave_early

= leave_early
You decide this village is not for you. You head back west. It takes much longer without a cart ride, but you come to the crossroads again.
* Continue west. -> ClunCastle.early

// CALL TO ACTION
TODO: CALL TO ACTION, add URL link
= CallToAction
<b><i>Click the Starter Set link on our web page to start your first Quest!</i><b>
<i>Click the Next Quest link on our web page to continue the story and questing.</i>

-> END
 
// BLUE MUG
=== BlueMug ===
= sign
 A hanging sign with a dark blue mug above catches your eye. An inscription along the bottom reads "Drink from the cup of knowledge."
 This looks like a place to find some answers.
 + [Enter the Blue Mug] -> BlueMug.scene
 * [Walk to the nearest courtyard] -> CanisVilla.courtyard1
 
= scene
You enter and look around <i><b>The Blue Mug</b></i>. Its a basic, two story wooden tavern with a bar and dining on the first floor. Worn stairs lead above to rooms. The decor is simple and slighty dingy, but of stout timber material.
 The occupants can be likewise compared to the building: simple farmers, slighty dingy, but of stout frame.

 * [Others] -> BlueMug.strangers
 
 = strangers
 A few mercenaries and traveling merchants are also sitting around the dining area, but keeping to themselves. They are clearly not blending in with the locals.
 * [Closer look]
 -> help_needed
// You might not remember your last raid, but clearly you are going to need some backup for adventuring in these parts if you decide to stay.
 
= help_needed
The people look beaten down by life. It would seem they need some help.
*[Stay and help]-> BlueMug.stay_help
*[Turn around, go outside, and leave the village] -> CanisVilla.leave_early

= stay_help
You're curous about the general attitude of the townsfolk, but regardless you know helping is the right thing to do. The town folk won't show it, but they are glad you're here and have a spine.
* [Realization] -> upcoming
= upcoming
You realize the upcoming weeks are going to be a challenge. Growth in mind and muscle will be needed. 

* The serving maid comes over. -> serving_maid_intro

= serving_maid_intro
"What can I get you?" she asks you.

You reply,
* ["What good food and beverage do you have?"] -> BlueMug.brother_cook
* ["I'm interesting strengthening my body and mind"] ->BlueMug.brother_cook
= brother_cook
"My brother's cooking is always good" she replies with a smile.

"Today he is cooking up {~roasted boar|chicken|vegetables}," she says.
* "That does sound good," You reply. ->question_of_training
* Not what you were hoping for, but you reply "OK, I'll have some." ->question_of_training

= question_of_training
After eating, you tell her "I am interested in Quests." 
* And ask, "Where might I prepare for future Quests?" -> maid_training_reply

= maid_training_reply
"I reckon you want to go to the Training grounds just east of town. The King's army rarely makes it to small villages like to make difference, so we've had to learn to protect ourselves." she says with pride.

"Most places will have a Training area for you to hone your skills. Training and practicing one's skills <i>before</i> taking part in Adventures or attacking Bosses is always a good idea," she says.
+ CALL TO ACTION -> CanisVilla.CallToAction

 // Explore the quaint village to discover, Starter Set, your first Quest. Like all others, this Quest has multiple tasks to accomplish. Generally each quest has Training, an Adventure, a Boss, and a Boss Elite. An adventure may have one to four parts within it. Read each description of the required tasks carefully. Ask members of your Party for assistance and ask Jedi Master Scoy for clarification as needed.
 
// After completing the requirements consult with Jedi Master Scoy and move on to the next Quest. Be sure to follow the quest line for your campaign. All campaigns (Earth Science, Biology, Physical Science, Zoology, etc) start here. Good luck!

// *Clun Castle
// -> clun_castle_early
// *Eastport
// -> eastport
-> DONE