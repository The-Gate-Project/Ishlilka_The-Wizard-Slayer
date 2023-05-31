BEGIN bdishy 

///////////////
///intro talk//
///////////////


IF ~Global("Ishtrollcave","BD0062",0)~ THEN BEGIN t1ishtroll
SAY @4500 /* Ugh...this place is...horrific! Let's get out of here as soon as we can, please... */
IF ~~ THEN DO ~SetGlobal("Ishtrollcave","BD0062",1)~ EXIT 
END 

IF ~Global("Ishtrollcave2","BD7110",0)~ THEN BEGIN t2ishtroll
SAY @4501 /* This cave...it's rather beautiful, wouldn't you agree? */
= @4502 /* There seem to be orcs in this region. Soon, they will probably claim this place as their own, and nurture their tribe in it... */
= @4503 /* Luthic will be pleased, I think. */
IF ~~ THEN DO ~SetGlobal("Ishtrollcave2","BD7110",2)~ EXIT 
END 




//////////////////////
//////////////////////

IF ~Global("IshyTalk","GLOBAL",2)~ t3
SAY @4504 /* <CHARNAME>, about Sarevok... */
++ @4505 /* What about him? He is old news, and you were there for the final battle. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + ishtalksarevok 
++ @4506 /* What is there to say? He took everything from me and in return I took everything from him. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + ishtalksarevok 
++ @4507 /* Do not *dare* talk to me about such personal matters. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + ishtalksarevokdick
IF ~~ THEN EXIT
END
 
IF ~~ THEN BEGIN ishtalksarevok 
SAY @4508 /* I was wondering how you felt. About having to kill your half brother. */
++ @4509 /* I've never truly taken pleasure in the spilling of blood, and that day was no exception. I thought that, perhaps, I would find a more peace in Gorion's death by causing the death of him, yet it never truly works out that way, does it? */ + ishtalksarevok1 
++ @4510 /* This was a quest for revenge, and it was well earned. Defeating Sarevok was my proudest moment yet. */ + ishtalksarevok22
++ @4511 /* As if that is any of your buisness. */ + ishtalksarevokdick
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishtalksarevok1
SAY @4512 /* No...that it doesn't. I know i'm not the first to say this, my friend, but you are nothing like Sarevok. When I look at you...sometimes it gives me hope for others, as well. But this isn't the time. */
IF ~~ THEN EXIT
END  

IF ~~ THEN BEGIN ishtalksarevokdick
SAY @4513 /* You become more like him every day. One day I may not be here to protect you. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishtalksarevok22
SAY @4514 /* If i'm being honest with myeslf, I might well feel the same. After all, I am hunter. My targets all may have harmed others and need to be brought to justice, but in truth I take just as much pleasure in the conquering... */
IF ~~ THEN EXIT 
END  

//////////////////
//////////////////
//////////////////


IF ~Global("IshyTalk","GLOBAL",4)~ sodishcity
SAY @4515 /* The city looks nothing like it did when we first stepped foot in it together. At that time we had so much to worry about. I almost wish we could have enjoyed it more, while it lasted. */
++ @4516 /* I will not let Caelar, whatever her motives, destroy the city I fought to protect, or my friends. Hurting Imoen went too far. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishcity1
++ @4517 /* Indeed, it was a fine sight, wasn't it? They say it is a place that touches the hearts of all who enter it, and I find it hard to disagree. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishcity2
IF ~Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4518 /* Indeed, it was a fine sight, wasn't it? They say it is a place that touches the hearts of all who enter it. Truly, my dear, we must visit it again in better times. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishcitygf
++ @4519 /* This city is garbage, i'm not sure what you're talking about. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishcitybad
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN sodishcity1
SAY @4520 /* I agree, there is no excuse for what she's done. Imoen has been a good friend to me, and I will gladly show the Crusade what happens when you mess with my friends. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sodishcity2
SAY @4521 /* I can see why that would be. The busting crowds of the city, the intrigue, it's all something I will remember for many years. But come, we've our own legends to continue crafting. */
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN sodishcitygf
SAY @4522 /* Yes, my first time visiting it will be something I remember for a long time...even more so because I was with you, <CHARNAME>. I will look forwards to our next visit then. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN sodishcitybad
SAY @4523 /* The savior of Baldurs Gate who doesn't like Baldurs Gate...the irony is deep, you have to admit. *giggles* */
IF ~~ THEN EXIT
END 

