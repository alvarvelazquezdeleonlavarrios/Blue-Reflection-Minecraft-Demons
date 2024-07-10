#******************* Gameplay --> Natural Spawning --> Spawn Random Demon *******************


#*************************************** Random Value ***************************************
#------- Adds this hostile mob a variable to calculate its chance of being one of the Blue Reflection demons. -------
# mob.AddVariable( natural_spawning_demon_type, -1 );
scoreboard players set @s _ntrlSpwn.dmTp -1

#------- Defines this mob the chance for setting an infernal mob variant or not. -------
# mob.natural_spawning_demon_type = Random.Range(0,63);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_demon"]}
execute store result score @s _ntrlSpwn.dmTp run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_demon, limit=1] UUID[0] 1
scoreboard players operation @s _ntrlSpwn.dmTp %= $Constants _const.64
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_demon, limit=1, sort=nearest]
#*********************************************************************************************


#------- First generates the base 3D model (armor stand) and the base mob (zombie) for the random demon. -------
# generate_base_entities();
function blue_reflection_demons:spawning/generate_base_entities


#***************************************** Blue Reflection (2017) Demons List *****************************************
#----------------------------------------------------------------------------
#------- Spawns a Calm Erythro -------
# if (mob.natural_spawning_demon_type == 0):     spawnDemon("calm_erythro");
execute if score @s _ntrlSpwn.dmTp matches 0 run function blue_reflection_demons:spawning/blue_reflection_demons/calm_erythro

#------- Spawns a Rage Erythro -------
# if (mob.natural_spawning_demon_type == 1):     spawnDemon("rage_erythro");
execute if score @s _ntrlSpwn.dmTp matches 1 run function blue_reflection_demons:spawning/blue_reflection_demons/rage_erythro

#------- Spawns a Joy Erythro -------
# if (mob.natural_spawning_demon_type == 2):     spawnDemon("joy_erythro");
execute if score @s _ntrlSpwn.dmTp matches 2 run function blue_reflection_demons:spawning/blue_reflection_demons/joy_erythro

#------- Spawns a Despair Erythro -------
# if (mob.natural_spawning_demon_type == 3):     spawnDemon("despair_erythro");
execute if score @s _ntrlSpwn.dmTp matches 3 run function blue_reflection_demons:spawning/blue_reflection_demons/despair_erythro
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Common Leuk -------
# if (mob.natural_spawning_demon_type == 4):     spawnDemon("common_leuk");
execute if score @s _ntrlSpwn.dmTp matches 4 run function blue_reflection_demons:spawning/blue_reflection_demons/common_leuk

#------- Spawns a Colonel Leuk -------
# if (mob.natural_spawning_demon_type == 5):     spawnDemon("colonel_leuk");
execute if score @s _ntrlSpwn.dmTp matches 5 run function blue_reflection_demons:spawning/blue_reflection_demons/colonel_leuk

#------- Spawns a Leuk Leader -------
# if (mob.natural_spawning_demon_type == 6):     spawnDemon("leuk_leader");
execute if score @s _ntrlSpwn.dmTp matches 6 run function blue_reflection_demons:spawning/blue_reflection_demons/leuk_leader

#------- Spawns a Berserk Leuk Knight -------
# if (mob.natural_spawning_demon_type == 7):     spawnDemon("berserk_leuk_knight");
execute if score @s _ntrlSpwn.dmTp matches 7 run function blue_reflection_demons:spawning/blue_reflection_demons/berserk_leuk_knight
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Acceptor -------
# if (mob.natural_spawning_demon_type == 8):     spawnDemon("acceptor");
execute if score @s _ntrlSpwn.dmTp matches 8 run function blue_reflection_demons:spawning/blue_reflection_demons/acceptor

#------- Spawns an Admirator -------
# if (mob.natural_spawning_demon_type == 9):     spawnDemon("admirator");
execute if score @s _ntrlSpwn.dmTp matches 9 run function blue_reflection_demons:spawning/blue_reflection_demons/admirator

#------- Spawns a Truster -------
# if (mob.natural_spawning_demon_type == 10):     spawnDemon("truster");
execute if score @s _ntrlSpwn.dmTp matches 10 run function blue_reflection_demons:spawning/blue_reflection_demons/truster

#------- Spawns an Envy Fanatic -------
# if (mob.natural_spawning_demon_type == 11):     spawnDemon("envy_fanatic");
execute if score @s _ntrlSpwn.dmTp matches 11 run function blue_reflection_demons:spawning/blue_reflection_demons/envy_fanatic
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Violetwing Tineresy -------
# if (mob.natural_spawning_demon_type == 12):     spawnDemon("violetwing_tineresy");
execute if score @s _ntrlSpwn.dmTp matches 12 run function blue_reflection_demons:spawning/blue_reflection_demons/violetwing_tineresy

