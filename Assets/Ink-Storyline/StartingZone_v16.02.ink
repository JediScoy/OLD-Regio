//
// This scipt can be copied and pasted into the start of each story
//

// === Preface ===
// = welcome
// *[<i>Welcome weary Adventurer to Regio Scientia!<i>] ->begin

// = begin
// + [PRESS START] -> CaldaVale
// + [CONTINUE] -> TOC 
// -> DONE

=== TOC ===
+ [Calda Vale] -> CaldaVale
+ [Canis Villa] -> CanisVilla
+ [Canis Villa: Blue Mug] -> BlueMug
+ [Canis Villa: Training Grounds] ->CanisVillaTraining
+ [Clun Castle] -> ClunCastle
+ [Day 3] -> Day3atSea
+ [Eastport] -> Eastport.scene
-> DONE

// UNDERDEVELOPMENT
=== SleepingJedi ===
TODO: > Underdevelopment <
*[<i>Jedi Master Scoy has fallen asleep again. This area is under development, check back again later.</i>]
-> TOC
-> DONE


// CALDA VALE
TODO: CALDA VALE
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


// CANIS VILLA
//Three locations of interest: Canis Villa, Clun Castle, and Eastport.
TODO: CANIS VILLA
=== CanisVilla ===
= scene
 A small village lies before you. The village center is loosely surrounded by five  single story, stout timbered buildings except for one building which is two-storied . A weathered signpost reads, <i><b>Canis Villa</b></i>.
 *[Go ahead into the village center] ->village_center
 = village_center
You walk the main dirt path between two buildings into the village center. It opens to a grassy courtyard. -> courtyard_views

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

// BLUE MUG
TODO: BLUE MUG
=== BlueMug ===
= sign
 A hanging sign with a dark blue mug above it catches your eye. An inscription along the bottom reads "Drink from the cup of knowledge."
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
* [Realization]
- You realize the upcoming weeks are going to be a challenge. Growth in mind and muscle will be needed. 

+ The serving maid comes over. -> serving_maid

= serving_maid
"What can I get you?" she asks you.

+ "What good food and beverage do you have?"[], you ask back.
+ "I'm interesting in stengthening my body and mind"[], you state boldly.

- "My brother's cooking is always good" she replies with a smile.

"Today he is cooking up {~roasted boar|chicken|vegetables}," she says.
+ "That does sound good,"[] You reply. 
+ Not what you were hoping for, but reply "OK, I'll have some."[]

- She comes back quickly with food and beverage. As you eat, you eavesdrop a bit on those around you.
+ [You hear] -> eavesdrop
 = eavesdrop
- Two farmers in the northeast corner are complaining and discussing the very strange changes in the weather.
+ [At the next table]
- A merchant is talking to a local about exotic plants and animals in far off lands at the table next to you.
+ [Near the door]
- A group of scruffy men nearest the door are discussing fantastical creatures in the southern isles.
 You continue to eat and take it all in. 
 Eventually the maid comes back over to clear the table.
+ "Are these unique and challenging times?" you ask. 
- She looks at you quizzically.
+ You continue boldy, <>
+ You continue meekly, <>
- "I am interested in helping."
She still looks uncertain.
+ You continue, "Where might I prepare for future Quests?"
- She thinks and says, "The King's army rarely makes it to small villages like ours in time to make a difference in fights, so we've had to learn to protect ourselves," she says with pride.
+ She continues, <>
- "You'll want to go to the Training grounds just east of town. Most places will have a Training area for you to hone your skills. Training and practicing one's skills <i>before</i> taking part in Adventures or attacking Bosses is always a good idea," she says.

* "There's not a moment to lose!" <> ->leave_BlueMug_in_haste
+ "Thank you. This is very helpful to know." <> ->listen_then_leave_BlueMug

= leave_BlueMug_in_haste
you reply.

"One moment, brave Adventurer," she says
You answer, <>
+ "I must leave immediately if I am to make a difference." ->make_for_door_quickly
+ "Ah, my apologies. You were saying?" <> ->listen_then_leave_BlueMug

= make_for_door_quickly
You quickly get up and head out the door.

+ [You look east] -> CanisVillaTraining.scene


= listen_then_leave_BlueMug
you say. 

She replies, "Kindess is not given enough these. Please if you ever meet a Jedi Master, tell him of this simple kindness and he will know it to be true in your heart. Perhaps it will result in small reward."

+ She continues, <>
"You should be off now and catch the Trainers before they leave for the day. You will find four of them; a cleric, a fighter, a rogue, and a wizard. Good luck!"
+ You answer, "Thank you."
- You get up and head out the door.
+ You step into the street -> CanisVillaTraining.scene

//-"Have you decided what type of Adventurer you want to be?
///* "Yes," you answer.
//* "No," you answer.
TODO: Write a Character Class Introduction and Description in this section
Once you get to the Training Grounds, you should consider specializing 
-> DONE

=== CanisVillaTraining ===

= scene
You head east of the village, and find the Training grounds.
+ You look around.
- A grizzled veteran fighter is training a group of three young men and a couple young ladies in the center of the glen.
+ [Across the open space]
- Across the open space a woman dressed in a velvety blue robe is tracing gestures in the air as a young man and lady look on.
+ [At the southern edge]
- At the southern edge of the open space near a small creeek a woman in a plain brown robe is sitting with man, praying in low voices.
+ [Upon a rock]
- A fourth individual is sitting alone on the northern side of the glen on a rock. He appears to be looking around lazily.
+ You say aloud <>
- to yourself, "Ok this is it, Let's do this!"
-> CallToAction

// CALL TO ACTION
TODO: CALL TO ACTION
=== CallToAction ===
= basic
+ [<i>When you reach the end of a chapter you have the option to continue the story now OR comeback later. If you comeback later, use the "CONTINUE" option. The continue option takes you to a Table of Contents, but you need to know your next destination before leaving a chapter in the story! For now, continue the story until you know the location of your first Quest. Good luck weary Adventurer! </i>] -> post_training_1

= thanks
A faint ghostly image of a Jedi Master appears briefly in front of you.
"Thanks for visiting!"
"Comeback soon."
"I'm always adding new content and sometimes even adding to the earlier storyline. If you enjoy this sort of thing let me know, too."
-> DONE


= post_training_1
After two weeks time of moderate training with your class Trainer in the "<b>STARTER SET</b>," you've learned some valuable skills. You are ready for your first <i>real</i> Quest.

You ask the Fighter Trainer for advice.

+ He replies, <>
- "If you are interested in the strange weather happenings, there is rumor of its <i>origins</i> being connected to Clun Castle to west of Canis village."
+ [He continues]
- "Otherwise, I would find Quests in faroff lands or the mysterious isles to the south both of these will require a ship in Eastport."

+ [<i>Continue the story later</i>] -> thanks
+ [<i>Continue the story now, Go to Clun Castle</i>] -> ClunCastle.wrong
+ [<i>Continue the story now, Go to Eastport</i>] -> Eastport





