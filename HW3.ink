VAR reset = false
VAR has_scepter = false
VAR has_watch = false
VAR has_crest = true
VAR has_stars = false
VAR bone_zone = false
VAR has_gun = false
VAR has_fly = false
VAR has_core = false
VAR todd_runs = false
VAR heist_done = false
VAR has_eduardo = false
VAR wiseman = false
VAR timeshare = 0
VAR todd_time = false
VAR frog_time = false
VAR guard_time = false
VAR classroom = true

LAST TIME, ON INKY HW:
After the young adventurer's horse Eduardo was injured on a perilous journey in The Western Swamp, they seeked aid from a mysterious Frog-Knight. It turned out to be no Frog-Knight at all, but the Warrior-Princess Frogalin of the Noble Family Frogatia. Upon discovering her true nature, she awards your kindness by teleporting you and Eduardo to The Lands of Frogsville. What mysteries could be discoveried here...

* Begin Story 
    ->Story_Start

== Story_Start ==

You slump over, the effects of teleportation still overcoming you. Coughing against the floor, you soon come to your senses and gather your bearings. Soon, you realize that, by happenstance of the teleportation magic, you have been transported a bit of a ways away from Eduardo and Frogalin. 

    ->Loop_Start

== Loop_Start ==
~ has_scepter = false
~ has_crest = true
~ has_stars = false
~ has_gun = false
~ has_fly = false
~ has_core = false
~ todd_runs = false
~ heist_done = false
~ has_eduardo = false
~ todd_time = false
~ frog_time = false
~ guard_time = false
~ timeshare = 0
~ classroom = true
Before you stands the slums of the Frogsville Kingdom. Frogalin and Eduardo are nowhere to be seen. A chill creeps down your spine from an unknown origin. Something devious is afoot.

{ has_watch == true: You still have The Quantum Watch. For some reason, the time loop does not seem to affect it.}
{ bone_zone == true: You still have the ability to reset quantized objects. The Eldritch Horror is still very real, and so is time.}

Looking at a map in the townsquare you see a map and the time.

12:45 PM

You can stay in the slums, approach the castle, or explore the University of Frogsville.
-> Locations

== Locations ==
+ The Slums[.], you decide the source of the chill is here, and has to be investigated.
    { todd_runs == true: ->slumsComplete}
    ->The_Slums
+ The Castle[.], surely Frogalin and Eduardo are there.
    {heist_done == true: ->castleComplete}
    ->Castle_approach
+ The University of Frogsville[.], you're interested in matriculating there.
    ->UFV

== The_Slums ==
Time: 12:45 PM

This chill filling you, something is certainly wrong here. Eduardo and Frogalin can wait. As you walk through the slums, searching for the source of the chill, two frogs in a trench coat approach you. They wear a nametag: "Todd Two-Frogs." They appear to be some sort of merchant. They ribbit twice at you, after you shrug they switch to english. The frog on top speaks while the one on the bottom directs movement.

"Ribbit, well you're certainly not from around here are you. Oh yes I can tell on your face ribbit. I have wears, if you have coin."

They show you their wears: A Quantum Watch, The Bone-Cold Spector, and a ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ.
You do not have coin, but maybe you could convince him to buy one.
->slumShop

== slumShop ==
+ The Quantum Watch
    "Oh the Quantum Watch? Tickles your fancy huh? Don't know what's up with it, found it at the side of the road a second ago. Like it appeared out of thin air, boom, bap, pow. Right there. Seems odd. Seems expensive though, that'll be 50 thousand doublons. Well I might take an equally priceless item.
    
    ++ "I don't have that money."
        "Then too bad bucko, buy something else."
        -> slumShop
        
    ++ { has_fly == true } Hand him the Fly of Frogatia
        "My god, The Fly of Frogatia? Now that's a real find! Here you go!"
        
        Todd Two-Frogs hands you The Quantum Watch. It's ticking is otherworldly, and it clings to your arm as you put it on. For some reason, a deep feeling tells you this watch will be able to withstand the time-loop.
        
        ~ has_watch = true
        Todd Two-Frogs seems happy with the Fly, and runs off.
        ~ todd_runs = true
        
        You return to the road, determining your next location.
        ->Locations
        
