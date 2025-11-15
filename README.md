# CSS-ZE-Configs
A repository for the different map configs (stripper mainly) I made through the years for CS:S

---

## Stripper cfg

The **stripper-cfgs** folder contains Stripper:Source configs I made (or contributed to), to fix CS:S ZE maps. Some changes in the Stripper configs may have been made by other people too.

**Notes:**
- There are stripper configs adding an entity called `TheCurrentLevelPlugin`. 
    - The goal is to add a counter representing the current level, for the **StageDisplay** plugin, as it cannot really understand physics levels system and other weird systems.
- `ze_FFVII_Mako_Reactor_v5_3_moltard.cfg` Stripper cfg is the older version of the CS:S Stripper (2017), before other people helped me to add Zombieden Ext3 + Race and other fixes.
    - `ze_ffvii_mako_reactor_v5_3.cfg` is the latest version (it also contains some stuff which were added for a server event in 2022)
- `ze_paranoid_rezurrection_v11_9.cfg` Stripper cfg is mainly made by Noctali. 
	- I added many others changes and fixes to the map, through the years.
	- It requires people to download a fixed Gargantua model, as the original one packed became corrupted after the 2025 update (files are on the repo)
	- It requires people to download a new "Blue Screen of Death" overlay (materials/rafuron/paranoid/new_bsod2)
	- It requires people to download a new vtf and vmt for a mode (materials/berke1/zombieescape1/paranoidrezurrection1/allitemsmode1)
	- Downloading the following material : "materials/models/lotr/singularity/decalmetalvent004a.vmt" should prevent console spam during singularity item usage
	- It requires servers owners to upload the leaderboard.nut file on their server (cstrike/scripts/vscripts/ze_paranoid_rezurrection/berke)


Add the following to downloads.txt :
```
materials/rafuron/paranoid/new_bsod.vmt
materials/rafuron/paranoid/new_bsod.vtf
materials/rafuron/paranoid/new_bsod2.vmt
materials/rafuron/paranoid/new_bsod2.vtf
materials/models/lotr/singularity/decalmetalvent004a.vmt
materials/berke1/zombieescape1/paranoidrezurrection1/allitemsmode1.vmt
materials/berke1/zombieescape1/paranoidrezurrection1/allitemsmode1.vtf
materials/models/garg_fix_2025/garg_body.vmt
materials/models/garg_fix_2025/garg_body.vtf
materials/models/garg_fix_2025/garg_body_normal.vtf
materials/models/garg_fix_2025/garg_eye_Chrome.vmt
materials/models/garg_fix_2025/garg_eye_Chrome.vtf
models/garg_fix_2025.dx80.vtx
models/garg_fix_2025.dx90.vtx
models/garg_fix_2025.mdl
models/garg_fix_2025.phy
models/garg_fix_2025.sw.vtx
models/garg_fix_2025.vvd
```

---

## StageDisplay

The **stagedisplay-cfgs** folder contains configs I made for the StageDisplay plugin, which can display the current level name in the server name. It's possible some of those cfg were not created by me (it's hard to keep track of it once it's on a server).


---

---

## Entwatch - Unloze plugin version

The **entwatch-cfgs** folder contains configs I made for the Entwatch plugin on Unloze.

It's a (currently) private version of Entwatch recoded from scratch by Zacade (one of the original creator of Entwatch) who wanted to clean the code.

The syntax of the cfg changed, which led me to recreate a majority of all the cfgs. It's possible some of those cfg were not created by me (it's hard to keep track of it once it's on a server).


---


