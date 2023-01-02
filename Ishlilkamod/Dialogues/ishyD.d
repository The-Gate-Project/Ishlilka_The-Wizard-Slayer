//Ishlilka's banter files with Bhaalspawn
// COMPLETELY AND TOTALLY CORRECT! OMG!!!!!

// Talk 1. 
// TALK 1 TOTALLY CORRECT!!

BEGIN IshyD

IF ~Global("P!ishbandits","AR1900",1)~ ishbandits
SAY ~Well, here we are. The hideout of the bandits that have been plaguing the region lately. They are bound to outnumber us, so we should approach with caution.~
IF ~~ THEN EXIT
END 

IF ~Global("P!ishcandlekeep","AR2626",1)~ ishcandlekeep
SAY ~So, this is your old home, huh? I'm glad I get to see it, even under these circumstances. Maybe one day i'll take you to my home.~ 
IF ~~ THEN DO ~SetGlobal("P!ishcandlekeep","AR2626",2)~ 
EXIT
END

IF ~Global("Ishtarnesh","GLOBAL",1)~ ishtarnesh
SAY ~Wow, you really weren't kidding! We couldn't even step inside the inn without you getting attacked.~ 
++ ~(Continue)~ DO ~SetGlobal("Ishtarnesh","GLOBAL",2)~ + ishtarnesh1
END 

IF ~~ THEN BEGIN ishtarnesh1
SAY ~I guess I made the right choice coming with you. You need all the protection you can get.~
IF ~~ THEN EXIT
END

IF ~Global("IshyTalk","GLOBAL",2)~ t1
SAY ~So, <CHARNAME>...if you don't mind me asking, did you ever think you would become an adventurer?~
++ ~Truthfully, no. I never thought I would travel much beyond Candlekeep's walls.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",2800)~ + t11
++ ~As sad as a begininng it was, my heart ever yearned for the road.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3600)~ + t12
++ ~Sure, why not? The best job in order to find profit and battle.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3200)~ + t123
END

IF ~~ THEN BEGIN t11
SAY ~ I guess I can understand that. If you have a happy home, the call of the outside world seems less appealing. Oh! I'm sorry. I didn't mean to bring up a bad subject... ~
++ ~ It's okay. I did have a happy home. And I know you meant no harm. ~ + t111
++ ~ You're right, I don't much want to talk about it. Might we speak of your own family, instead? ~ + t121
++ ~ You're right. You think I want to talk about home life after mine was ripped from me? Get lost, you dumb bitch. ~ + ouch
END

IF ~~ THEN BEGIN t111
SAY ~ Right...well, let's just move on before I make a fool of myself again. ~
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ouch
SAY ~What? I was just trying to be nice, you jerk!~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t12
SAY ~ I feel much the same way. My mother doesn't need to work as my father brings in all the money, and I visit them when I can, but seeing the world and testing myself against the evil forces of the world is the only way I want to live. ~
++ ~ You sound like you get along quite well with your mother. Why not tell me more about your family? ~ + t121
++ ~ The forces that took Gorion from me are as evil as any. ~ + t122
++ ~ Sounds awfully noble. Me, i'm in it for revenge. And for what power and wealth I can gain for myself. ~ + t123
END

IF ~~ THEN BEGIN t121
SAY ~ Perhaps another time we can talk of my family. For now, we should move on. ~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t122
SAY ~You're right about that. And I will get them for you, I promise. ~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t123
SAY ~ Uh...whatever you say, I guess. ~
IF ~~ THEN EXIT
END

// End Talk 1 files.

//Talk 2 
// TALK 2 FILES TOTALLY ACCURATE!! :D :D :D :D

IF ~Global("IshyTalk","GLOBAL",4)~ t2
SAY ~So, <CHARNAME>, i'm sure you're probably wondering how I came by my half orc parentage...~
IF ~!Global("IshyRomanceActive","GLOBAL",0)~ THEN REPLY ~Yes, I was a bit curious. Such a beautiful example of one must have an interesting story.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3000) SetGlobal("IshyRomanceActive","GLOBAL",2)~ + t21
++ ~Yes, I was a bit curious. I'm willing to hear the story.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3300)~ + t22
++ ~No. Away with you.~ + t23
END

IF ~~ THEN BEGIN t21 
SAY ~*Ishlilka quickly looks at the ground, and she can not contain the subtle hint of a smile on her face* Aw...thank you.~
++ ~(Continue)~ + t22
END

IF ~~ THEN BEGIN t22
SAY ~Both of my parents are half orcs, actually. Most assume my lineage carries...unfortunate parenting at the very least, but my family assured I was properly trained and educated. My father is the one who taught me my magic disrupting abilities, as I may have mentioned before. He always took pride in me, and believed I could follow in his footsteps as a great mage hunter.~ 
++ ~I can see that. And your mother?~ + t221
++ ~How did your parents meet, anyway?~ + t2s
END

IF ~~ THEN BEGIN t221
SAY ~My mother, well...she was once a priestess. Of Luthic. Have you heard of her?~
++ ~I think i've heard her name in passing in one of my lessons. She's an orc deity, correct?~ + t2211
++ ~Can't say that I have.~ + t2211
++ ~I've heard enough.~ + t23
END

