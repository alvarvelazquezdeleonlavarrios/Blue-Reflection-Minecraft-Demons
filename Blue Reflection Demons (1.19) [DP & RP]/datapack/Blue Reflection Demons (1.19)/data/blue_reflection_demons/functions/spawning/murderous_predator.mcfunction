#******************* Spawning --> Murderous Predator *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Murderous Predator -------
# armor_stand.tags.Add("murderous_predator");
# zombie.tags.Add("murderous_predator");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add murderous_predator
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add murderous_predator

#------- Sets the name for the base mob -------
# zombie.name = "Murderous Predator";
execute as @e[type=zombie, tag=murderous_predator, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Murderous Predator", "color": "#19B2FF"}'}
