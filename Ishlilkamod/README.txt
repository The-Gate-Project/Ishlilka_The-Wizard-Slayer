///////////////////////////////////////  Ishlilka The Wizard Slayer for BG1 + SOD [FULL VERSION 1.4] \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                                                            
                                                              By WarChiefZeke !

- SETUP INSTRUCTIONS
---------------------

	(Are you playing a steam or GOG version? Don't forget your DLCmerger / modmerge.)

	1) Extract the zip file into your Baldur's Gate directory. Take out ishlilkamod-setup.tp2 and ishlilkamod-setup.exe out of the mod folder and into the game directory.

	2) Double click on the .exe and click install the mod. Should you want to uninstall, double click on the ishlilkamod-setup.exe again and choose uninstall.

	
	
- Basic Overview
-----------------

	Ishlilka is a Wizard Slayer who can be found at the Friendly Arm Inn just north of the entrance. She is good aligned and gets on best with good aligned characters such as 
Garrick, Imoen, and Alora. She has *no party conflicts* but will express her displeasure with evil characters. She is romancable by males who are Half Orcs, Humans, or Half Elves. 
Particularly cruel acts or words may end the romance abruptly. 



- Ishlilka should be compatible with most major BG mods (NPC Project, other NPC mods, etc.).

- Ishlilka's quest in BG1 will start a short time after Chapter 2 and SOD's quest will happen before entering Dragonspear's underground.

- Ishlilka will leave your party upon entering SOD. You will get her back as soon as Korlasz Tomb is over and you exit the Ducal Palace. She may linger for a few seconds before vanishing.

- I don't know how to avoid this, but i'll make it smoother if some modder wants to offer advice.


- Components:
--------------

- 1. Ishlilka mod for BGSoD and EET

Install the joingnable NPC Ishlika the Wizard Slayer.


- 2. Deactivate first meeting cutscene 

This component is NOT RECOMMENDED, it deactivates the forced cutscene for the first meeting at the Friendly Arm Inn nd allows you to initiate the discussion yourself.


- Version History
-----------------

v1.3: Ishlilka for BG1 + SOD (1.3)

v1.4: Ishlilka mod for BGSoD and EET

- Traification
- Uprade weidu to v24900 and rename Ishlilkamod-Setup.exe to Setup-Ishlilkamod.exe
- Add iconv / handle_charsets
- Delete backup folder
- Move FalteriD.D and JuleskD.D to Dialogues folder
- Move and rename Ishlilkamod-Setup.TP2 to Setup-Ishlilkamod.TP2
- Use cpmvars and add EVALUATE_BUFFER for EET compatibility
- Add Lib folder with g3_bgee_cpmvars.tpa and a reference to "eet/other/cpmvars/eet_cpmvars.tpa" in .tp2
- Correct ishyscrp.baf..... InParty("Myself") to InParty(Myself)
- Correct Falteri.cre. Missing script name
- Fix dialog 2da coloumn counts for EET, thanks to GraionDilach
- Correct ishyscrp.baf
- I!QSPR.itm no more a critical item
- Add DLCmerger check
- Add InfinityAutoPackager
- Add metadata and label for Project Infinity
- New component Deactivate Cutscene For Ishilka first meeting
- Add a new reply option for the first meeting that allows Ishilka's integration into the group to be delayed once