IF ~~ THEN BEGIN t2211
SAY ~ Luthic is the patron deity of orc females, fertility, and caves. Also known as the Blood Moon Witch, and the most magically inclined of all the orc deities. She is the wife of Gruumsh, chief among orc gods, and their son, Baghtru, is loyal to her even above Gruumsh himself. ~
= ~Priestesses of Luthic serve the tribe in many ways, among them tending to the young, and teaching basic herbalism and simple healing techniques to whatever orcs have the skills for it, saving the lives of many warriors. Mother speaks of this proudly at times...never around my father, of course.~  
++ ~ If Luthic is an orc deity, she has to be evil, right? ~ + t2finale
++ ~So how did your parents meet, anyway?~ + t2s
++ ~I've heard enough.~ + t23
END

IF ~~ THEN BEGIN t2finale
SAY ~Yes, I suppose she is. This was a long time ago, however. Where do I begin?~
++ ~(Continue)~ + t2s
END

IF ~~ THEN BEGIN t23
SAY ~Fine. Have it your way.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t2s
SAY ~Mother was part of a cult to Luthic that had grown a touch too powerful and was noticed. Father had just taken a command position in his mercenary company, and he suspects they sent him against servants of an orc god as a test of loyalty.~
= ~Either way, they quickly fell, until she was the only one who remained, and she begged for her life. Not the most romantic of first encounters, I know.~
++ ~And they let her live? The high priest?~ + t2s1
++ ~I can think of worse ways to meet someone.~ + t2s2end
++ ~I wouldn't have spared one who tried to kill me.~ + t2s3
END

IF ~~ THEN BEGIN t2s1
SAY ~No, father wouldn't allow them to kill her, apparently. Their reputation as an honorable company gets them well paying contracts with city governments. Father took a liking to her at once, so he tells it, and agreed not to turn her in if she agreed to work for them. I heard this got him into quite a bit of trouble, but somehow he kept his position within the Spears of Argath.~
++ ~Spears of Argath? Who are they?~ + t2s1end
++ ~Well, that was sweet. Most battles to the death don't end so well.~ + t2s2end
++ ~What good is honor should it get in the way of what you want?~ + t2s4
END

IF ~~ THEN BEGIN t2s4
SAY ~Sometimes I wonder why i'm even here...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t2s1end
SAY ~They're a mercenary company mostly involved in hunting down rogue wizards. They got their name from their founder, known for his glowing red magical spear. What else is there to tell? We should be moving on anyways, we're falling behind the others.~
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN t2s2end
SAY ~You always say the silliest things, <CHARNAME>. But we should be moving on.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t2s3
SAY ~You know, <CHARNAME>, a little mercy wouldn't hurt you.~
IF ~~ THEN EXIT
END

// End of Talk 2

// Talk 3

IF ~Global("IshyTalk","GLOBAL",6)~ t3
SAY ~All of these people, after your life...it's a wonder you get any sleep at all.~
IF ~Global("IshyRomanceActive","GLOBAL",1)~ THEN REPLY ~You are correct, it is quite difficult sleeping knowing powerful people are after me. But with you around I sleep a little easier.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3600) SetGlobal("IshyRomanceActive","GLOBAL",2)~ GOTO incaseyouneedit
++ ~Somehow, i've gotten used to it. I feel more accustomed to battle than I thought I would be, for having seen so little.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3200)~ + t31
++ ~I enjoy it, Ishlilka. The threat of death at every turn, dealing it to others...it makes me feel comfortable, somehow.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3200)~ + t32
++ ~Are you talking, again? You know how much I hate it when you do that.~  DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",4400)~ + t33
END

IF ~~ THEN BEGIN incaseyouneedit
SAY ~Oh, cut it out, you, i'm being serious! *Ishlilka playfully punches your arm*~
++ ~(Continue)~ + t3
END

IF ~~ THEN BEGIN t31
SAY ~Really? You must be naturally brave then. Even when I first started weapon training with my father, combat scared me a bit.~
= ~ It no longer does, of course. He made sure I became as fearless as any orc.~
++ ~(Continue)~ + t34 
END

IF ~~ THEN BEGIN t32
SAY ~You know, you say the craziest things sometimes...~
++ ~(Continue)~ + t34
END

IF ~~ THEN BEGIN t33
SAY ~ Hmph! Sometimes I wonder why I even stay...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t34
SAY ~I know how you feel though...being forced into battle and to grow strong against your will.~
++ ~What an odd thing to say. Did you not choose your path of your own will?~ + t341
++ ~I thought you took up this path because it ran in your family.~ + t341 
++ ~No, no you don't know.~ + t33 
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN t341 
SAY ~Well, technically, but it's not much of a choice when everyone expects you to be the next great family warrior, you know?~
= ~It's not like many half orc families exist, let alone live respectable lives...to shatter that image they've tried to hard to make for themselves would devastate them, I know.~
++ ~I don't think that's true, Ishlilka. They would be proud of you for forging your own path.~ + t3411
++ ~Surely there are other ways to honor your family name.~ + t3412
++ ~You should be happy that you have a family at all.~ + t3413 
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN t3411 
SAY ~Well it's not like you ever met them or anything, but...thanks. I appreciate the thought. For now though, doubting the path I took would only make me weaker and vulenerable. I shouldn't have these thoughts, not now.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN t3412
SAY ~*she laughs for a moment* Like what, painting? No, friend, battle is my only talent, i'm afraid. Here, at least I can put it to good use.~
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN t3413
SAY ~You're...you're right. I'm sorry, that was so thoughtless of me...~
IF ~~ THEN EXIT 
END 

