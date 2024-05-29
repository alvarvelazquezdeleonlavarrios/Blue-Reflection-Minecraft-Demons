#******************* Gameplay --> Natural Spawning --> Spawn Random Demon *******************


#*************************************** Random Value ***************************************
#------- Adds this hostile mob a variable to calculate its chance of being one of the Blue Reflection demons. -------
# mob.AddVariable( natural_spawning_demon_type, -1 );
scoreboard players set @s _natural_spawning.demon_type -1

#------- Defines this mob the chance for setting an infernal mob variant or not. -------
# mob.natural_spawning_demon_type = Random.Range(0,63);
summon area_effect_cloud ~ ~ ~ {Tags:["random_uuid","random_demon"]}
execute store result score @s _natural_spawning.demon_type run data get entity @e[type=area_effect_cloud, tag=random_uuid, tag=random_demon, limit=1] UUID[0] 1
scoreboard players operation @s _natural_spawning.demon_type %= $Constants _const.64
kill @e[type=area_effect_cloud, tag=random_uuid, tag=random_demon, limit=1, sort=nearest]
#*********************************************************************************************


#*************************************** Demons List ***************************************
#------- First generates the base 3D model (armor stand) and the base mob (zombie) for the random demon. -------
# generate_base_entities();
function blue_reflection_demons:spawning/settings/generate_base_entities


#----------------------------------------------------------------------------
#------- Spawns a Calm Erythro -------
# if (mob.natural_spawning_demon_type == 0):     spawnDemon("calm_erythro") );
execute if score @s _natural_spawning.demon_type matches 0 run function blue_reflection_demons:spawning/calm_erythro

#------- Spawns a Rage Erythro -------
# if (mob.natural_spawning_demon_type == 1):     spawnDemon("rage_erythro") );
execute if score @s _natural_spawning.demon_type matches 1 run function blue_reflection_demons:spawning/rage_erythro

#------- Spawns a Joy Erythro -------
# if (mob.natural_spawning_demon_type == 2):     spawnDemon("joy_erythro") );
execute if score @s _natural_spawning.demon_type matches 2 run function blue_reflection_demons:spawning/joy_erythro

#------- Spawns a Despair Erythro -------
# if (mob.natural_spawning_demon_type == 3):     spawnDemon("despair_erythro") );
execute if score @s _natural_spawning.demon_type matches 3 run function blue_reflection_demons:spawning/despair_erythro
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Common Leuk -------
# if (mob.natural_spawning_demon_type == 4):     spawnDemon("common_leuk") );
execute if score @s _natural_spawning.demon_type matches 4 run function blue_reflection_demons:spawning/common_leuk

#------- Spawns a Colonel Leuk -------
# if (mob.natural_spawning_demon_type == 5):     spawnDemon("colonel_leuk") );
execute if score @s _natural_spawning.demon_type matches 5 run function blue_reflection_demons:spawning/colonel_leuk

#------- Spawns a Leuk Leader -------
# if (mob.natural_spawning_demon_type == 6):     spawnDemon("leuk_leader") );
execute if score @s _natural_spawning.demon_type matches 6 run function blue_reflection_demons:spawning/leuk_leader

#------- Spawns a Berserk Leuk Knight -------
# if (mob.natural_spawning_demon_type == 7):     spawnDemon("berserk_leuk_knight") );
execute if score @s _natural_spawning.demon_type matches 7 run function blue_reflection_demons:spawning/berserk_leuk_knight
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Acceptor -------
# if (mob.natural_spawning_demon_type == 8):     spawnDemon("acceptor") );
execute if score @s _natural_spawning.demon_type matches 8 run function blue_reflection_demons:spawning/acceptor

#------- Spawns an Admirator -------
# if (mob.natural_spawning_demon_type == 9):     spawnDemon("admirator") );
execute if score @s _natural_spawning.demon_type matches 9 run function blue_reflection_demons:spawning/admirator

#------- Spawns a Truster -------
# if (mob.natural_spawning_demon_type == 10):     spawnDemon("truster") );
execute if score @s _natural_spawning.demon_type matches 10 run function blue_reflection_demons:spawning/truster

#------- Spawns an Envy Fanatic -------
# if (mob.natural_spawning_demon_type == 11):     spawnDemon("envy_fanatic") );
execute if score @s _natural_spawning.demon_type matches 11 run function blue_reflection_demons:spawning/envy_fanatic
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Boredom Skull -------
# if (mob.natural_spawning_demon_type == 12):     spawnDemon("boredom_skull") );
execute if score @s _natural_spawning.demon_type matches 12 run function blue_reflection_demons:spawning/boredom_skull