#------- Spawns a Brightwing Setcasy -------
# if (mob.natural_spawning_demon_type == 13):     spawnDemon("brightwing_setcasy");
execute if score @s _ntrlSpwn.dmTp matches 13 run function blue_reflection_demons:spawning/blue_reflection_demons/brightwing_setcasy

#------- Spawns a Darkwing Oji -------
# if (mob.natural_spawning_demon_type == 14):     spawnDemon("darkwing_oji");
execute if score @s _ntrlSpwn.dmTp matches 14 run function blue_reflection_demons:spawning/blue_reflection_demons/darkwing_oji

#------- Spawns a Corruptwing Redrosid -------
# if (mob.natural_spawning_demon_type == 15):     spawnDemon("corruptwing_redrosid");
execute if score @s _ntrlSpwn.dmTp matches 15 run function blue_reflection_demons:spawning/blue_reflection_demons/corruptwing_redrosid
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Boredom Skull -------
# if (mob.natural_spawning_demon_type == 16):     spawnDemon("boredom_skull");
execute if score @s _ntrlSpwn.dmTp matches 16 run function blue_reflection_demons:spawning/blue_reflection_demons/boredom_skull

#------- Spawns a Loathing Skeleton -------
# if (mob.natural_spawning_demon_type == 17):     spawnDemon("loathing_skeleton");
execute if score @s _ntrlSpwn.dmTp matches 17 run function blue_reflection_demons:spawning/blue_reflection_demons/loathing_skeleton

#------- Spawns a Disgust Cranium -------
# if (mob.natural_spawning_demon_type == 18):     spawnDemon("disgust_cranium");
execute if score @s _ntrlSpwn.dmTp matches 18 run function blue_reflection_demons:spawning/blue_reflection_demons/disgust_cranium

#------- Spawns an Apathy Bones -------
# if (mob.natural_spawning_demon_type == 19):     spawnDemon("apathy_bones");
execute if score @s _ntrlSpwn.dmTp matches 19 run function blue_reflection_demons:spawning/blue_reflection_demons/apathy_bones
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Cryhorn -------
# if (mob.natural_spawning_demon_type == 20):     spawnDemon("cryhorn");
execute if score @s _ntrlSpwn.dmTp matches 20 run function blue_reflection_demons:spawning/blue_reflection_demons/cryhorn

#------- Spawns a Wailbranch -------
# if (mob.natural_spawning_demon_type == 21):     spawnDemon("wailbranch");
execute if score @s _ntrlSpwn.dmTp matches 21 run function blue_reflection_demons:spawning/blue_reflection_demons/wailbranch

#------- Spawns a Tearbane -------
# if (mob.natural_spawning_demon_type == 22):     spawnDemon("tearbane");
execute if score @s _ntrlSpwn.dmTp matches 22 run function blue_reflection_demons:spawning/blue_reflection_demons/tearbane

#------- Spawns a Sobsynapse -------
# if (mob.natural_spawning_demon_type == 23):     spawnDemon("sobsynapse");
execute if score @s _ntrlSpwn.dmTp matches 23 run function blue_reflection_demons:spawning/blue_reflection_demons/sobsynapse
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Anoia Tapir -------
# if (mob.natural_spawning_demon_type == 24):     spawnDemon("anoia_tapir");
execute if score @s _ntrlSpwn.dmTp matches 24 run function blue_reflection_demons:spawning/blue_reflection_demons/anoia_tapir

#------- Spawns a Rage Tapiridae -------
# if (mob.natural_spawning_demon_type == 25):     spawnDemon("rage_tapiridae");
execute if score @s _ntrlSpwn.dmTp matches 25 run function blue_reflection_demons:spawning/blue_reflection_demons/rage_tapiridae

#------- Spawns an Anger Tapirus -------
# if (mob.natural_spawning_demon_type == 26):     spawnDemon("anger_tapirus");
execute if score @s _ntrlSpwn.dmTp matches 26 run function blue_reflection_demons:spawning/blue_reflection_demons/anger_tapirus

#------- Spawns a Murderous Predator -------
# if (mob.natural_spawning_demon_type == 27):     spawnDemon("murderous_predator");
execute if score @s _ntrlSpwn.dmTp matches 27 run function blue_reflection_demons:spawning/blue_reflection_demons/murderous_predator
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Assassin Interest -------
# if (mob.natural_spawning_demon_type == 28):     spawnDemon("assassin_interest");
execute if score @s _ntrlSpwn.dmTp matches 28 run function blue_reflection_demons:spawning/blue_reflection_demons/assassin_interest