// Talk 4

IF ~Global("IshyTalk","GLOBAL",8)~ t4
SAY ~ So, we've talked about my family before. I've avoided the subject for awhile, but would you mind telling me more of Gorion? ~
++ ~Gorion was the wisest and kindest man I have met. Without him, I wouldn't be the man I am today.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3200)~ + t41
++ ~He was a good man. Lately, all I can think of is avenging him. ~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3200)~ + t42
++ ~ I don't want to talk about it.~ DO ~IncrementGlobal("IshyTalk","GLOBAL",1) RealSetGlobalTimer("IshyTimer","GLOBAL",3200)~ + t43
END

IF ~~ THEN BEGIN t41
SAY ~Well, that was sweet. He must have been very important to you.~
=~Keep Imoen close to you, alright? I would hate to see you hurt again.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t42
SAY ~Don't get so focused on revenge you lose sight of what you seek to avenge. There may come a time you may need his good example more than ever.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t43
SAY ~Alright. Maybe another time. ~
IF ~~ THEN EXIT
END



IF ~Global("IshyTalk","GLOBAL",10)~ t5
SAY ~*The party gets ready to rest after another long day, and like usual, Ishlilka is alone. This time, however, she's drinking.*~
++ ~*Take a seat next to her*~ DO ~SetGlobal("IshyTalk","GLOBAL",11)~ + ishtfh1
++ ~*It's been a long day, you decide to go to bed*~ DO ~SetGlobal("IshyTalk","GLOBAL",11)~ + ishtfh2  
IF ~~ THEN 
EXIT 
END 

IF ~~ THEN BEGIN ishtfh2
SAY ~*Ishlilka glances at you as you go, almost as if disappointed.*~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishtfh1
SAY ~Oh! Hey there, <CHARNAME>. Everything going well?~
IF ~Dead("Juleska")~ THEN REPLY ~I could ask the same of you.~ + ishtfh11j
IF ~!Dead("Juleska")~ THEN REPLY ~I could ask the same of you.~ + ishtfh11 
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishtfh11 
SAY ~Wondering when you are going to help me do what I came here to do! I fight and bleed for you, you know! ~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishtfh11j
SAY ~Yes, of course, my friend. How could I not be? You've done so much for me. All that i've ever tried to be is good enough for my family...~
= ~And I don't think I could have accomplished that without your help.~ 
= ~...i'm...not their only child, you know.~
++ ~Really? You've never spoken of your siblings before.~ + ishtg 
++ ~Well, this is sudden. I take it there isn't good news to be found here.~ + ishtg 
END 

IF ~~ THEN BEGIN ishtg
SAY ~There's not much to tell, really. All I know is his name. Varghor. They don't speak of him often. And never in front of me.~ 
++ ~So why are you thinking of him now?~ + ishtg1 
++ ~Perhaps he is dead. Maybe they merely want to spare your feelings.~ + ishtg2 
END 

IF ~~ THEN BEGIN ishtg2 
SAY ~That's not particularly like them. If it were only that simple I would understand, but...~ 
++ ~(Continue)~ + ishtg1 
END 
 
IF ~~ THEN BEGIN ishtg1 
SAY ~I'm...only wondering why they aren't more upfront with me. If he died in battle they should be proud of him. If he dishonored our name I should know his offense. It's the not knowing that bothers me the most.~ 
IF ~Global("Chapter","GLOBAL",7)~ THEN REPLY ~I understand how you feel. Until recently I had no knowledge of my true parentage either...now I wish I didn't know.~ + ishtgend1
IF ~!Global("Chapter","GLOBAL",7)~ THEN REPLY ~I understand how you feel. I don't have any idea who my true parents are. Sometimes I wish I did.~ + ishtgend2
++ ~Who cares? If they don't want to talk about it i'm sure they have good reasons.~ + ishtgend 
END  

IF ~~ THEN BEGIN ishtgend 
SAY ~You're right, I suppose. But I should be going to bed now. Goodnight, <CHARNAME>.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishtgend1
SAY ~You're right. Compared to your troubles, mine must seem petty. The blood of the gods and a powerful adversary determined to bring you down...and you still have the time to lend me an ear. You're a good friend for listening, <CHARNAME>.~
= ~I...I won't forget this. ~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishtgend2 
SAY ~I'm glad you understand...but my, we've been at it for quite a while, haven't we? Let's get some rest, for now. And...thank you, <CHARNAME>. Despite all that's happened, you always have time for me. A true friend, you are.~
IF ~~ THEN EXIT 
END 

// Chapter 2 Talk, if Ishlilka is in your party.
//

IF ~Global("ishnewna","GLOBAL",1)~ ishChapt3t
SAY ~So the ones behind the Iron Shortage are involved in hunting you, after all.~
++ ~Yes, but I have no idea what this could mean right now. Luckily, we've been provided a new lead.~ DO ~SetGlobal("ishnewna","GLOBAL",2)~ + Chap3t1
++ ~ Now that I know where to find their next contact, I will exact terrible revenge upon them.~ DO ~SetGlobal("ishnewna","GLOBAL",2)~ + Chap3t2
++ ~I haven't the time to talk at the moment, Ishlilka.~ DO ~SetGlobal("ishnewna","GLOBAL",2)~ + Chap3t3
END