#------- Spawns a Loathing Skeleton -------
# if (mob.natural_spawning_demon_type == 13):     spawnDemon("loathing_skeleton") );
execute if score @s _natural_spawning.demon_type matches 13 run function blue_reflection_demons:spawning/loathing_skeleton

#------- Spawns a Disgust Cranium -------
# if (mob.natural_spawning_demon_type == 14):     spawnDemon("disgust_cranium") );
execute if score @s _natural_spawning.demon_type matches 14 run function blue_reflection_demons:spawning/disgust_cranium

#------- Spawns an Apathy Bones -------
# if (mob.natural_spawning_demon_type == 15):     spawnDemon("apathy_bones") );
execute if score @s _natural_spawning.demon_type matches 15 run function blue_reflection_demons:spawning/apathy_bones
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Anoia Tapir -------
# if (mob.natural_spawning_demon_type == 16):     spawnDemon("anoia_tapir") );
execute if score @s _natural_spawning.demon_type matches 16 run function blue_reflection_demons:spawning/anoia_tapir

#------- Spawns a Rage Tapiridae -------
# if (mob.natural_spawning_demon_type == 17):     spawnDemon("rage_tapiridae") );
execute if score @s _natural_spawning.demon_type matches 17 run function blue_reflection_demons:spawning/rage_tapiridae

#------- Spawns an Anger Tapirus -------
# if (mob.natural_spawning_demon_type == 18):     spawnDemon("anger_tapirus") );
execute if score @s _natural_spawning.demon_type matches 18 run function blue_reflection_demons:spawning/anger_tapirus

#------- Spawns a Murderous Predator -------
# if (mob.natural_spawning_demon_type == 19):     spawnDemon("murderous_predator") );
execute if score @s _natural_spawning.demon_type matches 19 run function blue_reflection_demons:spawning/murderous_predator
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Mud Bear -------
# if (mob.natural_spawning_demon_type == 20):     spawnDemon("mud_bear") );
execute if score @s _natural_spawning.demon_type matches 20 run function blue_reflection_demons:spawning/mud_bear

#------- Spawns a Heavy Mud Bear -------
# if (mob.natural_spawning_demon_type == 21):     spawnDemon("heavy_mud_bear") );
execute if score @s _natural_spawning.demon_type matches 21 run function blue_reflection_demons:spawning/heavy_mud_bear
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Violetwing Tineresy -------
# if (mob.natural_spawning_demon_type == 22):     spawnDemon("violetwing_tineresy") );
execute if score @s _natural_spawning.demon_type matches 22 run function blue_reflection_demons:spawning/violetwing_tineresy

#------- Spawns a Brightwing Setcasy -------
# if (mob.natural_spawning_demon_type == 23):     spawnDemon("brightwing_setcasy") );
execute if score @s _natural_spawning.demon_type matches 23 run function blue_reflection_demons:spawning/brightwing_setcasy

#------- Spawns a Darkwing Oji -------
# if (mob.natural_spawning_demon_type == 24):     spawnDemon("darkwing_oji") );
execute if score @s _natural_spawning.demon_type matches 24 run function blue_reflection_demons:spawning/darkwing_oji

#------- Spawns a Corruptwing Redrosid -------
# if (mob.natural_spawning_demon_type == 25):     spawnDemon("corruptwing_redrosid") );
execute if score @s _natural_spawning.demon_type matches 25 run function blue_reflection_demons:spawning/corruptwing_redrosid
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Sculpture Distract -------
# if (mob.natural_spawning_demon_type == 26):     spawnDemon("sculpture_distract") );
execute if score @s _natural_spawning.demon_type matches 26 run function blue_reflection_demons:spawning/sculpture_distract

#------- Spawns a Crystalline Astonish -------
# if (mob.natural_spawning_demon_type == 27):     spawnDemon("crystalline_astonish") );
execute if score @s _natural_spawning.demon_type matches 27 run function blue_reflection_demons:spawning/crystalline_astonish

#------- Spawns an Ironclad Surprise -------
# if (mob.natural_spawning_demon_type == 28):     spawnDemon("ironclad_surprise") );
execute if score @s _natural_spawning.demon_type matches 28 run function blue_reflection_demons:spawning/ironclad_surprise

