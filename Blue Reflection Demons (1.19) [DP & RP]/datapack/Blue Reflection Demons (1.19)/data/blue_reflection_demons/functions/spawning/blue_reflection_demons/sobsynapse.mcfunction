#******************* Spawning --> Blue Reflection Demons --> Sobsynapse *******************


#------- Adds a new tag, indicating the armor stand and mob are a Sobsynapse -------
# armor_stand.tags.Add("sobsynapse");
# mob.tags.Add("sobsynapse");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sobsynapse
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sobsynapse

#------- Sets the name for the base mob -------
# mob.name = "Sobsynapse";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=sobsynapse, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Sobsynapse", "color": "#19B2FF"}'}