IF ~~ THEN BEGIN Chap3t1
SAY ~Well, off we go again, then. We handled this pretty well. I think we make a good team.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Chap3t2
SAY ~Woah, just calm down, alright? I know they took a lot from you, but you shouldn't become the killer in return.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Chap3t3
SAY ~Alright. Maybe another time, then.~
IF ~~ THEN EXIT
END


// LoveTalk 1

IF ~Global("IshyLoveTalk","GLOBAL",2)~ IshyLT1
SAY ~Hey, <CHARNAME>, i'm glad you brought me along. Before I started traveling with you, I wondered if i'd ever find a group of friends to adventure with.~
= ~Up until now, i've just been doing what I can against small targets- bandits and such. I didn't have the confidence to do much more on my own, and I didn't want to take foolish risks. ~
++ ~Well, for what it's worth, you will always have a place here.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4000) SetGlobal("P!dothisonlyonce","GLOBAL",2)~ GOTO ishlt1.1
++ ~I can't imagine someone as charming and intelligent as yourself would have a a problem finding an adventuring party.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4000) SetGlobal("P!dothisonlyonce","GLOBAL",2)~ GOTO ishlt1.1
++ ~Not now. I'm busy. ~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4000) SetGlobal("P!dothisonlyonce","GLOBAL",2)~ GOTO ishlt1.3
END

IF ~~ THEN BEGIN ishlt1.1
SAY ~*A small smile escapes her lips* Thank you, <CHARNAME>. You certainly are sweet.~
= ~Perhaps it was for the best that it took awhile to find a group. I clearly ended up with a good one.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishlt1.2
SAY ~*he he!* You certainly are sweet, <CHARNAME>. I certainly didn't think I would stumble across someone like you. ~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishlt1.3
SAY ~*Ishlilka looks hurt.* Fine then.~
IF ~~ THEN EXIT
END

// LoveTalk 2

IF ~Global("IshyLoveTalk","GLOBAL",4)~ IshyLoveTalk2Starts
SAY ~Um...<CHARNAME>...~
++ ~Yes, Ishlilka?~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4000)~ GOTO ishlt21
++ ~Is there something wrong? You're acting odd.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4000)~ GOTO ishlt21
++ ~Oh, do go away.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4000)~ GOTO ishlt213
END

IF ~~ THEN BEGIN ishlt21
SAY ~ Does it...bother you? The fact that i'm...well, you know. An orc. ~
++ ~Of course not. And you are a fine example of your race besides.~ GOTO lt211
++ ~ Normally it would...but with you, I think I can make an exception.~ GOTO lt212
++ ~Yes. Yes it does.~ GOTO ishlt213
END

IF ~~ THEN BEGIN lt211
SAY ~Thank you, <CHARNAME>. You always know the rights things to say...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt212
SAY ~*Ishlilka quickly glares at you* Oh, so there IS something wrong with being an orc!~
= ~Whatever, <CHARNAME>. Forget I said anything.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishlt213
SAY ~Fine! Forget I said anything then.~
IF ~~ THEN EXIT
END

// LoveTalk 3
IF ~Global("IshyLoveTalk","GLOBAL",6)~ lt3
SAY ~<CHARNAME>, do you have a moment?~
++ ~I always have a moment for you. ~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4200)~ GOTO lt3.1
++ ~ Yes, I have plenty of them. ~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4200)~ GOTO lt3.2
++ ~Oh, do go away.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",4200)~ GOTO ishlt213
END

IF ~~ THEN BEGIN lt3.1
SAY ~I just wanted to let you know that...well, I...~
= ~I like you. There! I said it. ~
++ ~ And I like you, Ishlilka. Very much so. ~ GOTO lt3fin
++ ~I was wondering when you were going to tell me that.~ GOTO lt3fin1
++ ~ That's disgusting. Get away from me.~ DO ~SetGlobal("IshyRomanceActive","GLOBAL",3)~ GOTO badend 
END

IF ~~ THEN BEGIN lt3.2
SAY ~ Stop joking around! I'm being serious. ~
++ ~Alright. What is on your mind?~ + lt3.1
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN lt3fin1
SAY ~You...you knew? And you didn't tell me?! Honestly <CHARNAME>, you're horrible!~
= ~But...i'm glad it's out in the open now. Let's just...see where it goes for now, alright?~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt3fin
SAY ~ Really? I'm so glad! But it's we've only known each other such a short time... ~
= ~ Let's just, take it slow for now, alright? I'm sure we'll have plenty of time for this after Gorion is avenged. ~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN badend
SAY ~You bastard! Why did you pretend to be interested!~
IF ~~ THEN EXIT
END

// LoveTalk 4

IF ~Global("IshyLoveTalk","GLOBAL",8)~ lt4
SAY ~Do you remember what I said before? About how we should take things slow?~ 
++ ~Yes, of course. Why do you bring it up?~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1)~ + lt4.1
++ ~Of course I remember, and I remember being quite dissapointed.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1)~ + lt4.1
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN lt4.1
SAY ~Well, let me put it this way...~
= ~(Ishlilka pulls you close and into a long, deep kiss. After a moment, when it's clear you aren't going to push her away, she holds you even tighter.)~
= ~(After a while she finally lets go, a small smile on her face.)~
= ~I have been so lucky to meet you. As long as I am around, I will never let anyone harm you.~
++ ~And neither will I let anyone harm you. We walk this road together.~ + Plt4.1.1
++ ~Well, that certainly didn't take long. Not that i'm complaining, mind you.~ + Plt4.1.2
++ ~Right, so, my bedroll is a little cold at night, you know...~ DO ~SetGlobal("IshyRomanceActive","GLOBAL",0)~ + Pishpig
END