//////////////////
//////////////////
//////////////////

IF ~Global("IshyTalk","GLOBAL",6)~ sodishquest
SAY @4524 /* <CHARNAME>, while we are heading North, we need to search for another rogue mage who has evaded capture by the Spears. */
++ @4525 /* You said that this person was working for the Crusade, right? We are bound to get close to them regardless. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) SetGlobal("IshyQuest","GLOBAL",7) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishquest1
++ @4526 /* Ah, yes. Who are we to slaughter next? I hope this one is more powerful. */  DO ~IncrementGlobal("IshyTalk","GLOBAL",1) SetGlobal("IshyQuest","GLOBAL",7) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishquest2
++ @4527 /* I don't recall promising aid in this matter. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) SetGlobal("IshyQuest","GLOBAL",7) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodishquest3
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishquest1
SAY @4528 /* His name is Falterion. I know not where we will come across him...nor what his capabilities are. And there is little doubt he will recognize me by sight. I'm afraid we are at a disadvantage at the moment.  */
++ @4529 /* Recognize you? Have you met this person before? */ + sodishquestinquire
++ @4530 /* If we have no leads, what is the plan? */ + sodishquest22
END 

IF ~~ THEN BEGIN sodishquest22
SAY @4531 /* Well...I don't know, really. I just need you to have my back, <CHARNAME>. For all we know we could be walking into an ambush. */
IF ~~ THEN REPLY @4532 /* Lovely. */ + sodishquest222
IF ~~ THEN REPLY @4533 /* no. */ + sodishquest2222
END 

IF ~~ THEN BEGIN sodishquest222
SAY @4534 /* Oh, stop complaining. You want to be my great hero, don't you? Now let's go. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishquest2222
SAY @4535 /* I am sorry, but i'm not just another soldier of yours, and I have goals of my own. Now let's go. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishquestinquire
SAY @4536 /* No...but I was warned that he's escaped my parents grip before and may very well know who I am. */
++ @4537 /* But without any leads and with him knowing who you are, what is our plan?  */ + sodishquest22
++ @4538 /* Hm...I don't buy it. Are you sure your father is telling you the whole truth of this? */ +  sodishquestsmart
++ @4539 /* Look, this is all becoming too much for me. I can not aid you in this mission. */ + sodishquest33
END 

IF ~~ THEN BEGIN sodishquestsmart
SAY @4540 /* O-of course he is. How could you imply otherwise? */
= @4541 /* Anyway, as I said, I know not where he is nor do I have any leads...we'll just have to be on the lookout. After seeing what was in store for me on my last mission, i'm glad I have you to back me up. */
END 


IF ~~ THEN BEGIN sodishquest2
SAY @4542 /* I imagine he will be, but keep your lust for battle in check. His name is Falterion. I know not where we will come across him...nor what his capabilities are. And there is little doubt he will recognize me by sight. I'm afraid we are at a disadvantage at the moment. After seeing what was in store for me on my last mission, i'm glad I have you to back me up. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishquest3
SAY @4543 /* Then I don't recall promising aid in yours. Farewell. */
IF ~~ THEN DO ~LeaveParty() EscapeAreaDestroy(6)~ EXIT 
END 

IF ~~ THEN BEGIN sodishquest33
SAY @4544 /* Then I can not aid in yours. Farewell. */
IF ~~ THEN DO ~LeaveParty() EscapeAreaDestroy(6)~ EXIT 
END 

///////////////////
///////////////////
///////////////////