+ {has_scepter == false}The Bone-Cold Spector[, let me have that.]
    That must be the cause of your shivers, you reach out to it.
    
    "Oh the sceptor, Bone-Cold they call it. You know why? Because it makes your bone's cold. Yeah they weren't real creative with the naming, blame the writer I suppose. I'll give this up for, eh I'll give it for a Crest or something. You probably don't have one."
    
    ++ {has_crest == true} Actually I do
        "BY GOLY ME YOU HAVE A CREST. Listen, if you're some sort of cop just let this stand by."
        
        You explain how you obtained the crest.
        
        "Oh really? Frogalin huh, well alright since you're not a cop, and I know that because you legally have to tell me, I'll give it to you in exchange."
        
        The frog acting as the head reaches their hands out and grabs the Crest while the frog on the bottom pulls out the Bone-Cold Spector and gives it to you.
        
        Touching it makes your bones feel cold. Yup, the marketing on the packaging was, in fact, correct. Despite this, it's a different type of bone-coldness then what you had felt when you teleported here.
        ~has_scepter = true
        ~has_crest = false
        
        ->Locations
    ++ Nevermind I don't want that
        ->slumShop
+ ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ
    
    The mysterious object is unable to be recognized. The longer you stare at it the less you know what it exactly is. In fact, as you look it stops appearing to be anything at all. You become entranced, then Todd Two-Frogs slaps you right across the cheek.
    
    "Sorry buckeroo, this thing tends to do that to people, only way to get someone to snap out of it."
    
    ++ {has_gun == true}[Point gun at Todd Two-Frogs] "No funny business frog, I mean frogs."
        ->robbery
    ++ How did you even get that?
        "Dunno."
        Both frogs shrug, causing them to lose balance and regather their bearing. After much awkwardness and a bit of tossing, they resume their stance as a real man.
        "Want something else then?" The top frog asks, completely avoiding any possible awkwardness caused by the event.
        ->slumShop
+ Nevermind
->Locations
+{wiseman == true && todd_time == false} Want to join a timeshare?
    Todd Two-Frogs shrugged, "Sure but what does that have to do with anything?"
    
    You got a new signature on the timeshare, you wonder if both can sign, but it's already been done.
    ~todd_time = true
    ~timeshare = timeshare + 1
    ->slumShop

== slumsComplete ==

With Todd Two-Frogs gone, there isn't much you can do here.
->Locations