IF ~~ THEN BEGIN Plt4.1.1
SAY ~I never thought I would meet someone so understanding and kind...~
= ~But, we should continue on...the others might start getting suspicious.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Plt4.1.2
SAY ~Oh, shush, you. We should be continue on...the others might start getting suspicious.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Pishpig
SAY ~What?! How dare you!~
IF ~~ THEN EXIT
END
 
// LoveTalk upon reaching Chapter 6

IF ~Global("ishlilkaonce1","GLOBAL",0)
Global("Chapter","GLOBAL",7)
Global("endofbg1","GLOBAL",0)
Global("IshyRomanceActive","GLOBAL",2)~ IshyBhaal
SAY ~I still can't believe it. You. A child of Bhaal.~
++ ~Neither can I, Ishlilka. So this is why Gorion stayed in Candlekeep for so long. It was to protect me against my own nature, and those who would abuse it.~ DO ~SetGlobal("ishlilkaonce1","GLOBAL",2)~ GOTO IshB1
++ ~I feel as though my whole life has been a lie. And now I am condemned in the eyes of my own home. I don't know what to think...~ DO ~SetGlobal("ishlilkaonce1","GLOBAL",2)~ GOTO IshB2
++ ~A child of a god. I can use this power.~ DO ~SetGlobal("ishlilkaonce1","GLOBAL",2)~ GOTO IshB3
END

IF ~~ THEN BEGIN IshB1
SAY ~ *Ishlilka slowly nods* He was a good man. And no matter what is inside you, he raised one too. *She takes your hand* And i'll always be here, to help keep you that way. ~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IshB2
SAY ~*Ishlilka gives you a hug and doesn't let go* I know how you must feel, but you have to be strong. Gorion loved you, and died so that you could you could be saved. You- we- have to move on. For him. ~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IshB3
SAY ~<CHARNAME>! How can you say that!~
IF ~~ THEN EXIT
END

// Quest Dialogue

IF ~Global("IshyQuest","GLOBAL",1)~ THEN BEGIN IshQ
SAY ~Perhaps I hadn't mentioned this before...but I came here for more than just training. I came here to hunt down a wanted criminal, and I think we are ready to take on my target, <CHARNAME>. When you are ready, I heard that he had last been to Nashkel.~
++ ~What do we know of this mage?~ DO ~SetGlobal("IshyQuest","GLOBAL",2)~ + IshQ1
++ ~Do you have any advice, Ishlilka?~ DO ~SetGlobal("IshyQuest","GLOBAL",2)~ + IshQ2
++ ~Yes, yes. I will get to it when I see fit.~ DO ~SetGlobal("IshyQuest","GLOBAL",2)~ + IshQ3
END 
 
IF ~~ THEN BEGIN IshQ1
SAY ~Only that he is the last remnant, and former captain, of a criminal band taken in by the Spears. We need to bring him to justice before he assembles a new team of cutthroats.~
++ ~Quite right. Do you have any advice?~ + IshQ2
++ ~Who are the Spears?~ + IshQa
++ ~Well, let's not waste any time, then.~ + IshQend
END

IF ~~ THEN BEGIN IshQa
SAY ~The Spears of Argath are the mercenary company my father works for. They take their name from their founder, known for his powerfully enchanted magical spear. Typically they make their money keeping port cities safe from pirate bands along the Sword Coast, or in my case, tracking down criminal mages. They can't spare the manpower to go out hunting stragglers, so he sent me to track him down.~
++ ~Are you a member of these mercenaries, then?~ + IshQb
++ ~Do you have any advice?~ + IshQ2
++ ~Well, let's not waste any time, then.~ + IshQend
END

IF ~~ THEN BEGIN IshQb
SAY ~Well...no. Not exactly. I wasn't quite expierienced enough for the battles they typically face, so my father says. Really, I think he just wants me out of the real combat. But, i'm the only other one with his training, so i'm the best fit for this job.~
++ ~Do you have any advice?~ + IshQ2
++ ~Well, let's not waste any time, then.~ + IshQend
END

IF ~~ THEN BEGIN IshQ2
SAY ~Lone mages often need supples. We should search the town and see if we can't find anyone who may have seen him. I also heard he's quite the drinker. Maybe check around the tavern?~
++ ~Do you know anything about our target?~ + IshQ1
++ ~Let's set off at once.~ + IshQend
END

IF ~~ THEN BEGIN IshQ3
SAY ~Please don't forget. It is the reason i'm here, after all.~
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN IshQend
SAY ~Right then, off we go. I can do this...I know it.~
IF ~~ THEN EXIT
END

// Quest End Dialogue

IF ~Global("IshyQuest","GLOBAL",4)~ THEN BEGIN Juleskadone
SAY ~Is everyone all right? That was excellently done, and I thank you for you help, <CHARNAME>. Now I can return to my father with pride.~ [P!quest1] 
IF ~!Global("IshyRomanceActive","GLOBAL",0)~ THEN REPLY ~I hope you don't intend to take off before I avenge my father. I would hate to have you return unaccompanied.~ DO ~SetGlobal("IshyQuest","GLOBAL",5)~ GOTO smoothmoves
IF ~~ THEN REPLY ~I understand. When you will be returning to report your success?~ DO ~SetGlobal("IshyQuest","GLOBAL",5)~ GOTO ishny
IF ~~ THEN REPLY ~I aided you, now you aid me. I didn't do this for nothing.~ DO ~SetGlobal("IshyQuest","GLOBAL",5)~ GOTO douchefuck
END

