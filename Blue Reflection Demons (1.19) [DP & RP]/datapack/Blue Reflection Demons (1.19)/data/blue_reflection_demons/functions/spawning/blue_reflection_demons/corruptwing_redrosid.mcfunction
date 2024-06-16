#******************* Spawning --> Blue Reflection Demons --> Corruptwing Redrosid *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Corruptwing Redrosid -------
# armor_stand.tags.Add("corruptwing_redrosid");
# zombie.tags.Add("corruptwing_redrosid");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add corruptwing_redrosid
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add corruptwing_redrosid

#------- Sets the name for the base mob -------
# zombie.name = "Corruptwing Redrosid";
execute as @e[type=zombie, tag=corruptwing_redrosid, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Corruptwing Redrosid", "color": "#19B2FF"}'}