IF ~Global("IshyTalk","GLOBAL",8)
Dead("Falteri")~ THEN BEGIN sodthesixthishytalk
SAY @4545 /* Did I ever get a chance to thank you for your help back there? That mage was powerful. Even with a squad of Fists I doubt I could have taken him. */
++ @4546 /* He said something of "destroying his comrades"? Who was he referring to? */ DO ~IncrementGlobal("IshyTalk","GLOBAL",3) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodthesixthishytalk1
++ @4547 /* I barely broke a sweat against such a pitiful caster. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",3) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodthesixthishytalk2
++ @4548 /* Bother me no further, i've enemies to crush. */ DO ~IncrementGlobal("IshyTalk","GLOBAL",3) RealSetGlobalTimer("IshyTimer","GLOBAL",5600)~ + sodthesixthishytalk3
END 

IF ~~ THEN BEGIN sodthesixthishytalk1
SAY @4549 /* Yes, I heard that too. Father mentioned his adventuring career ended when his party was wiped out and he barely escaped, but...he's having me hunt them? THis is a bit much to take in right now. Let's...let's just move on. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodthesixthishytalk2
SAY @4550 /* I wish I had your confidence. Even with my training, it's not always easy to stand firm against the foes we face. But, i'm stronger knowing i'm with you. Who can touch the child of a god and a hero of a city to boot, right?  */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodthesixthishytalk3
SAY @4551 /* You have the spirit of Gruumsh himself, friend. I'll forgive your rudeness this time. */
IF ~~ THEN EXIT 
END 



/////////////////////


/////////////////////

IF ~Global("IshyLoveTalk","GLOBAL",2)~ THEN BEGIN t33
SAY @4552 /* So, <CHARNAME>, since i've only just recently come back...I was wondering how you've been doing lately. You know, besides still playing the hero and all.  */
IF ~InParty("Viconia")
!InParty("Safana")~ THEN REPLY @4553 /* Awaiting your return, mostly. It is good to have you at my side again. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5600)~ GOTO ishdawww
IF ~!InParty("Viconia")
!InParty("Safana")~ THEN REPLY @4553 /* Awaiting your return, mostly. It is good to have you at my side again. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5600)~ GOTO ishdawww2 
IF ~!InParty("Viconia")
InParty("Safana")~ THEN REPLY @4553 /* Awaiting your return, mostly. It is good to have you at my side again. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5600)~ GOTO ishdawww3
IF ~InParty("Viconia")
InParty("Safana")~ THEN REPLY @4553 /* Awaiting your return, mostly. It is good to have you at my side again. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5600)~ GOTO ishcharnameisaplayer
++ @4554 /* Oh you know, enjoying the wealth and social status you get when an entire city sees you as it's savior. Pretty nice. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5600)~ + ishegocentrism
++ @4555 /* Why did you even come back?  */ + ishdatesadouchebag
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishdawww
SAY @4556 /* Always with the flattery. Not that i'm complaining, of course, but sometimes I wonder if you really mean it... */
= @4557 /* I mean...why do you keep Viconia with you anyways? Never mind... */
IF ~~ THEN EXIT
END  

IF ~~ THEN BEGIN ishdawww2
SAY @4558 /* Always with the flattery. Not that i'm complaining, of course. Just...save it only for me, okay? */
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishdawww3
SAY @4556 /* Always with the flattery. Not that i'm complaining, of course, but sometimes I wonder if you really mean it... */
= @4559 /* I mean...why do you keep Safana with you anyways? Never mind... */
IF ~~ THEN EXIT
END  

IF ~~ THEN BEGIN ishcharnameisaplayer
SAY @4556 /* Always with the flattery. Not that i'm complaining, of course, but sometimes I wonder if you really mean it... */
= @4560 /* I mean...you keep Viconia AND Safana with you. I know I don't own you, <CHARNAME>, but...oh, never mind! */
IF ~~ THEN EXIT
END  