#------- Spawns a Slaughterer Vigilance -------
# if (mob.natural_spawning_demon_type == 29):     spawnDemon("slaughterer_vigilance");
execute if score @s _ntrlSpwn.dmTp matches 29 run function blue_reflection_demons:spawning/blue_reflection_demons/slaughterer_vigilance

#------- Spawns an Executioner Ex-Pect -------
# if (mob.natural_spawning_demon_type == 30):     spawnDemon("executioner_ex_pect");
execute if score @s _ntrlSpwn.dmTp matches 30 run function blue_reflection_demons:spawning/blue_reflection_demons/executioner_ex_pect

#------- Spawns a Reaper Oppose -------
# if (mob.natural_spawning_demon_type == 31):     spawnDemon("reaper_oppose");
execute if score @s _ntrlSpwn.dmTp matches 31 run function blue_reflection_demons:spawning/blue_reflection_demons/reaper_oppose
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Sculpture Distract -------
# if (mob.natural_spawning_demon_type == 32):     spawnDemon("sculpture_distract");
execute if score @s _ntrlSpwn.dmTp matches 32 run function blue_reflection_demons:spawning/blue_reflection_demons/sculpture_distract

#------- Spawns a Crystalline Astonish -------
# if (mob.natural_spawning_demon_type == 33):     spawnDemon("crystalline_astonish");
execute if score @s _ntrlSpwn.dmTp matches 33 run function blue_reflection_demons:spawning/blue_reflection_demons/crystalline_astonish

#------- Spawns an Ironclad Surprise -------
# if (mob.natural_spawning_demon_type == 34):     spawnDemon("ironclad_surprise");
execute if score @s _ntrlSpwn.dmTp matches 34 run function blue_reflection_demons:spawning/blue_reflection_demons/ironclad_surprise

#------- Spawns a Guardian Amazement -------
# if (mob.natural_spawning_demon_type == 35):     spawnDemon("guardian_amazement");
execute if score @s _ntrlSpwn.dmTp matches 35 run function blue_reflection_demons:spawning/blue_reflection_demons/guardian_amazement
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Anxiety Coffin -------
# if (mob.natural_spawning_demon_type == 36):     spawnDemon("anxiety_coffin");
execute if score @s _ntrlSpwn.dmTp matches 36 run function blue_reflection_demons:spawning/blue_reflection_demons/anxiety_coffin

#------- Spawns a Terror Entombed -------
# if (mob.natural_spawning_demon_type == 37):     spawnDemon("terror_entombed");
execute if score @s _ntrlSpwn.dmTp matches 37 run function blue_reflection_demons:spawning/blue_reflection_demons/terror_entombed

#------- Spawns a Fear Casket -------
# if (mob.natural_spawning_demon_type == 38):     spawnDemon("fear_casket");
execute if score @s _ntrlSpwn.dmTp matches 38 run function blue_reflection_demons:spawning/blue_reflection_demons/fear_casket

#------- Spawns a Nightmare Graver -------
# if (mob.natural_spawning_demon_type == 39):     spawnDemon("nightmare_graver");
execute if score @s _ntrlSpwn.dmTp matches 39 run function blue_reflection_demons:spawning/blue_reflection_demons/nightmare_graver
#----------------------------------------------------------------------------
#**********************************************************************************************************************



#***************************************** Blue Reflection Tie Demons List *****************************************
#----------------------------------------------------------------------------
#------- Spawns a Armet -------
# if (mob.natural_spawning_demon_type == 40):     spawnDemon("armet");
execute if score @s _ntrlSpwn.dmTp matches 40 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/armet

#------- Spawns a Heavy Armet -------
# if (mob.natural_spawning_demon_type == 41):     spawnDemon("heavy_armet");
execute if score @s _ntrlSpwn.dmTp matches 41 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/heavy_armet
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Circlet -------
# if (mob.natural_spawning_demon_type == 42):     spawnDemon("circlet");
execute if score @s _ntrlSpwn.dmTp matches 42 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/circlet

#------- Spawns a Heavy Circlet -------
# if (mob.natural_spawning_demon_type == 43):     spawnDemon("heavy_circlet");
execute if score @s _ntrlSpwn.dmTp matches 43 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/heavy_circlet
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Daemon Head -------
# if (mob.natural_spawning_demon_type == 44):     spawnDemon("daemon_head");
execute if score @s _ntrlSpwn.dmTp matches 44 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/daemon_head