== robbery ==
    The frogs hold their hands up. But even then they don't appear at all taken aback by your attempts at robbery. This is not their first rodeo.
    
    "Woah woah, you want it that bad huh? Well you're in an odd part of town bucko. Plus you got two targets, didn't think of that did you? Yeah yeah you're all confused now. Shoot me and sure I go, but little Frobbert here is gunna punch you in the dick."
    
    Frobbert, that appears to be the name of the frog on the bottom, nods. "Damn right." He has an oddly deep voice, silky sweet like churned cream. You even realize he has a pair of alluring blue eyes.
    
    "Shoot Frobbert, and well, let's just say I graduated from UFV with a degree in throat punching. Litteraly, I have the degree here." 
    Frobbert pulls the degree out, it says "Bachelors of Science in Throat Punching, Chopping, Jugular Holding, and The Sort," scary.
    
    ++ Shoot Frobbert
        The gunshot rings through the slums. Frobbert is blown back, groaning as you hit his little frog arm.
        
        Suddenly you see the sky, when did that happen? Then you see the ground, then the sky again. The frog on top is punching, chopping, jugular holding your throat in a dozen of new and complexly cruel ways.
        You soon fall over in complete disarray. The frog grabs Frobbert, running off.
        
        "What the fuck is wrong with you?" Frobbert says as they run off.
        
        As you groan, no one comes to your aid, why would they? You just shot at a not so defenseless merchant. As you look at the clock you see the time tick. It seems that multiple concusions had caused you to lose track of the hours.
        
        TIME: 1:15 PM
        ->Reset
    ++ Shoot The Throat-Punching Frog
        The gunshot rings through the slums. The frog on top is blown back, having bitch-slapped the bullet out of the air.
        
        Frobbert punches you in the groin of respected sex. Male, female, or other, doesn't matter they're punching it hard. You buckle over and groan hard. That hurt, and you can see stars. You fall unconscious.
        
        As you come to, you realize that you had lost lots of time. Also you're completely stripped of all of your belongings other than the trench-coat the frogs had worn. They laid it on top of you, if they're going to rob you they were gunna at least have the class to leave you covered.
        
        TIME: 1:15 PM
        ->Reset
    ++ Flirt
        You tell Frobbert he has dazzling blue eyes. Like Neptune, constantly spiraling around The Sun in its constant tranquility. A tranquility that is paradoxical, as it is simultaneously still while also plummiting millions of miles per hour through deep space.
        
        Frobbert blushes, Neptune doesn't exist in this fantasy universe, but he gets the gist. No one had ever complimented his eyes before. No one since his late mother, who tragically died due to The Freak Hawk-Attack Incident of 1985.
        
        "You really think so?" Frobbert says, ribbiting to himself.
        
        +++ ["So dearly"] "So dearly," you say while staring deep into those eyes.
            Frobbert blushes, he hasn't experience such gentleness since his college years. When he met a girl that became his dream, his beautiful Ribbetta. Until she died in The Freak Hawk-Attack Incident of 1985.
            
            "Say boss, can't we give him the thingy? He seems nice." Says Frobbert.
            
            The Frog on Top is genuinely tickled, adoring the affection you have shown his dear friend. He contimplates this, rubbing his paw fingers together.
            
            "Well, I suppose." He suddenly changes, realizing this was still a robbery. "No, we have to determine if he is for real. Tell us stranger, what is your other favorite part of Frobbert."
            
            ++++ ["His deep voice."] "His deep voice," you say with a blush.
                "Really?" Frobbert says, a little shy.
                
                You nod, eagerly, and he knows that you really mean it.
                
                The Frog on Top smiles like a proud father, watching his best friend feel warmth for the first time in years. Not since his sister was killed in The Freak Hawk-Attack Incident of 1985.
                
                "Thank you for showing him warmth, genuine kindness, and love." The Frog on Top says, before handing you the ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ.
                
                Before Frobbert can give you his number, you touch the ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ.
                
                Sudden darkness overcomes you, and you feel a strange tingling in your spine.
                
                ->BoneZone
                
            ++++ ["The Fact He is A Frog"] "The fact that he is a frog," you say like a pervert.
                Frobbert frowns, so does The Frog on Top.
                "Fetishest!" They both exclaim in unison.
                Soon a crowd forms around you.
                "Fetishizer! Fetishizer! Fetishizer!
                
                The crowd beats you up, shame on you.
                
                You lose track of time, you can't even see the change in time before...
                
                ->Reset
        +++ While he is distracted, reach for the ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ ᴥꜰᴥ.
            As you attempt to reach it, the Frog on Top grips your jugular.
            
            "I'm not offended that you would attempt that. Flattery is a great way to get ahead. What I am offended by is the fact you would compliment my dear friend in a lie, just to get ahead."
            
            ++++ Caress the Frog on Top's cheek
                "Cheater!" Frobbert says, "you make me think you're the one and then immediatelly move to my dear friend?" He is red hot now, anger more than could be culminated by a thousand souls.
                
                He punches you with a Vulcanic Viper.
                
                You die.
                
                ->Reset
            ++++ Apologize
                "Too late buddy" the Frog on Top says. Frobbert is crying gently to himself, genuinely in disarray that you would swindle him.
                
                The Frog on Top throws you to the ground, "we're not gunna hurt you, but think about this. Genuinely, do better."
                
                You sit in disarray, how could you have been so mean to poor old Frobbert and his beautiful blue eyes. You contimplate the consequences of your actions, of your lost love, and cry.
                
                You lose track of time, and suddenly it is
                
                TIME: 1:15 PM.
                ->Reset
        