IF ~~ THEN BEGIN smoothmoves
SAY ~Don't worry, <CHARNAME>, I would never abandon you like that. Besides, i'd like you to meet them if I could. Now, let's hunt *your* target.~
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishny
SAY ~I suppose I should go as soon as possible, but...you helped me, and I am very grateful. On my honor, I will not let your father go unavenged before I make my return.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN douchefuck
SAY ~You don't have to be rude about it. I'll pay you back by helping you with this, alright?~
IF ~~ THEN EXIT
END

IF ~Global("ishfinalfight","AR0123",1)~ THEN BEGIN ishfinalcountdown
SAY ~This is it. The man behind everything is finally in your grasp.~
++ ~Yes. Finally I can avenge Gorion for that horrible night. Thank you for coming with me all this way, Ishlilka.~ DO ~SetGlobal("ishfinalfight","AR0123",2)~ + ishfinalcountdown1
++ ~And I will make him scream in such agony the entire realms will hear it.~ DO ~SetGlobal("ishfinalfight","AR0123",2)~ + ishfinalcountdown2
++ ~Please, Ishlilka, not now. I must clear my head and prepare.~  DO ~SetGlobal("ishfinalfight","AR0123",2)~ + ishfinalcountdown3
END

IF ~~ THEN BEGIN ishfinalcountdown1 
SAY ~<CHARNAME>, don't be silly. I thank you for taking me along with you when we first met. Without meeting you...~
= ~Well, let's just say things have changed a lot for me recently, and I have you to thank. I promise, I will not fail you now.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishfinalcountdown2
SAY ~I can only hope that your lust for blood is sated after you have your vengeance...~
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN ishfinalcountdown3
SAY ~Right. I apologize for diturbing you at such a critical moment. *Despite these understanding words, she looks hurt*~
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN IshyPlayerDialogue
SAY ~Hm? ...Oh, it's you.~ [I!oh] 
IF ~Global("IshyQuest","GLOBAL",2)~ THEN REPLY ~Can you tell me anything else about this person you seek?~ + IshJpid
IF ~Global("IshyQuest","GLOBAL",5)~ THEN REPLY ~Have you thought more on your future plans now that your assignment is finished?~ + IshJpid2
IF ~RandomNum(4,1) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY ~You are wonderful, Ishlilka. I can't believe I was lucky enough to have met you.~ + ISHTID1
IF ~RandomNum(4,2) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY ~You are wonderful, Ishlilka. I can't believe I was lucky enough to have met you.~ + ISHTID11
IF ~RandomNum(4,3) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY ~You are wonderful, Ishlilka. I can't believe I was lucky enough to have met you.~ + ISHTID12
IF ~RandomNum(4,4) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY ~You are wonderful, Ishlilka. I can't believe I was lucky enough to have met you.~ + ISHTID44
IF ~Global("IshyRomanceActive","GLOBAL",2) !Race(Player1,HALFORC)~ THEN REPLY ~You are the most beautiful example of your race I have ever seen.~ + ISHTID3
IF ~Race(Player1,HALFORC) Global("IshyRomanceActive","GLOBAL",2)~ THEN REPLY ~You are the most beautiful example of our race I have ever seen.~ + ISHTID3
IF ~~ THEN REPLY ~What do you think of our comrades?~ + ISHTID2 
IF ~RandomNum(5,1)~ THEN REPLY ~Can you tell me a little more about yourself?~ + ishran1 
IF ~RandomNum(5,2)~ THEN REPLY ~Can you tell me a little more about yourself?~ + ishran2
IF ~RandomNum(5,3)~ THEN REPLY ~Can you tell me a little more about yourself?~ + ishran3
IF ~RandomNum(5,4)~ THEN REPLY ~Can you tell me a little more about yourself?~ + ishran4
IF ~RandomNum(5,5)~ THEN REPLY ~Can you tell me a little more about yourself?~ + ishran5
IF ~Global("Chapter","GLOBAL",1)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp1pid 
IF ~Global("Chapter","GLOBAL",2)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp2pid 
IF ~Global("Chapter","GLOBAL",3)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp3pid 
IF ~Global("Chapter","GLOBAL",4)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp4pid
IF ~Global("Chapter","GLOBAL",5)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp5pid
IF ~Global("Chapter","GLOBAL",6)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp6pid
IF ~Global("Chapter","GLOBAL",7)~ THEN REPLY ~Any thoughts on our current situation?~ + ishchp7pid
END

IF ~~ THEN BEGIN ishran5
SAY ~On my first day of training with the Spears of Argath my instructor charged right at me, blindly. I think he had the impression that I would cower like a little girl.~
= ~I caught him with my spear square in the center of his breastplate and sent him to the floor. I'll admit, I still feel a touch of pride in that moment. I was never underestimated again.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ISHTID44
SAY ~I'll admit, I came along partially because you were so cute, looking so helpless and lost as you were.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishran1
SAY ~I chose spears as my weapon because I enjoy the range and the light weight of the weapon.~ 
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishran2
SAY ~Have you ever heard of Kara-Tur? I once read a book about it. Warriors with finely honed weapons the likes of which we rarely see on the Sword Coast...~ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishran3
SAY ~My...tusks aren't showing, are they?~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishran4
SAY ~A good drink really takes the edge off of a day of battle...but only just one. I'm not a dwarf, after all.~ 
IF ~~ THEN EXIT 
END 




