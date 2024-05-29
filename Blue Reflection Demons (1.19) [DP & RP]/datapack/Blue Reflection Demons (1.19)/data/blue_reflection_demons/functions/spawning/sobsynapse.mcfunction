#******************* Spawning --> Sobsynapse *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Sobsynapse -------
# armor_stand.tags.Add("sobsynapse");
# zombie.tags.Add("sobsynapse");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sobsynapse
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sobsynapse

#------- Sets the name for the base mob -------
# zombie.name = "Sobsynapse";
execute as @e[type=zombie, tag=sobsynapse, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Sobsynapse", "color": "#19B2FF"}'}