#------- Spawns a Heavy Daemon Head -------
# if (mob.natural_spawning_demon_type == 45):     spawnDemon("heavy_daemon_head");
execute if score @s _ntrlSpwn.dmTp matches 45 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/heavy_daemon_head
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Mud Bear -------
# if (mob.natural_spawning_demon_type == 46):     spawnDemon("mud_bear");
execute if score @s _ntrlSpwn.dmTp matches 46 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/mud_bear

#------- Spawns a Heavy Mud Bear -------
# if (mob.natural_spawning_demon_type == 47):     spawnDemon("heavy_mud_bear");
execute if score @s _ntrlSpwn.dmTp matches 47 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/heavy_mud_bear
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Nose Bug -------
# if (mob.natural_spawning_demon_type == 48):     spawnDemon("nose_bug");
execute if score @s _ntrlSpwn.dmTp matches 48 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/nose_bug

#------- Spawns a Heavy Nose Bug -------
# if (mob.natural_spawning_demon_type == 49):     spawnDemon("heavy_nose_bug");
execute if score @s _ntrlSpwn.dmTp matches 49 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/heavy_nose_bug
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Armored Specter -------
# if (mob.natural_spawning_demon_type == 50):     spawnDemon("armored_specter");
execute if score @s _ntrlSpwn.dmTp matches 50 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/armored_specter

#------- Spawns a Mountain Bug -------
# if (mob.natural_spawning_demon_type == 51):     spawnDemon("mountain_bug");
execute if score @s _ntrlSpwn.dmTp matches 51 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/mountain_bug

#------- Spawns a Petal Hood -------
# if (mob.natural_spawning_demon_type == 52):     spawnDemon("petal_hood");
execute if score @s _ntrlSpwn.dmTp matches 52 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/petal_hood

#------- Spawns a Bone Stringer -------
# if (mob.natural_spawning_demon_type == 53):     spawnDemon("bone_stringer");
execute if score @s _ntrlSpwn.dmTp matches 53 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/bone_stringer

#------- Spawns a Unicorn -------
# if (mob.natural_spawning_demon_type == 54):     spawnDemon("unicorn");
execute if score @s _ntrlSpwn.dmTp matches 54 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/unicorn

#------- Spawns a Jizhuilong -------
# if (mob.natural_spawning_demon_type == 55):     spawnDemon("jizhuilong");
execute if score @s _ntrlSpwn.dmTp matches 55 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/jizhuilong
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Sorrowful Persona -------
# if (mob.natural_spawning_demon_type == 56):     spawnDemon("sorrowful_persona");
execute if score @s _ntrlSpwn.dmTp matches 56 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/sorrowful_persona

#------- Spawns a Hateful Persona -------
# if (mob.natural_spawning_demon_type == 57):     spawnDemon("hateful_persona");
execute if score @s _ntrlSpwn.dmTp matches 57 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/hateful_persona

#------- Spawns a False Persona -------
# if (mob.natural_spawning_demon_type == 58):     spawnDemon("false_persona");
execute if score @s _ntrlSpwn.dmTp matches 58 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/false_persona

#------- Spawns a Hidden Persona -------
# if (mob.natural_spawning_demon_type == 59):     spawnDemon("hidden_persona");
execute if score @s _ntrlSpwn.dmTp matches 59 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/hidden_persona
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Leporem -------
# if (mob.natural_spawning_demon_type == 60):     spawnDemon("leporem");
execute if score @s _ntrlSpwn.dmTp matches 60 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/leporem

#------- Spawns a Vanitas -------
# if (mob.natural_spawning_demon_type == 61):     spawnDemon("vanitas");
execute if score @s _ntrlSpwn.dmTp matches 61 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/vanitas

#------- Spawns a Amor Falsa -------
# if (mob.natural_spawning_demon_type == 62):     spawnDemon("amor_falsa");
execute if score @s _ntrlSpwn.dmTp matches 62 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/amor_falsa

#------- Spawns a Lacrima Falsa -------
# if (mob.natural_spawning_demon_type == 63):     spawnDemon("lacrima_falsa");
execute if score @s _ntrlSpwn.dmTp matches 63 run function blue_reflection_demons:spawning/blue_reflection_tie_demons/lacrima_falsa
#----------------------------------------------------------------------------
#**********************************************************************************************************************


#------- After spawning the Blue Reflection Demon, kills the Minecraft vanilla mob -------
# kill (mob);
tp @s ~ ~-1000 ~
kill @s
