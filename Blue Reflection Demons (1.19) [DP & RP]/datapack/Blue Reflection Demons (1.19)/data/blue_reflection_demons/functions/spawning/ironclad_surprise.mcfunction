#******************* Spawning --> Ironclad Surprise *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Ironclad Surprise -------
# armor_stand.tags.Add("ironclad_surprise");
# zombie.tags.Add("ironclad_surprise");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add ironclad_surprise
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add ironclad_surprise

#------- Sets the name for the base mob -------
# zombie.name = "Ironclad Surprise";
execute as @e[type=zombie, tag=ironclad_surprise, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Ironclad Surprise", "color": "#19B2FF"}'}
