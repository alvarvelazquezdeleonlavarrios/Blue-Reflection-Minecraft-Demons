#******************* Spawning --> Blue Reflection Demons --> Ironclad Surprise *******************


#------- Adds a new tag, indicating the armor stand and mob are a Ironclad Surprise -------
# armor_stand.tags.Add("ironclad_surprise");
# mob.tags.Add("ironclad_surprise");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add ironclad_surprise
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add ironclad_surprise

#------- Sets the name for the base mob -------
# mob.name = "Ironclad Surprise";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=ironclad_surprise, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Ironclad Surprise", "color": "#19B2FF"}'}
