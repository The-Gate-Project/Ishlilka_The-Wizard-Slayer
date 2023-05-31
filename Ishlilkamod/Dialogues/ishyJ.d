//Ishlilka's banter files with Bhaalspawn
// COMPLETELY AND TOTALLY CORRECT! OMG!!!!!

BEGIN ishyhi
//THE TOTALLY CORRECT VERSION!

IF ~NumTimesTalkedTo(0)~ FirstMeeting
SAY @11000 /* Well, hello there. I can tell from your decent equipment you're not the bandits I am after. Might I ask your name? */ 
++ @11001 /* I am <CHARNAME>. Pleased to meet you. */ + ishhiniceguy
++ @11002 /* Are you alone? Hunting a large group by yourself isn't wise. */ + ishconcern
++ @11003 /* I don't have time for this. */ + ishhifuckoff
END

IF ~~ THEN BEGIN ishhiniceguy
SAY @11004 /* Thank you for your kindness. Sometimes that is hard to find when you...well, when you look like me. I'm Ishlilka Groshnak. A warrior, out here testing my skills. */
IF ~~ THEN REPLY @11005 /* A warrior, you say? We have need of one in our company, if you are interested. And besides, these bandits might be hard to take on alone.  */ + ishjoin
IF ~~ THEN REPLY @11006 /* You're quite well spoken for a half orc, you know. */ + ishDontSayThat
END

IF ~~ THEN BEGIN ishjoin
SAY @11007 /* You want me to...go with you? I never thought someone would ask me that. Well...sure. */
END

IF ~~ THEN BEGIN ishhifuckoff
SAY @11008 /* Oh. Um...alright. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishconcern
SAY @11009 /* Well, I suppose it is a bit dangerous. Still, i'm not a normal warrior anyway. I'm...special. In a way. */
IF ~~ THEN REPLY @11010 /* Well if you want practice in battle, you would surely find it in our company. */ + ishjoin
IF ~~ THEN REPLY @11011 /* Special? What do you mean? */ + specialish
IF ~~ THEN REPLY @11006 /* You're quite well spoken for a half orc, you know. */ + ishDontSayThat
END

IF ~~ THEN BEGIN specialish
SAY @11012 /* I can resist magic at times...I wasn't trained to though. Somehow I was born with it. Anyway, this isn't the best place to sit around and talk... */
IF ~~ THEN REPLY @11013 /* You're right. Would you, perhaps, care to join me? */ + ishjoin
IF ~~ THEN REPLY @11014 /* You're right. I have to go. */ + ishhifuckoff
END 

