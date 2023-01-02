//Ishlilka's banter files with Bhaalspawn
// COMPLETELY AND TOTALLY CORRECT! OMG!!!!!

BEGIN ishyhi
//THE TOTALLY CORRECT VERSION!

IF ~NumTimesTalkedTo(0)~ FirstMeeting
SAY ~Well, hello there. I can tell from your decent equipment you're not the bandits I am after. Might I ask your name?~ 
++ ~I am <CHARNAME>. Pleased to meet you.~ + ishhiniceguy
++ ~Are you alone? Hunting a large group by yourself isn't wise.~ + ishconcern
++ ~I don't have time for this.~ + ishhifuckoff
END

IF ~~ THEN BEGIN ishhiniceguy
SAY ~Thank you for your kindness. Sometimes that is hard to find when you...well, when you look like me. I'm Ishlilka Groshnak. A warrior, out here testing my skills.~
IF ~~ THEN REPLY ~A warrior, you say? We have need of one in our company, if you are interested. And besides, these bandits might be hard to take on alone. ~ + ishjoin
IF ~~ THEN REPLY ~You're quite well spoken for a half orc, you know.~ + ishDontSayThat
END

IF ~~ THEN BEGIN ishjoin
SAY ~You want me to...go with you? I never thought someone would ask me that. Well...sure.~ ~SetGlobal("IshyJoined", "LOCALS",1)
JoinParty()~
END

IF ~~ THEN BEGIN ishhifuckoff
SAY ~Oh. Um...alright.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishconcern
SAY ~Well, I suppose it is a bit dangerous. Still, i'm not a normal warrior anyway. I'm...special. In a way.~
IF ~~ THEN REPLY ~Well if you want practice in battle, you would surely find it in our company.~ + ishjoin
IF ~~ THEN REPLY ~Special? What do you mean?~ + specialish
IF ~~ THEN REPLY ~You're quite well spoken for a half orc, you know.~ + ishDontSayThat
END

IF ~~ THEN BEGIN specialish
SAY ~I can resist magic at times...I wasn't trained to though. Somehow I was born with it. Anyway, this isn't the best place to sit around and talk...~
IF ~~ THEN REPLY ~You're right. Would you, perhaps, care to join me?~ + ishjoin
IF ~~ THEN REPLY ~You're right. I have to go.~ + ishhifuckoff
END 