IF ~~ THEN BEGIN ISHTID11 
SAY ~Oh, save it, you flatterer. We have things to do!~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ISHTID12 
SAY ~You're cute, <CHARNAME>. I'll give you that much.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ISHTID3
SAY ~*Her face flushes and for a moment she's at a loss for a response* I, uh...thank you. Where did that come from exactly?~ 
++ ~Just something I had stuck in my mind and couldn't help but say.~ + ishtid31
END 

IF ~~ THEN BEGIN ishtid31 
SAY ~Well, shouldn't your mind be focused on more important matters? *even as she says this, she smiles*~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp1pid
SAY ~...Do you really have no idea why these people are after your life?~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp2pid
SAY ~I'll be honest, i've seen little real combat outside of training...heading into these mines will be as good a test as any.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp3pid
SAY ~Not at the moment.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishchp7pid
SAY ~The bastards! We can not let this stand!~
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishchp6pid
SAY ~That was a hard fought battle at the Iron Throne. We should be wary for what may come, even within Candlekeep.~
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishchp4pid
SAY ~A journey through the forest isn't so bad, I suppose. Just remember to be prepared.~
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishchp5pid
SAY ~I've always wanted to see Baldurs Gate, you know. They say it's a city that leaves a mark on all who go there, and many find themselves returning year after year...~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ISHTID1
SAY ~Aw...thanks, <CHARNAME>. I'm glad I met you, as well.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN IshJpid
SAY ~No, not really...i'm sorry I can't be of much help in the matter. I only know that we should search Nashkel for any who have witnessed him.~
= ~That's about all we can do at this point.~ [I!all] 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN IshJpid2
SAY ~You've been a great help, <CHARNAME>, so I will aid you in your own quest first, of course. But, once this is over, hopefully I will be seen as worthy to lead my own company on our own missions.~
= ~A squad of wizard slayers could make a killing in Athkatla, I imagine...~ 
++ ~I hope money is not all that drives you.~ + ishjdip
++ ~If there's adventure, excitement, and gold to be had at the end, count me in.~ + ishjdip2
END 

IF ~~ THEN BEGIN ishjdip
SAY ~Of course it isn't, but it's not like they would accept me into a paladin order or anything. And I don't worship human gods anyway.~
= ~At least as a mercenary, if I pick my contracts right, I can do a lot of good in the world. And...you can earn respect, something not always easy for half-orcs to get.~
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishjdip2
SAY ~You really have a one-track mind, you know that?~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ISHTID2
SAY ~I'm not really one for gossip, but I suppose I can give you my opinion if you desire it.~
IF ~InParty("Imoen")~ THEN REPLY ~What do you think of Imoen?~ + ishimmypid
IF ~InParty("Khalid")~ THEN REPLY ~What do you think of Khalid?~ + ishkhalpid
IF ~InParty("Jaheira")~ THEN REPLY ~What do you think of Jaheira?~ + ishjapid
IF ~InParty("Dorn")~ THEN REPLY ~What do you think of Dorn?~ + ishDornpid
IF ~InParty("SHARTEEL")~ THEN REPLY ~What do you think of Shar-Teel?~ + ishsharpid 
IF ~InParty("Viconia")~ THEN REPLY ~What do you think of Viconia?~ + ishvicpid 
IF ~InParty("Garrick")~ THEN REPLY ~What do you think of Garrick?~ + ishgarpid 
IF ~InParty("Alora")~ THEN REPLY ~What do you think of Alora?~ + ishalorpid
IF ~InParty("Kivan")~ THEN REPLY ~What do you think of Kivan?~ + ishkivpid
IF ~InParty("Tiax")~ THEN REPLY ~What do you think of Tiax?~ + ishtiaxpid
IF ~InParty("Neera")~ THEN REPLY ~What do you think of Neera?~ + ishneerpid
IF ~InParty("Rasaad")~ THEN REPLY ~What do you think of Rasaad?~ + ishraspid
IF ~InParty("Safana")~ THEN REPLY ~What do you think of Safana?~ + ishsafpid
IF ~InParty("Xzar")~ THEN REPLY ~What do you think of Xzar?~ + ishxarpid
IF ~InParty("Montaron")~ THEN REPLY ~What do you think of Montaron?~ + ishmonpid 
IF ~InParty("Quayle")~ THEN REPLY ~What do you think of Quayle?~ + ishquapid
IF ~InParty("Eldoth")~ THEN REPLY ~What do you think of Eldoth?~ + ishelpid
IF ~InParty("Skie")~ THEN REPLY ~What do you think of Skie?~ + ishskpid
IF ~InParty("Coran")~ THEN REPLY ~What do you think of Coran?~ + ishcorpid
IF ~InParty("Kagain")~ THEN REPLY ~What do you think of Kagain?~ + ishkapid
IF ~InParty("Yeslick")~ THEN REPLY ~What do you think of Yeslick?~ + ishyespid
IF ~InParty("Ajantis")~ THEN REPLY ~What do you think of Ajantis?~ + ishajpid
IF ~InParty("Baeloth")~ THEN REPLY ~What do you think of Baeloth?~ + ishbalpid 
IF ~InParty("Edwin")~ THEN REPLY ~What do you think of Edwin?~ + ishedpid
IF ~InParty("XAN")~ THEN REPLY ~What do you think of Xan?~ + ishxanpid
IF ~InParty("Dynaheir")~ THEN REPLY ~What do you think of Dynaheir?~ + ishdynapid
IF ~InParty("Branwen")~ THEN REPLY ~What do you think of Branwen?~ + ishbranpid
IF ~InParty("Faldorn")~ THEN REPLY ~What do you think of Faldorn?~ + ishfahpid 
END

