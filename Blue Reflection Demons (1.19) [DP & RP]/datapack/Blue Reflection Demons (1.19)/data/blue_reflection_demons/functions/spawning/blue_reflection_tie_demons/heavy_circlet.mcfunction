#******************* Spawning --> Blue Reflection Tie Demons --> Heavy Circlet *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Heavy Circlet -------
# armor_stand.tags.Add("heavy_circlet");
# zombie.tags.Add("heavy_circlet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_circlet
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_circlet

#------- Sets the name for the base mob -------
# zombie.name = "Heavy Circlet";
execute as @e[type=zombie, tag=heavy_circlet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Circlet", "color": "#36B01E"}'}