IF ~~ THEN BEGIN ishegocentrism
SAY @4561 /* Wow. This whole "Hero of Baldurs Gate" thing has really gotten to your head, huh? You're not the same <CHARNAME> I used to know... */
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishdatesadouchebag
SAY @4562 /* Well fine! If you don't need me i'll just leave! */
++ @4563 /* I apologize, I didn't mean it like that. You are more than welcome here, of course. */ + ishdatesadouchebag2
++ @4564 /* Yeah, whatever then. */ + ishdatesadouchebag3
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishdatesadouchebag2
SAY @4565 /* Right, i'm sorry...I guess it makes sense you may be wondering. I have assignments here still, actually. But that's for another time. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishdatesadouchebag3
SAY @4566 /* *Ishlilka runs off, tears in her eyes* */
IF ~~ THEN DO ~LeaveParty() EscapeAreaDestroy(6)~ EXIT
END


//////////////////////////
////////////////////////////
//////////////////////////////

IF ~Global("IshyLoveTalk","GLOBAL",4)~ THEN BEGIN t3300
SAY @4567 /* Caelar Argent is a powerful foe...I fear for you, <CHARNAME>. */
++ @4568 /* And why is that? I can fend for myself well enough. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + t33001
++ @4569 /* Do not fear for me, my dear Ishlilka. With the backing of Daggerford and Waterdeep I can accomplish this task. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + t33001
++ @4570 /* The bitch has no chance against me. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + t3312 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN t33001
SAY @4571 /* Of course you can. But this overconfidence may make you lax in your defenses. */
= @4572 /* You are bigger than your own personal struggles now. You represent the hopes of the people. You are dear to them. Dear to...me. */
++ @4573 /* Worry not. We will be victorious, and then hopefully peace and freedom await us...together. */ + t3311
++ @4574 /* Overconfidence?! I've stopped all who come before me. How could you have so little faith? */ + t3312
++ @4575 /* I have little need of companions with so little faith in me. */ + t344
END 

IF ~~ THEN BEGIN t344
SAY @4576 /* You don't need to be like that! I was just trying to help. */
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN t3311
SAY @4577 /* I'm not sure either of our lives will ever be truly peaceful, but...even just a little time for us to have some quiet, away from all the battles, would be nice. I'm sorry I couldn't stay after Sarevok's defeat last time. This time maybe I will be more lucky. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN t3312
SAY @4578 /* Honestly! Do you ever consider anything besides your ego? */
++ @4579 /* Sometimes I consider how unfortunate it would be to be a less attractive, less capable man... */ + ishtnotfunny
++ @4580 /* Of course. How lucky I am to have you as a companion, for one. */ + ishflattererer 
++ @4581 /* Yeah, like why I keep you. */ + ishdatesadouchebag3
END 

IF ~~ THEN ishtnotfunny
SAY @4582 /* Alright, let's just keep walking before I throw up. */
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishflattererer
SAY @4583 /* Flatterer! I'll let your self-congratulations go this time, "hero". */
IF ~~ THEN EXIT 
END 


IF ~Global("IshyLoveTalk","GLOBAL",6)~ THEN BEGIN sodishlovetalk4
SAY @4584 /* I told them about you, you know. My parents, I mean. */
IF ~Race(Player1,HUMAN)~ THEN REPLY @4585 /* Oh? I hope that meeting went well. I know your family is important to you, and I would hate for them to disapprove. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + sodishlovetalkhuman
IF ~Race(Player1,HALFORC)~ THEN REPLY @4585 /* Oh? I hope that meeting went well. I know your family is important to you, and I would hate for them to disapprove. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + sodishlovetalkorc
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @4586 /* Gods, no...I mean, aren't we taking this a bit...fast? */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + sodishlovetalkelfdick
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @4585 /* Oh? I hope that meeting went well. I know your family is important to you, and I would hate for them to disapprove. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + sodishlovetalkelf
IF ~!Race(Player1,HALF_ELF)~ THEN REPLY @4586 /* Gods, no...I mean, aren't we taking this a bit...fast? */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ + sodishlovetalkregulardick
IF ~~ THEN REPLY @4587 /* Okay, you're really getting the wrong idea now. */ + ishdatesadouchebag3
END  