IF ~~ THEN BEGIN ishDontSayThat
SAY ~*She quickly glares at you.* And what's THAT supposed to mean? Whatever. I have targets to hunt down, so if you didn't need anything...?~
IF ~~ THEN REPLY ~I'm sorry, I didn't mean it that way. In fact, I could use a warrior like you in my party.~ + ishjoin
IF ~~ THEN REPLY ~ Whatever, bye. ~ + ishhifuckoff
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY ~Hey! I'm glad to see you again. You need me?~
IF ~~ THEN REPLY ~Sure Ishlilka. Come with me.~ DO ~SetGlobal("IshyJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not right now.~ + RefusedAgain
END

IF ~~ THEN BEGIN RefusedAgain
SAY ~Oh. Um...alright.~
IF ~~ THEN EXIT
END

// Talk 1. 
// TALK 1 TOTALLY CORRECT!!

BEGIN IshyDia


IF ~Global("IshyTalk","GLOBAL",2)~ t1
SAY ~So, <CHARNAME>...if you don't mind me asking, did you ever think you would become an adventurer?~
++ ~Truthfully, no. I never thought I would travel much beyond Candlekeep's walls.~ + t11
++ ~As sad as a begininng it was, my heart ever yearned for the road.~ + t12
++ ~Sure, why not? The best job in order to find profit and battle.~ + t123
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
SAY ~ I feel much the same way. My mother does just fine in TradeMeet, and I visit her when I can, but seeing the world and testing myself against the evil forces of the world is the only way I want to live. ~
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
SAY ~So, <CHARNAME> i'm sure you're probably wondering how I came by my half orc parentage...~
++ ~Yes, I was a bit curious. I was more wondering how you came to be such a beautiful example of a half orc.~ DO ~SetGlobal("IshyRomanceActive","GLOBAL",2)~ + t21
++ ~Yes, I was a bit curious. I'm willing to hear the story.~ + t22
++ ~No. Away with you.~ + t23
END

IF ~~ THEN BEGIN t21 
SAY ~*Ishlilka quickly looks at the ground, and she can not contain the subtle hint of a smile on her face* Aw...thank you.~
++ ~(Continue)~ + t22
END

IF ~~ THEN BEGIN t22
SAY ~Both of my parents are half orcs, actually. My father is a succesful merchant. Not typical, I know. He is almost never around, but he was able to afford me a proper tutoring at least.~ 
++ ~I can see that. And your mother?~ + t221
END

IF ~~ THEN BEGIN t221
SAY ~My mother, well...she was once a priestess. Of Luthic. Have you heard of her?~
++ ~I think i've heard her name in passing in one of my lessons. She's an orc deity, correct?~ + t2211
++ ~Can't say that I have.~ + t2211
END

IF ~~ THEN BEGIN t2211
SAY ~ Luthic is the patron deity of orc females, fertility, and caves. Also known as the Blood Moon Witch, and the most magically inclined of all the orc deities. ~
= ~ Mother would tell me stories of the rites the priestesses would enact in her old tribe, where mating couples would place dirt on their foreheads to embody Luthic's connection to earth. ~  
= ~ I always wondered how she felt about abandoning her faith, but I only know the general story. She tends to avoid the subject of Luthic. ~
++ ~ If Luthic is an orc deity, she has to be evil, right? ~ + t2finale
END

IF ~~ THEN BEGIN t2finale
SAY ~Yes, I suppose she is. We can discuss the details of it all later, alright? We're falling behind the others.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t23
SAY ~Fine. Have it your way.~
IF ~~ THEN EXIT
END
 
// End of Talk 2

// Talk 3

IF ~Global("IshyTalk","GLOBAL",6)~ t3
SAY ~All of these people, after your life...it's a wonder you get any sleep at all.~
++ ~Somehow, i've gotten used to it. I feel more accustomed to battle than I thought I would be, for having seen so little.~ + t31
++ ~I enjoy it, Ishlilka. The threat of death at every turn, dealing it to others...it makes me feel comfortable, somehow.~ + t32
++ ~Are you talking, again? You know how much I hate it when you do that.~ + t33
END

IF ~~ THEN BEGIN t31
SAY ~Really? You must be naturally brave then. Even when I first started weapon training with my father, combat scared me a bit.~
= ~ It no longer does, of course. He made sure I became as fearless as any orc.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t32
SAY ~You know, you say the craziest things sometimes...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t33
SAY ~ Hmph! Sometimes I wonder why I even stay...~
IF ~~ THEN EXIT
END

IF ~Global("IshyTalk","GLOBAL",8)~ t4
SAY ~ So, we've talked about my family before. I've avoided the subject for awhile, but would you mind telling me more of Gorion? ~
++ ~Gorion was the wisest and kindest man I have met. Without him, I wouldn't be the man I am today.~ + t41
++ ~He was a good man. Lately, all I can think of is avenging him. ~ + t42
++ ~ I don't want to talk about it.~ + t43
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
// LoveTalk 1

IF ~Global("IshyLT","GLOBAL",2)~ IshyLT1
SAY ~Hey, <CHARNAME>, i'm glad you brought me along. Before I started traveling with you, I wondered if i'd ever find a group of friends to adventure with.~
= ~Up until now, i've just been doing solo hunting trips, making money off of winter wolf pelts and such. I didn't have the confidence to do much more on my own, and I didn't want to take foolish risks. ~
++ ~Well, for what it's worth, you will always have a place here.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("MyRomanceTimer","GLOBAL",3000)~ GOTO ishlt1.1
++ ~I can't imagine someone as charming and intelligent as yourself would have a a problem finding an adventuring party.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt1.1
++ ~Not now. I'm busy. ~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt1.3
END

IF ~~ THEN BEGIN ishlt1.1
SAY ~*A small smile escapes her lips* Thank you, <CHARNAME>.~
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
++ ~Yes, Ishlilka?~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt21
++ ~Is there something wrong? You're acting odd.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt21
++ ~Oh, do go away.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt213
END

IF ~~ THEN BEGIN ishlt21
SAY ~ Does it...bother you? The fact that i'm...well, you know. An orc. ~
++ ~Of course not. And you are a fine example of your race besides.~ GOTO lt211
++ ~ Normally it would...but with you, I think I can make an exception.~ GOTO lt212
++ ~Yes. Yes it does.~ GOTO ishlt213
END

IF ~~ THEN BEGIN lt211
SAY ~Thank you, <CHARNAME>. You always know the rights things to say...~
IF~~ THEN EXIT
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
++ ~I always have a moment for you. ~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("MyRomanceTimer","GLOBAL",3000)~ GOTO lt3.1
++ ~ Yes, I have plenty of them. ~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO lt3.2
++ ~Oh, do go away.~ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt213
END

IF ~~ THEN BEGIN lt3.1
SAY ~I just wanted to let you know that...well, I...~
= ~I like you. There! I said it. ~
++ ~ And I like you. Very much so. ~ GOTO lt3fin
++ ~ That's disgusting. Get away from me.~ DO ~SetGlobal("IshyRomanceActive","GLOBAL",3)~ GOTO badend 
END

IF ~~ THEN BEGIN lt3.2
SAY ~ Stop joking around! I'm being serious. ~
++ ~Alright. What is on your mind?~ + lt3.1
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

// LoveTalk upon reaching Chapter 6

IF ~Global("IshyRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",6)~ IshyBhaal
SAY ~I still can't believe it. You. A child of Bhaal.~
++ ~Neither can I, Ishlilka. So this is why Gorion stayed in Candlekeep for so long. It was to protect me against my own nature, and those who would abuse it.~ GOTO IshB1
++ ~I feel as though my whole life has been a lie. And now I am condemned in the eyes of my own home. I don't know what to think...~ GOTO IshB2
++ ~A child of a god. I can use this power.~ GOTO IshB3
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