== Castle_approach ==
As you approach The Castle, a guard stops you.
"Excuse me, you are trespassing, present your Crest or be arrested"

+ {has_crest == true} Sure here you go
    "Oh sick, yeah ok dude you're totally chill to like go into the castle or whatever."
    
    You walk into the castle.
    ->TheCastle
    
+ Uh what?
    "That's it, you're arrested!" He says, before knocking you out.
    ->Arrested
+ {wiseman == true && guard_time == false} Want to join a timeshare?
    The guard shrugs, "uh sure I guess, actually my wife might like that we rarely get out of the house." He signs your timeshare.
    
    ~guard_time = true
    ~timeshare = timeshare +1
    ->Castle_approach
== TheCastle ==
Entering the castle, you are immediately greated by Frogalin and Eduardo, who have been waiting for you.

Eduardo whinies at you with glee, he has been all healed up and now you can ride him around. You are certain riding him means you will be able to go from location to location faster. Which doesn't matter actually because Jesse forgot to program the action-based time-progression mechanics.
~has_eduardo = true

Frogalin ribbits at you, eager to say hello. Frogalin shakes your hand and shows you around the castle. It seems fairly boring, but a gathering of frog royalty is gathering by an object.

One of the frogs realizes you look confused, and chimes in.
"Ah, that's the Fly of Frogatia, the family's noble totem. It's a fly that is said to be immortal" the noble says, and as you look you can tell, it's a fly buzzing around a little glass bottle. Doesn't actually seem that cool, could just be any old fly.

"It's absolutely priceless! Get it? It's priceless. Priceless. Who else have you met that said they'd only give you something if you gave something pricless? Like a merchant and a watch maybe." As the frog royalty keeps talking you realize they might actually be this close to breaking character.

Returning to Frogalin, you speak to her.

->FrogalinChoices

== FrogalinChoices ==
+ {wiseman == true && frog_time == false} Want to join a timeshare?
    Frogalin ribbits in agreement, she trusts you you would never do her wrong right?
    ~frog_time = true
    ~timeshare = timeshare+1985
    ->FrogalinChoices
+ Ribbit
    "Ribbit" she says back.
    ->FrogalinChoices
+ Gotta Blast!
    ->Locations
+ I gotta steal that fly.
    Frogalin looks at you with concern, although she cannot understand you, she knows where your gaze is.
    
    "Ribbit?" she says concerned.
    ++ Ribbit.
        "Ribbit" she says with a bit of glee. Got to start over.
        ->FrogalinChoices
    ++ The Fly, I got to steal it so I can get the watch from Todd Two-Frogs
        She gasps, although she doesn't understand your words the name 'Todd Two-Frogs' seems to be famous.
        +++ What do you know him?
            She seems to understand your question and nods. 
            She stares at the fly, then at you, then at the fly again. She seems to piece together what Todd Two-Frogs wants. She shakes her head, absolutely not.
            ++++ You don't understand! We're in a timeloop and I need to get that watch.
                Frogalin gets angry now, and walks off. She points at the guards, then at you.
                
                The guards rally against you, hitting you against the head and taking you to the prison. 
                ->Arrested
            ++++ Ribbit! Ribbit ribbit ribbit ribbit! Ribbit, ribbit ribbit!
                Frogalin nods in understanding. Out of sheer luck you had just expressed an old frog-knight proverb about trusting those closest to you even in times of doubt.
                
                She causes a scene, throwing herself around and punching them. She hits a knight with a sharp uppercut that throws them 10 feet in the air.
                
                In the chaos, you run and grab the fly before running out of the castle.
                
                Behind you, you can hear more shouting, it appears Frogalin is fighting an entire batallion. Surely you will not be able to help her, but her sacrifice will allow you to get that watch.
                ~has_fly = true
                ~heist_done = true
                ->Locations
        +++ Ribbit
            "Ribbit" she says, glad that Todd Two-Frogs business is over. 
            ->FrogalinChoices