#------- Spawns a Guardian Amazement -------
# if (mob.natural_spawning_demon_type == 29):     spawnDemon("guardian_amazement") );
execute if score @s _natural_spawning.demon_type matches 29 run function blue_reflection_demons:spawning/guardian_amazement
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Cryhorn -------
# if (mob.natural_spawning_demon_type == 30):     spawnDemon("cryhorn") );
execute if score @s _natural_spawning.demon_type matches 30 run function blue_reflection_demons:spawning/cryhorn

#------- Spawns a Wailbranch -------
# if (mob.natural_spawning_demon_type == 31):     spawnDemon("wailbranch") );
execute if score @s _natural_spawning.demon_type matches 31 run function blue_reflection_demons:spawning/wailbranch

#------- Spawns a Tearbane -------
# if (mob.natural_spawning_demon_type == 32):     spawnDemon("tearbane") );
execute if score @s _natural_spawning.demon_type matches 32 run function blue_reflection_demons:spawning/tearbane

#------- Spawns a Sobsynapse -------
# if (mob.natural_spawning_demon_type == 33):     spawnDemon("sobsynapse") );
execute if score @s _natural_spawning.demon_type matches 33 run function blue_reflection_demons:spawning/sobsynapse
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Assassin Interest -------
# if (mob.natural_spawning_demon_type == 34):     spawnDemon("assassin_interest") );
execute if score @s _natural_spawning.demon_type matches 34 run function blue_reflection_demons:spawning/assassin_interest

#------- Spawns a Slaughterer Vigilance -------
# if (mob.natural_spawning_demon_type == 35):     spawnDemon("slaughterer_vigilance") );
execute if score @s _natural_spawning.demon_type matches 35 run function blue_reflection_demons:spawning/slaughterer_vigilance

#------- Spawns an Executioner Ex-Pect -------
# if (mob.natural_spawning_demon_type == 36):     spawnDemon("executioner_ex_pect") );
execute if score @s _natural_spawning.demon_type matches 36 run function blue_reflection_demons:spawning/executioner_ex_pect

#------- Spawns a Reaper Oppose -------
# if (mob.natural_spawning_demon_type == 37):     spawnDemon("reaper_oppose") );
execute if score @s _natural_spawning.demon_type matches 37 run function blue_reflection_demons:spawning/reaper_oppose
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Armet -------
# if (mob.natural_spawning_demon_type == 38):     spawnDemon("armet") );
execute if score @s _natural_spawning.demon_type matches 38 run function blue_reflection_demons:spawning/armet

#------- Spawns a Heavy Armet -------
# if (mob.natural_spawning_demon_type == 39):     spawnDemon("heavy_armet") );
execute if score @s _natural_spawning.demon_type matches 39 run function blue_reflection_demons:spawning/heavy_armet
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Circlet -------
# if (mob.natural_spawning_demon_type == 40):     spawnDemon("circlet") );
execute if score @s _natural_spawning.demon_type matches 40 run function blue_reflection_demons:spawning/circlet

#------- Spawns a Heavy Circlet -------
# if (mob.natural_spawning_demon_type == 41):     spawnDemon("heavy_circlet") );
execute if score @s _natural_spawning.demon_type matches 41 run function blue_reflection_demons:spawning/heavy_circlet
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Daemon Head -------
# if (mob.natural_spawning_demon_type == 42):     spawnDemon("daemon_head") );
execute if score @s _natural_spawning.demon_type matches 42 run function blue_reflection_demons:spawning/daemon_head

#------- Spawns a Heavy Daemon Head -------
# if (mob.natural_spawning_demon_type == 43):     spawnDemon("heavy_daemon_head") );
execute if score @s _natural_spawning.demon_type matches 43 run function blue_reflection_demons:spawning/heavy_daemon_head
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Armored Specter -------
# if (mob.natural_spawning_demon_type == 44):     spawnDemon("armored_specter") );
execute if score @s _natural_spawning.demon_type matches 44 run function blue_reflection_demons:spawning/armored_specter

#------- Spawns a Mountain Bug -------
# if (mob.natural_spawning_demon_type == 45):     spawnDemon("mountain_bug") );
execute if score @s _natural_spawning.demon_type matches 45 run function blue_reflection_demons:spawning/mountain_bug

#------- Spawns an Unicorn -------
# if (mob.natural_spawning_demon_type == 46):     spawnDemon("unicorn") );
execute if score @s _natural_spawning.demon_type matches 46 run function blue_reflection_demons:spawning/unicorn

