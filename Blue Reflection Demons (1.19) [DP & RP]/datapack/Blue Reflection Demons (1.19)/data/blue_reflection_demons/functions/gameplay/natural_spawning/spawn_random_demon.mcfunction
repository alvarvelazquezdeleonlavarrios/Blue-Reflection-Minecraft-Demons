#******************* Gameplay --> Natural Spawning --> Spawn Random Demon *******************


#*************************************** Random Value ***************************************
#------- Adds this hostile mob a variable to calculate its chance of being one of the Blue Reflection demons. -------
# mob.AddVariable( natural_spawning_demon_type, -1 );
scoreboard players set @s _natural_spawning.demon_type -1

#------- Defines this mob the chance for setting an infernal mob variant or not. -------
# mob.natural_spawning_demon_type = Random.Range(0,39);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_demon"]}
execute store result score @s _natural_spawning.demon_type run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_demon, limit=1] UUID[0] 1
scoreboard players operation @s _natural_spawning.demon_type %= $Constants _const.40
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_demon, limit=1, sort=nearest]
#*********************************************************************************************


#------- First generates the base 3D model (armor stand) and the base mob (zombie) for the random demon. -------
# generate_base_entities();
function blue_reflection_demons:spawning/settings/generate_base_entities


#***************************************** Blue Reflection (2017) Demons List *****************************************
#----------------------------------------------------------------------------
#------- Spawns a Calm Erythro -------
# if (mob.natural_spawning_demon_type == 0):     spawnDemon("calm_erythro");
execute if score @s _natural_spawning.demon_type matches 0 run function blue_reflection_demons:spawning/blue_reflection_demons/calm_erythro

#------- Spawns a Rage Erythro -------
# if (mob.natural_spawning_demon_type == 1):     spawnDemon("rage_erythro");
execute if score @s _natural_spawning.demon_type matches 1 run function blue_reflection_demons:spawning/blue_reflection_demons/rage_erythro

#------- Spawns a Joy Erythro -------
# if (mob.natural_spawning_demon_type == 2):     spawnDemon("joy_erythro");
execute if score @s _natural_spawning.demon_type matches 2 run function blue_reflection_demons:spawning/blue_reflection_demons/joy_erythro

#------- Spawns a Despair Erythro -------
# if (mob.natural_spawning_demon_type == 3):     spawnDemon("despair_erythro");
execute if score @s _natural_spawning.demon_type matches 3 run function blue_reflection_demons:spawning/blue_reflection_demons/despair_erythro
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Common Leuk -------
# if (mob.natural_spawning_demon_type == 4):     spawnDemon("common_leuk");
execute if score @s _natural_spawning.demon_type matches 4 run function blue_reflection_demons:spawning/blue_reflection_demons/common_leuk

#------- Spawns a Colonel Leuk -------
# if (mob.natural_spawning_demon_type == 5):     spawnDemon("colonel_leuk");
execute if score @s _natural_spawning.demon_type matches 5 run function blue_reflection_demons:spawning/blue_reflection_demons/colonel_leuk

#------- Spawns a Leuk Leader -------
# if (mob.natural_spawning_demon_type == 6):     spawnDemon("leuk_leader");
execute if score @s _natural_spawning.demon_type matches 6 run function blue_reflection_demons:spawning/blue_reflection_demons/leuk_leader

#------- Spawns a Berserk Leuk Knight -------
# if (mob.natural_spawning_demon_type == 7):     spawnDemon("berserk_leuk_knight");
execute if score @s _natural_spawning.demon_type matches 7 run function blue_reflection_demons:spawning/blue_reflection_demons/berserk_leuk_knight
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Acceptor -------
# if (mob.natural_spawning_demon_type == 8):     spawnDemon("acceptor");
execute if score @s _natural_spawning.demon_type matches 8 run function blue_reflection_demons:spawning/blue_reflection_demons/acceptor

#------- Spawns an Admirator -------
# if (mob.natural_spawning_demon_type == 9):     spawnDemon("admirator");
execute if score @s _natural_spawning.demon_type matches 9 run function blue_reflection_demons:spawning/blue_reflection_demons/admirator

#------- Spawns a Truster -------
# if (mob.natural_spawning_demon_type == 10):     spawnDemon("truster");
execute if score @s _natural_spawning.demon_type matches 10 run function blue_reflection_demons:spawning/blue_reflection_demons/truster