== castleComplete ==

As you approach the castle, you can tell that there is a great battle, as Frogalin continues to combat the entire army of Frogsville. You salute her, her bravery.

"My brave little frog, they will remember this feat till our ashes are scattered" You say.

Nothing to do here, you should probably go somewhere else.
->Locations

== Arrested ==
You wake up sometime later, five minutes have passed since you got knocked out. You're in a cell, but for some reason you still have all your items. For some reason, the door is made of bones.

+ Go to Bed 
    There is no way out of the cell, might as well take a nap.
    
    As some time passes, you feel odd.
    ->Reset
+ {has_scepter} Use the Bone-Cold Sceptor on the door
    The door creaks as the bones start getting like super duper cold. They snap apart.
    
    The guard runs in. "HEY! What the heck? Is that the gosh diggity darn Bone-Cold Sceptor. Oh I better get myself back into my office or I'm finished!"
    ++ Use the Bone-Cold Sceptor on the guard.
        As the guard hits the ground, a badge falls out of his pocket.
        It's the STARS Badge from the hit game Resident Evil 2. You could probably use it to unlock a better weapon than the sceptor. You sneak off, as you leave, you heard the guard get back up with no knowledge of what happen, and repairs the bone door.
        
        ~has_stars = true
        ->Locations
== UFV ==
You reach the beautiful University of Frogsville campus, and immediately go into the most scientific-looking building. As you go in, you see three doors marked: Armory, Classroom, and Basement.

Which one do you go into?
+ Armory
    Inside the armory, you see a little case with a slot for a badge.
    ++{has_stars} Insert the Stars Badge.
        The case unlocks to reveal a handgun. You acknowledge that a handgun in a fantasy setting seems a little out of place, but then you shrug and grab it.
        ~has_gun = true
         
        With nothing else to do, you leave the room.
        ->UFV
    ++ Don't have anything like that.
        With nothing else to do, you leave the room.
        ->UFV
+ {classroom == true}Classroom
    Inside of the Classroom you see the wise old man from the campsite in HW2. He seems eager to see you. "WELL HELLO BUDDY, WHATS GROOVING?" He says. "WANT TO HEAR SOMETHING?"
    ++ Dear god no
        You immediately leave the room.
        ->UFV
    ++ Yeah sure
        ->WiseOldMan
    ++ {timeshare >= 3} I have your timeshare signatures.
        He shrieks with glee "THANK GOODNESS, WITH THIS, I BET I COULD GET NOT ONE BUT TWO DATES AT THE TIMESHARE." He suddenly teleports, leaving The Warp Core on the ground. You pick it up, sighing as you know you're close to the end.
        ~has_core = true
        ~classroom = false
        ->UFV
    ++ {wiseman == true} STOP, I'll help you with your time share for the warp core!
        The wise old man blinks at you. Then smiles "OH JEE OK, GET THREE PEOPLE TO AGREE TO MY TIMESHARE AND I'LL GIVE IT TO YAH!"
        
        With this knowledge, you return to the lobby.
        ->UFV
+ Basement
    Downstairs there is a machine labeled "Literal Theoretical Time-Controller."
    
    As you approach it you notice there's some pieces missing.
    ++ Can't help, leave.
        ->UFV
    ++ {has_core == true && bone_zone == true && has_watch == true} [End the Timeloop.] Once and for all, it's finished.
        You grab the watch and the core. Using your bone-zone abilities, you reset their quantized nature. Then you place them back into the Literal Theoretical Time-Controller.
        
        As you see the time tick past 1:15PM, you give a sigh of relief, finally being able to confirm that the timeloop has finished.
        
        TRUE ENDING
        ->END