#------- Spawns a Jizhuilong -------
# if (mob.natural_spawning_demon_type == 47):     spawnDemon("jizhuilong") );
execute if score @s _natural_spawning.demon_type matches 47 run function blue_reflection_demons:spawning/jizhuilong
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Sorrowful Persona -------
# if (mob.natural_spawning_demon_type == 48):     spawnDemon("sorrowful_persona") );
execute if score @s _natural_spawning.demon_type matches 48 run function blue_reflection_demons:spawning/sorrowful_persona

#------- Spawns a Hateful Persona -------
# if (mob.natural_spawning_demon_type == 49):     spawnDemon("hateful_persona") );
execute if score @s _natural_spawning.demon_type matches 49 run function blue_reflection_demons:spawning/hateful_persona

#------- Spawns a False Persona -------
# if (mob.natural_spawning_demon_type == 50):     spawnDemon("false_persona") );
execute if score @s _natural_spawning.demon_type matches 50 run function blue_reflection_demons:spawning/false_persona

#------- Spawns a Hidden Persona -------
# if (mob.natural_spawning_demon_type == 51):     spawnDemon("hidden_persona") );
execute if score @s _natural_spawning.demon_type matches 51 run function blue_reflection_demons:spawning/hidden_persona
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Nose Bug -------
# if (mob.natural_spawning_demon_type == 52):     spawnDemon("nose_bug") );
execute if score @s _natural_spawning.demon_type matches 52 run function blue_reflection_demons:spawning/nose_bug

#------- Spawns a Heavy Nose Bug -------
# if (mob.natural_spawning_demon_type == 53):     spawnDemon("heavy_nose_bug") );
execute if score @s _natural_spawning.demon_type matches 53 run function blue_reflection_demons:spawning/heavy_nose_bug
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Leporem -------
# if (mob.natural_spawning_demon_type == 54):     spawnDemon("leporem") );
execute if score @s _natural_spawning.demon_type matches 54 run function blue_reflection_demons:spawning/leporem

#------- Spawns a Vanitas -------
# if (mob.natural_spawning_demon_type == 55):     spawnDemon("vanitas") );
execute if score @s _natural_spawning.demon_type matches 55 run function blue_reflection_demons:spawning/vanitas

#------- Spawns an Amor Falsa -------
# if (mob.natural_spawning_demon_type == 56):     spawnDemon("amor_falsa") );
execute if score @s _natural_spawning.demon_type matches 56 run function blue_reflection_demons:spawning/amor_falsa

#------- Spawns a Lacrima Falsa -------
# if (mob.natural_spawning_demon_type == 57):     spawnDemon("lacrima_falsa") );
execute if score @s _natural_spawning.demon_type matches 57 run function blue_reflection_demons:spawning/lacrima_falsa
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns an Anxiety Coffin -------
# if (mob.natural_spawning_demon_type == 58):     spawnDemon("anxiety_coffin") );
execute if score @s _natural_spawning.demon_type matches 58 run function blue_reflection_demons:spawning/anxiety_coffin

#------- Spawns a Terror Entombed -------
# if (mob.natural_spawning_demon_type == 59):     spawnDemon("terror_entombed") );
execute if score @s _natural_spawning.demon_type matches 59 run function blue_reflection_demons:spawning/terror_entombed

#------- Spawns a Fear Casket -------
# if (mob.natural_spawning_demon_type == 60):     spawnDemon("fear_casket") );
execute if score @s _natural_spawning.demon_type matches 60 run function blue_reflection_demons:spawning/fear_casket

#------- Spawns a Nightmare Graver -------
# if (mob.natural_spawning_demon_type == 61):     spawnDemon("nightmare_graver") );
execute if score @s _natural_spawning.demon_type matches 61 run function blue_reflection_demons:spawning/nightmare_graver
#----------------------------------------------------------------------------

#----------------------------------------------------------------------------
#------- Spawns a Bone Stringer -------
# if (mob.natural_spawning_demon_type == 62):     spawnDemon("bone_stringer") );
execute if score @s _natural_spawning.demon_type matches 62 run function blue_reflection_demons:spawning/bone_stringer

#------- Spawns a Petal Hood -------
# if (mob.natural_spawning_demon_type == 63):     spawnDemon("petal_hood") );
execute if score @s _natural_spawning.demon_type matches 63 run function blue_reflection_demons:spawning/petal_hood
#----------------------------------------------------------------------------
#*******************************************************************************************


#------- After spawning the Blue Reflection Demon, kills the Minecraft vanilla mob -------
# kill (mob);
tp @s ~ ~-1000 ~
kill @s