#------- Spawns an Envy Fanatic -------
# if (mob.natural_spawning_demon_type == 11):     spawnDemon("envy_fanatic");
execute if score @s _natural_spawning.demon_type matches 11 run function blue_reflection_demons:spawning/blue_reflection_demons/envy_fanatic
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Violetwing Tineresy -------
# if (mob.natural_spawning_demon_type == 12):     spawnDemon("violetwing_tineresy");
execute if score @s _natural_spawning.demon_type matches 12 run function blue_reflection_demons:spawning/blue_reflection_demons/violetwing_tineresy

#------- Spawns a Brightwing Setcasy -------
# if (mob.natural_spawning_demon_type == 13):     spawnDemon("brightwing_setcasy");
execute if score @s _natural_spawning.demon_type matches 13 run function blue_reflection_demons:spawning/blue_reflection_demons/brightwing_setcasy

#------- Spawns a Darkwing Oji -------
# if (mob.natural_spawning_demon_type == 14):     spawnDemon("darkwing_oji");
execute if score @s _natural_spawning.demon_type matches 14 run function blue_reflection_demons:spawning/blue_reflection_demons/darkwing_oji

#------- Spawns a Corruptwing Redrosid -------
# if (mob.natural_spawning_demon_type == 15):     spawnDemon("corruptwing_redrosid");
execute if score @s _natural_spawning.demon_type matches 15 run function blue_reflection_demons:spawning/blue_reflection_demons/corruptwing_redrosid
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Boredom Skull -------
# if (mob.natural_spawning_demon_type == 16):     spawnDemon("boredom_skull");
execute if score @s _natural_spawning.demon_type matches 16 run function blue_reflection_demons:spawning/blue_reflection_demons/boredom_skull

#------- Spawns a Loathing Skeleton -------
# if (mob.natural_spawning_demon_type == 17):     spawnDemon("loathing_skeleton");
execute if score @s _natural_spawning.demon_type matches 17 run function blue_reflection_demons:spawning/blue_reflection_demons/loathing_skeleton

#------- Spawns a Disgust Cranium -------
# if (mob.natural_spawning_demon_type == 18):     spawnDemon("disgust_cranium");
execute if score @s _natural_spawning.demon_type matches 18 run function blue_reflection_demons:spawning/blue_reflection_demons/disgust_cranium

#------- Spawns an Apathy Bones -------
# if (mob.natural_spawning_demon_type == 19):     spawnDemon("apathy_bones");
execute if score @s _natural_spawning.demon_type matches 19 run function blue_reflection_demons:spawning/blue_reflection_demons/apathy_bones
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Cryhorn -------
# if (mob.natural_spawning_demon_type == 20):     spawnDemon("cryhorn");
execute if score @s _natural_spawning.demon_type matches 20 run function blue_reflection_demons:spawning/blue_reflection_demons/cryhorn

#------- Spawns a Wailbranch -------
# if (mob.natural_spawning_demon_type == 21):     spawnDemon("wailbranch");
execute if score @s _natural_spawning.demon_type matches 21 run function blue_reflection_demons:spawning/blue_reflection_demons/wailbranch

#------- Spawns a Tearbane -------
# if (mob.natural_spawning_demon_type == 22):     spawnDemon("tearbane");
execute if score @s _natural_spawning.demon_type matches 22 run function blue_reflection_demons:spawning/blue_reflection_demons/tearbane

#------- Spawns a Sobsynapse -------
# if (mob.natural_spawning_demon_type == 23):     spawnDemon("sobsynapse");
execute if score @s _natural_spawning.demon_type matches 23 run function blue_reflection_demons:spawning/blue_reflection_demons/sobsynapse
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Anoia Tapir -------
# if (mob.natural_spawning_demon_type == 24):     spawnDemon("anoia_tapir");
execute if score @s _natural_spawning.demon_type matches 24 run function blue_reflection_demons:spawning/blue_reflection_demons/anoia_tapir

#------- Spawns a Rage Tapiridae -------
# if (mob.natural_spawning_demon_type == 25):     spawnDemon("rage_tapiridae");
execute if score @s _natural_spawning.demon_type matches 25 run function blue_reflection_demons:spawning/blue_reflection_demons/rage_tapiridae

