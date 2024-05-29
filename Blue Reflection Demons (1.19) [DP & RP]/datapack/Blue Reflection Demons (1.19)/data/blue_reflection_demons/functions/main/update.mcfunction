#******************* Main --> Update *******************


#********************************* Natural Spawning System *********************************
#------- The natural spawning system checks every second for replacing every Minecraft hostile mob with a random Blue Reflection Demon. Decreases the timer. -------
# if (GameManager.natural_spawning_current_wait <= 0):
#   naturalSpawningScan();
# GameManager.natural_spawning_current_wait--;
execute if score $GameManager _natural_spawning.current_wait_time matches ..0 run function blue_reflection_demons:gameplay/natural_spawning/scanner
scoreboard players remove $GameManager _natural_spawning.current_wait_time 1
#*******************************************************************************************


#********************************* Demons' Physical Attributes *********************************
#------- Makes the base mob (zombie) always invisible, resistant to the sun light and avoids to transform into a drowned -------
# demon.updatePhysicalStatus();
execute if entity @e[type=zombie, tag=blue_reflection_demon] as @e[type=zombie, tag=blue_reflection_demon] run data merge entity @s {Fire:-1s, ActiveEffects:[{Id:14, Amplifier:1b, Duration:20, ShowParticles:0b}], InWaterTime:-20}
#***********************************************************************************************


#********************************* Demons' 3D Models *********************************
#------- Updates the demons 3D model (armor stand) according to the base mob position -------
# demon.update3DModel();
execute if entity @e[type=zombie, tag=blue_reflection_demon] as @e[type=zombie, tag=blue_reflection_demon] at @s run function blue_reflection_demons:gameplay/3d_models/update

#------- Deletes the 3D models from killed demons -------
# if (armor_stand.demon == null):
#   armor_stand.delete();
execute if entity @e[type=armor_stand, tag=blue_reflection_demon] as @e[type=armor_stand, tag=blue_reflection_demon] at @s run function blue_reflection_demons:gameplay/3d_models/delete_from_killed_demon
#**************************************************************************************