IF ~~ THEN BEGIN ishfahpid
SAY ~If there was ever a perfect example of taking something too far, she is it.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishbranpid
SAY ~What an...odd faith followers of Tempus have. I see nothing holy in battle, but she's a dependable ally.~
IF ~~ THEN EXIT
END 


IF ~~ THEN BEGIN ishdynapid
SAY ~I wonder if everyone in Rasheman talks like she does...~ 
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishxanpid
SAY ~I've never meet a more gloomy person in all my life. Almost depressing me, he is.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishedpid
SAY ~Red Wizards are known for their power and tyrannical nature...I would be on guard with him around. Or better yet, not have him around at all. I don't know if I could protect you against his power.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishcorpid 
SAY ~His archery is impeccable...it's a wonder that he's become so skilled while being so undisciplined.~ 
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ishkapid 
SAY ~I've met many a mercenary like him in my father's company. He's not so bad, really.~ 
IF ~~ THEN EXIT 
END 



IF ~~ THEN BEGIN ishajpid 
SAY ~His heart is in the right place, but sometimes I wonder whether his overzealousness will get him into trouble somehow.~ 
IF ~~ THEN EXIT 
END 



IF ~~ THEN BEGIN ishyespid 
SAY ~The poor man. It must have been awful to be betrayed and have your ancestors home desecrated. You did a good deed in rescuing him, <CHARNAME>.~ 
IF ~~ THEN EXIT 
END 


IF ~~ THEN BEGIN ishmonpid 
SAY ~Keep an eye on that one. I'm confident I could take him in the fair fight, but I would hate for him to get the jump on us.~ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishquapid
SAY ~To be fair, I haven't known many casters as talented as him. But gods, his boasting makes me want to hit him with the blunt end of my spear.~ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishelpid 
SAY ~Total slime. A manipulative insect. Basically worthless.~ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishskpid 
SAY ~It galls me that we helped Eldoth "rescue" her. She's a nice enough girl...maybe i'll get her to see him for what he is.~ 
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishDornpid
SAY ~Ugh...*him*. I don't understand why you even bring him along. He's everything that gives orcs a bad name. He lives only for hatred and bloodshed. There. You want my opinion? You have it.~
++ ~I'm sorry if I upset you by bringing up this topic. I need his strength, however.~ + ishdornpid1 
++ ~It is my team and I will organize it as I see fit.~ + ishdornpid1 
END 

IF ~~ THEN BEGIN ishdornpid1 
SAY ~I'm not going to tell you how to run your party, <CHARNAME>. I will deal with it...for now.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishimmypid 
SAY ~Your sister? She's great. We get along quite well, in fact. You must have had good company back home, <CHARNAME>.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishkhalpid
SAY ~To face your foes even when afraid is a noble thing. You can't help but respect that, even if he could use a confidence boost. A good man, however, so I won't judge him his faults.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishjapid
SAY ~A decent warrior for a woman of her size. She's fierce, that one. And a druid as well...I was always interested in them, you know. Nature isn't such a bad thing to worship.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishsharpid 
SAY ~She's nice enough to me, but she's only fighting to prove something and hurt people. It's strange, I can't help but pity her somehow.~
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishvicpid 
SAY ~Her arrogance is insufferable at times, but I haven't *seen* her do anything wrong...so i'm reserving judgement, for now.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishgarpid 
SAY ~He's nice, entertaining, overall a good guy. He has his head in the clouds too much, however. Can he really be relied upon under pressure?~
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishalorpid 
SAY ~I feel like we're all going to end up in prison with her around. Still, she's friendly enough.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishkivpid
SAY ~It pains me to see so noble a warrior so consumed with nothing but the desire for revenge...I wonder what he must have been like before his loss.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishtiaxpid
SAY ~I suppose we better all bow down to our new "master"...the arrogant runt.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishneerpid
SAY ~Sometimes she makes me grateful I have at least some resistance to magic...I should focus on training my abilities more...~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishraspid
SAY ~I'm amazed at his skill. I need my weapons and armor to truly be a threat, but he gets by just using his own skill and body. I don't quite get what he's always going on about though.~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishsafpid
SAY ~Ugh...worthless. Gets by on male attention more than her own skill. Can we change the subject, please?~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishxarpid 
SAY ~Somehow I feel like i'm just waiting for the day when it's *his* magic i'll be disrupting...~
IF ~~ THEN EXIT 
END 

IF ~~ THEN BEGIN ishbalpid 
SAY ~His absolutely annoying alliterations are asking for his annihilation.~
IF ~~ THEN EXIT 
END 