IF ~~ THEN BEGIN sodishlovetalkhuman
SAY @4588 /* They took it well, actually. Better than I thought they would, at least. I suppose them both having human blood themselves makes it hard to criticize. */
= @4589 /* Regardless, i'm glad they understood my...desire to linger here. Beyond the more...personal matters of our pairing, we can do much good in the realms, I think. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishlovetalkorc
SAY @4590 /* Very well. They were quite pleased that you had orc blood like us. Mother and father put a bit too much stock in such things at times...but still... */
= @4591 /* I'm glad they understood my...desire to linger here. Beyond the more...personal matters of our pairing, we can do much good in the realms, I think. */
= @4592 /* And just think of it! Two heroes of orc blood, doing good and giving our race a better name. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishlovetalkelf
SAY @4593 /* Not...well. At all. A lot of "elves are the natural enemies to orcs even among the gods" kind of thing... */
= @4594 /* I mean, we both share a half human side, don't we? There is no need for these...pre concieved notions of your intentions. */
= @4595 /* I don't know how I will handle this, but for now, i'd appreciate it if we just moved on. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN sodishlovetalkelfdick
SAY @4596 /* I...I can't believe i'm hearing this. Do you have any idea how hard it was to tell them i'd falen for a man with elf blood! */
= @4597 /* Just...just go away! I never want to see you again! */
IF ~~ THEN DO ~LeaveParty() EscapeAreaDestroy(2)~ EXIT END 

IF ~~ THEN BEGIN sodishlovetalkregulardick
SAY @4598 /* What do you mean? If you aren't ready for anything even slightly serious... */
IF ~~ THEN EXIT 
END 

IF ~Global("IshyLoveTalk","GLOBAL",8)~ THEN BEGIN sodishlovetalk9
SAY @4599 /* No matter what anyone says about you, my dearest, you are the hero I know you to be. */ 
= @4600 /* I know the feeling of being reviled for that which you can not control...and I hate to think of you having to go through that. */
= @4601 /* But i'm rambling, I know, and we have so much to do yet...lead on, my hero. */
IF ~~ THEN DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",5000)~ EXIT END



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////.///////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////debug scripts////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




//////////////////////////
/////////////////////////
/////////////////////////


IF ~Global("IshyQuest","GLOBAL",1)~ THEN BEGIN ishdebug
SAY @4602 /* I don't understand why you didn't help me capture Juleska, <CHARNAME>... */ 
= @4603 /* I know you have your own concerns...but that's what I came here to do, you know? */ 
IF ~~ THEN DO ~SetGlobal("IshyQuest","GLOBAL",6)~
EXIT
END 

IF ~Global("IshyQuest","GLOBAL",2)~ THEN BEGIN ishdebug
SAY @4602 /* I don't understand why you didn't help me capture Juleska, <CHARNAME>... */
= @4603 /* I know you have your own concerns...but that's what I came here to do, you know? */
IF ~~ THEN DO ~SetGlobal("IshyQuest","GLOBAL",6)~
EXIT
END 


