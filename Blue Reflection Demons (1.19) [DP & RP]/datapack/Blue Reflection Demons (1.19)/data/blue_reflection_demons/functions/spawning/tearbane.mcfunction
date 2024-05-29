#******************* Spawning --> Tearbane *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Tearbane -------
# armor_stand.tags.Add("tearbane");
# zombie.tags.Add("tearbane");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add tearbane
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add tearbane

#------- Sets the name for the base mob -------
# zombie.name = "Tearbane";
execute as @e[type=zombie, tag=tearbane, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Tearbane", "color": "#19B2FF"}'}
