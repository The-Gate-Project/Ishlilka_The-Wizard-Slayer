BEGIN ishyhi

//THE TOTALLY CORRECT VERSION!

IF ~NumTimesTalkedTo(0)
Global("endofbg1","GLOBAL",0)~ FirstMeeting
SAY ~*You see a young half-orc woman training with her weapon in a small corner outside of the Friendly Arm Inn. She eventually notices you watching, and approaches.*~
=~Well, hello there. I couldn't help but notice you watching me. Might I ask your name?~ 
++ ~I am <CHARNAME>, pleased to meet you. You seem quite talented.~  + ishhiniceguy
IF ~InParty("Imoen")~ THEN REPLY ~I am <CHARNAME>, and this is Imoen. Pleased to meet you. ~ + ishhiniceguy2
++ ~I don't have time for this and I wasn't watching you, go away.~ + ishhifuckoff
END

IF ~~ THEN BEGIN ishhiniceguy2
SAY ~Thank you for your kindness, and it is nice to meet you too, Imoen. Sometimes that is hard to find when you...well, when you look like me. I'm Ishlilka Groshnak. A warrior, out here testing my skills.~
IF ~Global("Chapter","GLOBAL",1)~ THEN REPLY ~A warrior, you say? If you have need of a party, we would gladly have you join us. My situation is not...ideal at the moment.~ + ishdetails
IF ~~ THEN REPLY ~You're quite well spoken for a half orc, you know.~ + ishDontSayThat
IF ~~ THEN REPLY ~A warrior, you say? We would gladly have you join us, if you are interested.~ + ishjoin
IF ~~ THEN REPLY ~I don't have time for this.~ + ishhifuckoff
END

IF ~~ THEN BEGIN ishhiniceguy
SAY ~Thank you, that was very kind. Sometimes such kindness is hard to find when you...well, when you look like me. I'm Ishlilka Groshnak. I suppose you could call me an aspiring warrior.~
IF ~Global("Chapter","GLOBAL",1)~ THEN REPLY ~A warrior, you say? If you have need of a party, we would gladly have you join us. My situation is not...ideal at the moment.~ + ishdetails
IF ~~ THEN REPLY ~You're quite well spoken for a half orc, you know.~ + ishDontSayThat
IF ~~ THEN REPLY ~A warrior, you say? We would gladly have you join us, if you are interested.~ + ishjoin
IF ~~ THEN REPLY ~I don't have time for this.~ + ishhifuckoff
END

IF ~~ THEN BEGIN ishdetails
SAY ~Not ideal? What do you mean?~
++ ~*You relate what just happened. The sudden loss of your home, your father, the recent assasination attempts, everything.*~ + ishdetails2
END

IF ~~ THEN BEGIN ishdetails2
SAY ~Oh, gods, that's terrible! Of course I will join you. Together, maybe we'll figure out who it is that's after you.~
= ~I, uh, have my own reasons for being here too, but i'm sure we can get to that later.~ 
IF ~~ THEN REPLY ~Great. Let's go.~ DO ~SetGlobal("IshyJoined","LOCALS",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN ishjoin
SAY ~You want me to...go with you? I never thought someone would ask me that. Well...sure.~ 
IF ~~ THEN REPLY ~Great. Let's go.~ DO ~SetGlobal("IshyJoined","LOCALS",1)
JoinParty()~ EXIT
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


IF ~~ THEN BEGIN RefusedAgain
SAY ~Yes, i'll head there now. Please come by and see me again.~
IF ~~ THEN REPLY ~Great, I will see you later Ishlilka.~ DO ~SetGlobal("IshyJoined","LOCALS",1)~ 
EXIT
END

IF ~~ THEN BEGIN RefusedAgain2
SAY ~Of course, <CHARNAME>. I'll be here until you need me again.~
IF ~~ THEN REPLY ~Great, I will see you later.~ DO ~SetGlobal("IshyJoined","LOCALS",1) 
LeaveParty()~ EXIT
END

IF ~Global("ishsodhi","BD0010",0)~ FirstMeeting
SAY ~<CHARNAME>!~
++ ~Hello again, Ishlilka. I see you are keeping yourself busy.~ + ishyhisod
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishyhisod 
SAY ~I couldn't stand by while the city we fought to protect fell into such disrepair. After I reported to my father, I begged him for another assignment in the area. Seems these Crusaders are willing to take anyone. In the meantime i've been helping the Fists keep whatever order they can.~
IF ~~ THEN REPLY ~You hunt a spellcaster that works for the Crusade, you say? I seek companions to stand with me against them, actually. I would gladly have you join me again.~ + ishyhisod1
IF ~!Global("IshyRomanceActive","GLOBAL",0)~ THEN REPLY ~I'm very glad you did not leave for good, Ishlilka. I would love to have you at my side once again. I too head up north to face the Crusade.~ + ishyhisod2
IF ~~ THEN REPLY ~Well, about your buisness, then.~ + ishyhisod3
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ishyhisod1
SAY ~Truly? Then let us face our foes together once again, my friend.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END 

IF ~~ THEN BEGIN ishyhisod2
SAY ~How could I possibly leave you for good, <CHARNAME>? Now let's go. Our foes have no chance against us, together.~
IF ~~ THEN DO ~JoinParty()~ EXIT END

IF ~~ THEN BEGIN ishyhisod3
SAY ~Oh...uh, alright then.~
IF ~~ THEN EXIT
END  


IF ~Global("IshyJoined","LOCALS",1)~ THEN BEGIN ReturnDialogue
SAY ~Hey! Do you still need me?~
IF ~~ THEN REPLY ~Sure Ishlilka. Come with me.~ DO ~SetGlobal("IshyJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY ~Not right now, but I will need you again soon. Would you wait here for me, please?~ + RefusedAgain2
END