IF ~True()~ THEN BEGIN TalonDialogue
SAY @4604 /* Hm? ...Oh, it's you. */ 
IF ~Global("IshyQuest","GLOBAL",7)~ THEN REPLY @4605 /* Can you tell me anything else about Falterion? */ + IshJpid
IF ~OR(2) Global("Chapter","GLOBAL",8) Global("Chapter","GLOBAL",9)~ THEN REPLY @4606 /* What do you think about Caelar Argent? */ + IshCpid
IF ~OR(2) Global("Chapter","GLOBAL",10) Global("Chapter","GLOBAL",11)~ THEN REPLY @4606 /* What do you think about Caelar Argent? */ + IshCpid2 
IF ~Dead("Falteri") Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4607 /* What will you do now? */ + IshJpid2
IF ~Dead("Falteri") !Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4607 /* What will you do now? */ + IshJpid3
IF ~Global("Chapter","GLOBAL",7)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp7pid
IF ~RandomNum(5,1)~ THEN REPLY @4609 /* Anything on your mind? */ + ishrand1
IF ~RandomNum(5,2) !Global("Chapter","GLOBAL",7)~ THEN REPLY @4609 /* Anything on your mind? */ + ishrand2
IF ~RandomNum(5,3)~ THEN REPLY @4609 /* Anything on your mind? */ + ishrand3
IF ~RandomNum(5,4)~ THEN REPLY @4609 /* Anything on your mind? */ + ishrand4
IF ~RandomNum(5,5)~ THEN REPLY @4609 /* Anything on your mind? */ + ishrand5
IF ~RandomNum(4,1) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4610 /* Anything on your mind, my dear? */  + ishrpid1
IF ~RandomNum(4,2) Global("IshyRomanceActive","GLOBAL",2) AreaType(DUNGEON)~ THEN REPLY @4610 /* Anything on your mind, my dear? */ + ishrpid2
IF ~RandomNum(4,3) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4610 /* Anything on your mind, my dear? */ + ishrpid3
IF ~RandomNum(4,4) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4610 /* Anything on your mind, my dear? */ + ishrpid4
IF ~!Global("Chapter","GLOBAL",7)~ THEN REPLY @4611 /* How do you feel about our allies? */ + ishpapid
IF ~Global("Chapter","GLOBAL",8)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp8pid
IF ~Global("Chapter","GLOBAL",9)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp9pid
IF ~Global("Chapter","GLOBAL",10)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp10pid
IF ~Global("Chapter","GLOBAL",11)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp11pid
IF ~Global("Chapter","GLOBAL",12) !Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp12pid
IF ~Global("Chapter","GLOBAL",12) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY @4608 /* Any thoughts on our current situation? */ + ishchp13pid
END

IF ~~ THEN BEGIN IshCpid2
SAY @4612 /* She's...odd. She spoke with such conviction, but her goals are insane. And she still hurt Imoen! */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp13pid
SAY @4613 /* I...would go anywhere for you, <CHARNAME>. You are...precious to me. I'd rather face hell itself than lose you. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishrpid4
SAY @4614 /* People are a lot nicer to me ever since we've become...you know. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishrpid1
SAY @4615 /* There are so many places we can travel together...once this is all done, I mean. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishrpid2
SAY @4616 /* Don't distract me here! It's hard to think straight when you're...so close. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishrpid3
SAY @4617 /* I find you filling my thoughts more and more lately...I couldn't go an hour without wondering what you were doing, when I left to report to my family. */
= @4618 /* I could tell they knew something was up before I had even mentioned you. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishchp12pid
SAY @4619 /* I...can't even believe i'm doing this. But...we don't have a choice now, do we? Gods, i'm a fool... */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp11pid
SAY @4620 /* We really face a lot of foes...I don't think I could ask for better training in mass combat, but anything could happen against an army... */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp10pid
SAY @4621 /* You didn't do anything wrong...nobody should be judging you for what happened! */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp8pid
SAY @4622 /* Caelar certainly built up an impressive army quickly... */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp9pid
SAY @4623 /* I can't believe we're marching towards Dragonspear...my family will be quite proud of me for this one. */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpapid
SAY @4624 /* Who do you mean? */
IF ~InParty("Voghiln")~ THEN REPLY @4625 /* I'm talking about Voghiln. */ + ishpapid1
IF ~InParty("MKHIIN")~ THEN REPLY @4626 /* I'm talking about M'khiin. */ + ishpapid2
IF ~InParty("DORN")~ THEN REPLY @4627 /* I'm talking about Dorn. */ + ishpapid3
IF ~InParty("Rasaad")~ THEN REPLY @4628 /* I'm talking about Rasaad. */ + ishpapid4
IF ~InParty("Corwin")~ THEN REPLY @4629 /* I'm talking about Corwin. */ + ishpapid5
IF ~InParty("Edwin")~ THEN REPLY @4630 /* I'm talking about Edwin. */ + ishpapid6
IF ~InParty("Khalid")~ THEN REPLY @4631 /* I'm talking about Khalid. */ + ishpapid7 
IF ~InParty("Jaheira")~ THEN REPLY @4632 /* I'm talking about Jaheira. */ + ishpapid8
IF ~InParty("Baeloth")~ THEN REPLY @4633 /* I'm talking about Baeloth. */ + ishpapid9
IF ~InParty("Minsc")~ THEN REPLY @4634 /* I'm talking about Minsc. */ + ishpap1
IF ~InParty("Dynaheir")~ THEN REPLY @4635 /* I'm talking about Dynaheir. */ + ishpap2
IF ~InParty("Viconia")~ THEN REPLY @4636 /* I'm talking about Viconia. */ + ishpap3
IF ~InParty("Glint")~ THEN REPLY @4637 /* I'm talking about Glint. */ + ishpap4
END 

