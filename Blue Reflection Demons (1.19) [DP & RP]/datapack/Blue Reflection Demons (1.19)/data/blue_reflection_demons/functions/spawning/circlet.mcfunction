#******************* Spawning --> Circlet *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Circlet -------
# armor_stand.tags.Add("circlet");
# zombie.tags.Add("circlet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add circlet
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add circlet

#------- Sets the name for the base mob -------
# zombie.name = "Circlet";
execute as @e[type=zombie, tag=circlet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Circlet", "color": "#19B2FF"}'}
