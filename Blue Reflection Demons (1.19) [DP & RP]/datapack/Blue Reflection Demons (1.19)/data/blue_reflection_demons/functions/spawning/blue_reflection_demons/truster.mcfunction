#******************* Spawning --> Blue Reflection Demons --> Truster *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Truster -------
# armor_stand.tags.Add("truster");
# zombie.tags.Add("truster");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add truster
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add truster

#------- Sets the name for the base mob -------
# zombie.name = "Truster";
execute as @e[type=zombie, tag=truster, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Truster", "color": "#19B2FF"}'}