#------- Spawns an Anger Tapirus -------
# if (mob.natural_spawning_demon_type == 26):     spawnDemon("anger_tapirus");
execute if score @s _natural_spawning.demon_type matches 26 run function blue_reflection_demons:spawning/blue_reflection_demons/anger_tapirus

#------- Spawns a Murderous Predator -------
# if (mob.natural_spawning_demon_type == 27):     spawnDemon("murderous_predator");
execute if score @s _natural_spawning.demon_type matches 27 run function blue_reflection_demons:spawning/blue_reflection_demons/murderous_predator
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Assassin Interest -------
# if (mob.natural_spawning_demon_type == 28):     spawnDemon("assassin_interest");
execute if score @s _natural_spawning.demon_type matches 28 run function blue_reflection_demons:spawning/blue_reflection_demons/assassin_interest

#------- Spawns a Slaughterer Vigilance -------
# if (mob.natural_spawning_demon_type == 29):     spawnDemon("slaughterer_vigilance");
execute if score @s _natural_spawning.demon_type matches 29 run function blue_reflection_demons:spawning/blue_reflection_demons/slaughterer_vigilance

#------- Spawns an Executioner Ex-Pect -------
# if (mob.natural_spawning_demon_type == 30):     spawnDemon("executioner_ex_pect");
execute if score @s _natural_spawning.demon_type matches 30 run function blue_reflection_demons:spawning/blue_reflection_demons/executioner_ex_pect

#------- Spawns a Reaper Oppose -------
# if (mob.natural_spawning_demon_type == 31):     spawnDemon("reaper_oppose");
execute if score @s _natural_spawning.demon_type matches 31 run function blue_reflection_demons:spawning/blue_reflection_demons/reaper_oppose
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Sculpture Distract -------
# if (mob.natural_spawning_demon_type == 32):     spawnDemon("sculpture_distract");
execute if score @s _natural_spawning.demon_type matches 32 run function blue_reflection_demons:spawning/blue_reflection_demons/sculpture_distract

#------- Spawns a Crystalline Astonish -------
# if (mob.natural_spawning_demon_type == 33):     spawnDemon("crystalline_astonish");
execute if score @s _natural_spawning.demon_type matches 33 run function blue_reflection_demons:spawning/blue_reflection_demons/crystalline_astonish

#------- Spawns an Ironclad Surprise -------
# if (mob.natural_spawning_demon_type == 34):     spawnDemon("ironclad_surprise");
execute if score @s _natural_spawning.demon_type matches 34 run function blue_reflection_demons:spawning/blue_reflection_demons/ironclad_surprise

#------- Spawns a Guardian Amazement -------
# if (mob.natural_spawning_demon_type == 35):     spawnDemon("guardian_amazement");
execute if score @s _natural_spawning.demon_type matches 35 run function blue_reflection_demons:spawning/blue_reflection_demons/guardian_amazement
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Anxiety Coffin -------
# if (mob.natural_spawning_demon_type == 36):     spawnDemon("anxiety_coffin");
execute if score @s _natural_spawning.demon_type matches 36 run function blue_reflection_demons:spawning/blue_reflection_demons/anxiety_coffin

#------- Spawns a Terror Entombed -------
# if (mob.natural_spawning_demon_type == 37):     spawnDemon("terror_entombed");
execute if score @s _natural_spawning.demon_type matches 37 run function blue_reflection_demons:spawning/blue_reflection_demons/terror_entombed

#------- Spawns a Fear Casket -------
# if (mob.natural_spawning_demon_type == 38):     spawnDemon("fear_casket");
execute if score @s _natural_spawning.demon_type matches 38 run function blue_reflection_demons:spawning/blue_reflection_demons/fear_casket

#------- Spawns a Nightmare Graver -------
# if (mob.natural_spawning_demon_type == 39):     spawnDemon("nightmare_graver");
execute if score @s _natural_spawning.demon_type matches 39 run function blue_reflection_demons:spawning/blue_reflection_demons/nightmare_graver
#----------------------------------------------------------------------------
#**********************************************************************************************************************


#------- After spawning the Blue Reflection Demon, kills the Minecraft vanilla mob -------
# kill (mob);
tp @s ~ ~-1000 ~
kill @s