IF ~~ THEN BEGIN ishpap4
SAY @4638 /* What an odd little man. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpap3
SAY @4639 /* Poor Viconia. She's not treated well anywhere, is she? */
= @4640 /* ...I suppose that's not entirely unjustified. */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpap2
SAY @4641 /* I think she may be a bad influence. Who else could have gave Imoen the idea of casting spells...? */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpap1 
SAY @4642 /* He won't let me hold Boo! It's not like i'm going to hurt him! */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpapid9
SAY @4643 /* We need all the help we can get...but that bastard deserves to rot rather than stand by our side. */
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishpapid8
SAY @4644 /* She's improving quickly...her reaction times seem to be getting faster. */
IF ~~ THEN EXIT 
END 




IF ~~ THEN BEGIN ishpapid1 
SAY @4645 /* For a bard and general drunken lout, he fights well. I'll give him that. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpapid2
SAY @4646 /* A wise leader of her people. Mother told me many tales of orc shamans of Luthic, ones who could speak to the spirits of our ancestors for guidance. Thank you for bringing her along, <CHARNAME>. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishpapid3
SAY @4647 /* Should have let him rot in his cage. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishpapid4
SAY @4648 /* He's proven reliable. But I still feel fighting with no protection is foolhardy... */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishpapid5
SAY @4649 /* We've gotten along quite well since I started volunteering to help the Flaming Fists. They're really overworked and understaffed right now. She has it hard. */
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishpapid6
SAY @4650 /* Well...we need all the help we can get right now, I suppose. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishpapid7
SAY @4651 /* I worry for him. Can he handle what may come...? */
IF ~~ THEN EXIT 
END 



IF ~~ THEN BEGIN ishrand5
SAY @4652 /* I'll be glad when we're resting in safety for a change. Not that i'm complaining, of course. */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishrand4
SAY @4653 /* If I get the jump on mages or priests, they have no chance. We don't have any invisibility, do we? */ 
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishrand3
SAY @4654 /* I need a weapon. A deadly spear, capable of piercing even dragon hide... */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishrand1
SAY @4655 /* That battle against Sarevok was truly frightening...I don't think i've ever felt that way in a fight before. */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishrand2
SAY @4656 /* How did Caelar get so many people to follow her so quickly? It almost seems like there is more at work.. */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN IshCpid
SAY @4657 /* Anyone who hurts Imoen is an enemy of mine. She was one of the few who was nice to me...I hope she's okay... */
IF ~~ THEN EXIT 
END  


IF ~~ THEN BEGIN ishchp7pid 
SAY @4658 /* Let us gather whatever party we can and venture forth. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN IshJpid 
SAY @4659 /* My father warned me he was a slippery one, and we'd have to act fact if we didn't want him to gain the advantage. Other than that, not much, i'm afraid. */ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN IshJpid2
SAY @4660 /* I...I don't want to leave your side, <CHARNAME>. Maybe mercenary work isn't all it's cracked up to be. If your life is one on the road, well...i'd like that to be my path as well. */
= @4661 /* But...this is a bit early for all that. I...have much to think about. */
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN IshJpid3 
SAY @4662 /* I think now i'm finally ready. My father can not possibly deny me a place in his squad with what i've accomplished. Truly, my friend, I can not thank you enough. */
= @4663 /* For now, however, let's focus on getting rid of Argent. */ 
IF ~~ THEN EXIT 
END 