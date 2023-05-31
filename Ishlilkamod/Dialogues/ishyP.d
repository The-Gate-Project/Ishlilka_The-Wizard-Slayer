BEGIN ishyP


IF ~Global("endofbg1","GLOBAL",1)
Global("ishsodhi","BD0010",0)~ FirstMeeting
SAY @11500 /* <CHARNAME>! */
++ @11501 /* Hello again, Ishlilka. I see you are keeping yourself busy. */ + ishyhisod
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN ishyhisod 
SAY @11502 /* I couldn't stand by while the city we fought to protect fell into such disrepair. After I reported to my father, I begged him for another assignment in the area. Seems these Crusaders are willing to take anyone. In the meantime i've been helping the Fists keep whatever order they can. */
IF ~~ THEN REPLY @11503 /* You hunt a spellcaster that works for the Crusade, you say? I seek companions to stand with me against them, actually. I would gladly have you join me again. */ + ishyhisod1
IF ~!Global("IshyRomanceActive","GLOBAL",0)~ THEN REPLY @11504 /* I'm very glad you did not leave for good, Ishlilka. I would love to have you at my side once again. I too head up north to face the Crusade. */ + ishyhisod2
IF ~~ THEN REPLY @11505 /* Well, about your buisness, then. */ + ishyhisod3
IF ~~ THEN EXIT 
END

IF ~~ THEN BEGIN ishyhisod1
SAY @11506 /* Truly? Then let us face our foes together once again, my friend. */
IF ~~ THEN DO ~JoinParty() SetGlobal("ishsodhi","BD0010",1)~ EXIT
END 

IF ~~ THEN BEGIN ishyhisod2
SAY @11507 /* How could I possibly leave you for good, <CHARNAME>? Now let's go. Our foes have no chance against us, together. */
IF ~~ THEN DO ~JoinParty() SetGlobal("ishsodhi","BD0010",1)~ EXIT END

IF ~~ THEN BEGIN ishyhisod3
SAY @11508 /* Oh...uh, alright then. */
IF ~~ THEN EXIT
END  

IF ~Global("IshyJoined","LOCALS",1)~ THEN BEGIN ReturnDialogue
SAY @11509 /* Hey! Do you still need me? */
IF ~~ THEN REPLY @11510 /* Sure Ishlilka. Come with me. */ DO ~SetGlobal("IshyJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @11511 /* Not right now, but I will need you again soon. Would you wait here for me, please? */ + RefusedAgain2
END


IF ~~ THEN BEGIN RefusedAgain2
SAY @11512 /* All right then, i'll see you later. */
IF ~~ THEN REPLY @11513 /* Great, I will see you later. */ DO ~SetGlobal("IshyJoined","LOCALS",1)~ EXIT
END