+ Leave the University
->Locations

== WiseOldMan ==
The wise old man laughs to himself and stretches, he has a long story to tell.
"SO I REMEMBER YOU SONNY FROM THE CAMPSITE, REAL NICE PLACE. ACTUALLY NO IT WASN'T MORE LIKE A REAL NICE STINK PLACE! HAHA, YEAH THEY USED TO CALL ME A REAL JOKESTER BACK IN THE DAY. OH HEY LOOK AT THIS THING-A-MAJIG I HAVE"

The wise old man shows you The Warp Core. You immediately recognize it as The Warp Core, because you played Outer Wilds right before summer.

"YEAH THIS THING JUST FELL OUT OF THE MACHINE DOWNSTAIRS. THE SCIENTISTS WERE LOOKING FOR IT ALL WILLY NILLY SAYING THEY NEED IT TO FIX THEIR HINKAMAJIGGY MACHINE OR ELSE THE LOOP WILL START AGAIN ALL OVER AND SUCH AND SUCH. I SAID TO MYSELF, NOW GEORGE THAT LOOKS LIKE A MIGHTY GOOD FIND. A MIGHTY GOOD FIND INDEED. SOMETHING REAL EXPENSIVE, LIKE SOMETHING I COULD HELP PAY FOR MY RENT AT THE TIMESHARE I OWN. SAY HAVE I TOLD YOU ABOUT THE TIMESHARE?"

+ Hey man I kinda need that.
    "WELL I WAS TELLING ONE OF THE SCIENTISTS ABOUT MY TIME SHARE. TELLING HIM REAL NICE AND FINE ABOUT IT, I WAS TRYING TO GET HIM TO INVEST IN IT. YOU KNOW SO THAT I COULD STEAL ONE OF HIS DAYS. CURRENTLY I GOT FEBRUARY 8TH AND JUNE 24TH, THOSE ARE MY TIMESHARE DAYS. BUT IF I GET HIM ON IT AND THEN TWO OTHERS I COULD PROBABLY GET ONE MORE, LIKE MAYBE MARCH 25TH. THAT'D BE A GOOD DAY, NICE AND SUNNY PROBABLY."
    ++ No like I do need that.
        "HE KEPT SAYING THAT SOME SORT OF WATCH JUST UP AND TELEPORTED AWAY. ISN'T THAT JUST SILLY? I MEAN I TELEPORTED HER FOR SURE, BUT A WATCH TELEPORTING? SAID THAT SOMEONE TELEPORTING INTO FROGSVILLE CAUSED AN ANOMALY. SAID THEY COULD PROBABLY FIND WHO DID IT, LOCATED IT DOWN TO THE SLUMS. SAID THE TELEPORTATION HIT SOME WRONG ELECTRON AND THEN BING BANG BOOP, TIME LOOP. WHATEVER THE HELL THAT MEANS. ANYWAYS HE WAS WINING AND WITHOUT HIM LOOKING I TOOK THE WARP CORE."
        
        You stare at him shoked, he doesn't know at all that he just revealed a major lore point.
        
        +++ Give me that!
            He gets defensive.
            "WHAT? ABSOLUTELY NOT! FINDERS KEEPERS. AND I KNOW LEVEL 9 MAGIC SPELLS SO I COULD PROBABLY KILL YOU IN AN INSTANT IF YOU EVEN TRIED TO TAKE IT YOU HEAR ME? AN INSTANT, A SNAP."
            
            It was true, he was quite strong, best not to try and take it.
            
            ++++ Please?
                He ignores you and continues his story.
                "THIS ONE TIME AT THE TIME SHARE, I HAD A DATE OVER. HIS NAME WAS MIKE. AND WELL MIKE LIKED THINGS, I USED TO SAY HE MIKED THEM. HAHA I'M SUCH A JOKESTER, YOU KNOW THEY USED TO SAY I WAS A JOKESTER BACK IN THE DAY? I ALWAYS SAY, USED TO!? HAHA I STILL AM, NEVER STOPPED, NEVER WILL STOP BEING A JOKESTER. WELL MIKE MIKED ME, AND I MIKED MIKE. BUT THEN WE WERE VISITING TOWN, NOT TOO FAR FROM HERE. AND A BUNCH OF HAWKS SHOWED UP AND ATTACKED HIM. JUST ABSOLUTELY DESTROYED HIM. AND HE FREAKING DIED! I DID NOT MIKE THAT AT ALL!"
                +++++ That's actually really tragic to hear I'm Sorry
                    "ANYWAYS, WELL NOW IM STARTING TO THINK I COULD TRADE THIS WARP CORE FOR MORE TIME SHARE, IN FACT I'M CERTAIN OF IT. SAY YOU WANTED IT RIGHT? WANT TO HELP ME WITH MY TIME SHARE? AND THEN I'LL GIVE IT TO Y-"
                    
                    Before he can finish his sentence, it seems like he had blabbered on so much that the time loop had initiated. Whoops.
                    ~wiseman = true
                    ->Reset

