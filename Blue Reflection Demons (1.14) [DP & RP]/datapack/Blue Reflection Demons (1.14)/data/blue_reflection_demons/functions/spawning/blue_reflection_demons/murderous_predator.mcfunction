#******************* Spawning --> Blue Reflection Demons --> Murderous Predator *******************


#------- Adds a new tag, indicating the armor stand and mob are a Murderous Predator -------
# armor_stand.tags.Add("murderous_predator");
# mob.tags.Add("murderous_predator");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add murderous_predator
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add murderous_predator

#------- Sets the name for the base mob -------
# mob.name = "Murderous Predator";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=murderous_predator, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Murderous Predator", "color": "#19B2FF"}'}