IF ~~ THEN BEGIN ishDontSayThat
SAY @11015 /* *She quickly glares at you.* And what's THAT supposed to mean? Whatever. I have targets to hunt down, so if you didn't need anything...? */
IF ~~ THEN REPLY @11016 /* I'm sorry, I didn't mean it that way. In fact, I could use a warrior like you in my party. */ + ishjoin
IF ~~ THEN REPLY @11017 /*  Whatever, bye.  */ + ishhifuckoff
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY @11018 /* Hey! I'm glad to see you again. You need me? */
IF ~~ THEN REPLY @11019 /* Sure Ishlilka. Come with me. */ DO ~SetGlobal("IshyJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @11020 /* Not right now. */ + RefusedAgain
END

IF ~~ THEN BEGIN RefusedAgain
SAY @11008 /* Oh. Um...alright. */
IF ~~ THEN EXIT
END

// Talk 1. 
// TALK 1 TOTALLY CORRECT!!

BEGIN IshyDia


IF ~Global("IshyTalk","GLOBAL",2)~ t1
SAY @11021 /* So, <CHARNAME>...if you don't mind me asking, did you ever think you would become an adventurer? */
++ @11022 /* Truthfully, no. I never thought I would travel much beyond Candlekeep's walls. */ + t11
++ @11023 /* As sad as a begininng it was, my heart ever yearned for the road. */ + t12
++ @11024 /* Sure, why not? The best job in order to find profit and battle. */ + t123
END

IF ~~ THEN BEGIN t11
SAY @11025 /*  I guess I can understand that. If you have a happy home, the call of the outside world seems less appealing. Oh! I'm sorry. I didn't mean to bring up a bad subject...  */
++ @11026 /*  It's okay. I did have a happy home. And I know you meant no harm.  */ + t111
++ @11027 /*  You're right, I don't much want to talk about it. Might we speak of your own family, instead?  */ + t121
++ @11028 /*  You're right. You think I want to talk about home life after mine was ripped from me? Get lost, you dumb bitch.  */ + ouch
END

IF ~~ THEN BEGIN t111
SAY @11029 /*  Right...well, let's just move on before I make a fool of myself again.  */
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ouch
SAY @11030 /* What? I was just trying to be nice, you jerk! */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t12
SAY @11031 /*  I feel much the same way. My mother does just fine in TradeMeet, and I visit her when I can, but seeing the world and testing myself against the evil forces of the world is the only way I want to live.  */
++ @11032 /*  You sound like you get along quite well with your mother. Why not tell me more about your family?  */ + t121
++ @11033 /*  The forces that took Gorion from me are as evil as any.  */ + t122
++ @11034 /*  Sounds awfully noble. Me, i'm in it for revenge. And for what power and wealth I can gain for myself.  */ + t123
END

IF ~~ THEN BEGIN t121
SAY @11035 /*  Perhaps another time we can talk of my family. For now, we should move on.  */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t122
SAY @11036 /* You're right about that. And I will get them for you, I promise.  */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t123
SAY @11037 /*  Uh...whatever you say, I guess.  */
IF ~~ THEN EXIT
END

// End Talk 1 files.

//Talk 2 
// TALK 2 FILES TOTALLY ACCURATE!! :D :D :D :D

IF ~Global("IshyTalk","GLOBAL",4)~ t2
SAY @11038 /* So, <CHARNAME> i'm sure you're probably wondering how I came by my half orc parentage... */
++ @11039 /* Yes, I was a bit curious. I was more wondering how you came to be such a beautiful example of a half orc. */ DO ~SetGlobal("IshyRomanceActive","GLOBAL",2)~ + t21
++ @11040 /* Yes, I was a bit curious. I'm willing to hear the story. */ + t22
++ @11041 /* No. Away with you. */ + t23
END

IF ~~ THEN BEGIN t21 
SAY @11042 /* *Ishlilka quickly looks at the ground, and she can not contain the subtle hint of a smile on her face* Aw...thank you. */
++ @11043 /* (Continue) */ + t22
END

IF ~~ THEN BEGIN t22
SAY @11044 /* Both of my parents are half orcs, actually. My father is a succesful merchant. Not typical, I know. He is almost never around, but he was able to afford me a proper tutoring at least. */ 
++ @11045 /* I can see that. And your mother? */ + t221
END

IF ~~ THEN BEGIN t221
SAY @11046 /* My mother, well...she was once a priestess. Of Luthic. Have you heard of her? */
++ @11047 /* I think i've heard her name in passing in one of my lessons. She's an orc deity, correct? */ + t2211
++ @11048 /* Can't say that I have. */ + t2211
END

IF ~~ THEN BEGIN t2211
SAY @11049 /*  Luthic is the patron deity of orc females, fertility, and caves. Also known as the Blood Moon Witch, and the most magically inclined of all the orc deities.  */
= @11050 /*  Mother would tell me stories of the rites the priestesses would enact in her old tribe, where mating couples would place dirt on their foreheads to embody Luthic's connection to earth.  */  
= @11051 /*  I always wondered how she felt about abandoning her faith, but I only know the general story. She tends to avoid the subject of Luthic.  */
++ @11052 /*  If Luthic is an orc deity, she has to be evil, right?  */ + t2finale
END

IF ~~ THEN BEGIN t2finale
SAY @11053 /* Yes, I suppose she is. We can discuss the details of it all later, alright? We're falling behind the others. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t23
SAY @11054 /* Fine. Have it your way. */
IF ~~ THEN EXIT
END
 
// End of Talk 2

// Talk 3

IF ~Global("IshyTalk","GLOBAL",6)~ t3
SAY @11055 /* All of these people, after your life...it's a wonder you get any sleep at all. */
++ @11056 /* Somehow, i've gotten used to it. I feel more accustomed to battle than I thought I would be, for having seen so little. */ + t31
++ @11057 /* I enjoy it, Ishlilka. The threat of death at every turn, dealing it to others...it makes me feel comfortable, somehow. */ + t32
++ @11058 /* Are you talking, again? You know how much I hate it when you do that. */ + t33
END

IF ~~ THEN BEGIN t31
SAY @11059 /* Really? You must be naturally brave then. Even when I first started weapon training with my father, combat scared me a bit. */
= @11060 /*  It no longer does, of course. He made sure I became as fearless as any orc. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t32
SAY @11061 /* You know, you say the craziest things sometimes... */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t33
SAY @11062 /*  Hmph! Sometimes I wonder why I even stay... */
IF ~~ THEN EXIT
END

IF ~Global("IshyTalk","GLOBAL",8)~ t4
SAY @11063 /*  So, we've talked about my family before. I've avoided the subject for awhile, but would you mind telling me more of Gorion?  */
++ @11064 /* Gorion was the wisest and kindest man I have met. Without him, I wouldn't be the man I am today. */ + t41
++ @11065 /* He was a good man. Lately, all I can think of is avenging him.  */ + t42
++ @11066 /*  I don't want to talk about it. */ + t43
END

IF ~~ THEN BEGIN t41
SAY @11067 /* Well, that was sweet. He must have been very important to you. */
=@11068 /* Keep Imoen close to you, alright? I would hate to see you hurt again. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t42
SAY @11069 /* Don't get so focused on revenge you lose sight of what you seek to avenge. There may come a time you may need his good example more than ever. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN t43
SAY @11070 /* Alright. Maybe another time.  */
IF ~~ THEN EXIT
END
// LoveTalk 1

IF ~Global("IshyLT","GLOBAL",2)~ IshyLT1
SAY @11071 /* Hey, <CHARNAME>, i'm glad you brought me along. Before I started traveling with you, I wondered if i'd ever find a group of friends to adventure with. */
= @11072 /* Up until now, i've just been doing solo hunting trips, making money off of winter wolf pelts and such. I didn't have the confidence to do much more on my own, and I didn't want to take foolish risks.  */
++ @11073 /* Well, for what it's worth, you will always have a place here. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("MyRomanceTimer","GLOBAL",3000)~ GOTO ishlt1.1
++ @11074 /* I can't imagine someone as charming and intelligent as yourself would have a a problem finding an adventuring party. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt1.1
++ @11075 /* Not now. I'm busy.  */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt1.3
END

IF ~~ THEN BEGIN ishlt1.1
SAY @11076 /* *A small smile escapes her lips* Thank you, <CHARNAME>. */
= @11077 /* Perhaps it was for the best that it took awhile to find a group. I clearly ended up with a good one. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishlt1.2
SAY @11078 /* *he he!* You certainly are sweet, <CHARNAME>. I certainly didn't think I would stumble across someone like you.  */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishlt1.3
SAY @11079 /* *Ishlilka looks hurt.* Fine then. */
IF ~~ THEN EXIT
END

// LoveTalk 2

IF ~Global("IshyLoveTalk","GLOBAL",4)~ IshyLoveTalk2Starts
SAY @11080 /* Um...<CHARNAME>... */
++ @11081 /* Yes, Ishlilka? */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt21
++ @11082 /* Is there something wrong? You're acting odd. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt21
++ @11083 /* Oh, do go away. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt213
END

IF ~~ THEN BEGIN ishlt21
SAY @11084 /*  Does it...bother you? The fact that i'm...well, you know. An orc.  */
++ @11085 /* Of course not. And you are a fine example of your race besides. */ GOTO lt211
++ @11086 /*  Normally it would...but with you, I think I can make an exception. */ GOTO lt212
++ @11087 /* Yes. Yes it does. */ GOTO ishlt213
END

IF ~~ THEN BEGIN lt211
SAY @11088 /* Thank you, <CHARNAME>. You always know the rights things to say... */
IF~~ THEN EXIT
END

IF ~~ THEN BEGIN lt212
SAY @11089 /* *Ishlilka quickly glares at you* Oh, so there IS something wrong with being an orc! */
= @11090 /* Whatever, <CHARNAME>. Forget I said anything. */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ishlt213
SAY @11091 /* Fine! Forget I said anything then. */
IF ~~ THEN EXIT
END

// LoveTalk 3
IF ~Global("IshyLoveTalk","GLOBAL",6)~ lt3
SAY @11092 /* <CHARNAME>, do you have a moment? */
++ @11093 /* I always have a moment for you.  */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("MyRomanceTimer","GLOBAL",3000)~ GOTO lt3.1
++ @11094 /*  Yes, I have plenty of them.  */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO lt3.2
++ @11083 /* Oh, do go away. */ DO ~IncrementGlobal("IshyLoveTalk","GLOBAL",1) RealSetGlobalTimer("IshyRomanceTimer","GLOBAL",3000)~ GOTO ishlt213
END

IF ~~ THEN BEGIN lt3.1
SAY @11095 /* I just wanted to let you know that...well, I... */
= @11096 /* I like you. There! I said it.  */
++ @11097 /*  And I like you. Very much so.  */ GOTO lt3fin
++ @11098 /*  That's disgusting. Get away from me. */ DO ~SetGlobal("IshyRomanceActive","GLOBAL",3)~ GOTO badend 
END

IF ~~ THEN BEGIN lt3.2
SAY @11099 /*  Stop joking around! I'm being serious.  */
++ @11100 /* Alright. What is on your mind? */ + lt3.1
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN lt3fin
SAY @11101 /*  Really? I'm so glad! But it's we've only known each other such a short time...  */
= @11102 /*  Let's just, take it slow for now, alright? I'm sure we'll have plenty of time for this after Gorion is avenged.  */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN badend
SAY @11103 /* You bastard! Why did you pretend to be interested! */
IF ~~ THEN EXIT
END

// LoveTalk upon reaching Chapter 6

IF ~Global("IshyRomanceActive","GLOBAL",2)
Global("Chapter","GLOBAL",6)~ IshyBhaal
SAY @11104 /* I still can't believe it. You. A child of Bhaal. */
++ @11105 /* Neither can I, Ishlilka. So this is why Gorion stayed in Candlekeep for so long. It was to protect me against my own nature, and those who would abuse it. */ GOTO IshB1
++ @11106 /* I feel as though my whole life has been a lie. And now I am condemned in the eyes of my own home. I don't know what to think... */ GOTO IshB2
++ @11107 /* A child of a god. I can use this power. */ GOTO IshB3
END

IF ~~ THEN BEGIN IshB1
SAY @11108 /*  *Ishlilka slowly nods* He was a good man. And no matter what is inside you, he raised one too. *She takes your hand* And i'll always be here, to help keep you that way.  */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IshB2
SAY @11109 /* *Ishlilka gives you a hug and doesn't let go* I know how you must feel, but you have to be strong. Gorion loved you, and died so that you could you could be saved. You- we- have to move on. For him.  */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IshB3
SAY @11110 /* <CHARNAME>! How can you say that! */
IF ~~ THEN EXIT
END