== BoneZone ==

You are in an endless darkness, it feels as if you are falling into an endless void, however you can still walk forward. However, walking seems to be a futile effort, as moving forward seems to lead you nowhere.

As you walk, you suddenly feel a rush of wind come from behind.

Turning, you see a figure that is otherworldly, an eldritch evil that cannot be described. Or maybe it could be described but the writer is endorsing a Lovecraftian method of not knowing how to describe something scary so you just endorse that the lack of description is actually scarrier. It is scarrier, so you shriek in horror as you see it.

"Yo" The Eldritch Horror says.
"Oh cool you must be the new guy, yeah it's be dreadfully boring here in The Bone Zone." The Eldritch Horror appears to be disgusted at the fact that this place is actually called that.

"Yeah DO NOT ask why they called it The Bone Zone. It was some interns job to name it. It was originally called ርልረጎፏ፱ረል but that didn't exactly roll off the tongue so we decided to switch it up. I'm telling you, NOBODY wanted 'The Bone Zone' but the intern was ርፕⶴ፱ረ፱'s son so we just kinda had to accept it.

The Eldritch Horror sighs, it appears that nepotism still exists in this dimension. It does what you can only probably guess is a shrug, then turns into a ball of light. A round ball, not much larger than a grape, but absorbing all the light inside it till it became brighter than a sun. It suddenly stops.

"Shit sorry about that, I had a big lunch, I ate the emotion solemn melancholy as a little treat and it didn't sit right" The Eldritch Horror says, then you feel your body tingle.

The darkness begins to absorb within you, completely overcoming you with an exisestential dread. But it is no exisestential dread, rather it is the entire knowledge of the universe. Just kidding, it would've been but due to budget cuts its actually just the entire knowledge of Judd Apatow and his career. You resontate with Adam Driver's character in Girls and wish Freaks and Geeks had more than one season.

"Yeah that should do it. Gave you the ability to reset a quantized object. That should help with fixing whatever thing is causing all that time mumbo jumbo down there. Or up there? Not sure it doesn't really matter to me. Plus I'm not a big time fan, its umami flavor is not always my favorite. Yeah that won't fix everything but like, I don't know man figure that out. Bye bye now." 

The Eldritch Horror does what you assume is a wave goodbye. You wave back.

As you return, you're in the slums again.

Frobbert will not remember your love.

~bone_zone = true

->Loop_Start

== Reset ==
A wave of... something comes over you.

Suddenly it feels like you are in a void. Your memories passing by you in a spiral. The primordial soup of the ontological burning your skin. The past thirty minutes, gone. 

Before you know it, you wake.
->Loop_Start
