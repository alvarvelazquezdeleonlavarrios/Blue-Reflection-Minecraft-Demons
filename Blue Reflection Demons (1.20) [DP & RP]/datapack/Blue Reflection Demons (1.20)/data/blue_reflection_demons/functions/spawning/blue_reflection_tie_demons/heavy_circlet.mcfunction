#******************* Spawning --> Blue Reflection Tie Demons --> Heavy Circlet *******************


#------- Adds a new tag, indicating the armor stand and mob are a Heavy Circlet -------
# armor_stand.tags.Add("heavy_circlet");
# mob.tags.Add("heavy_circlet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_circlet
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_circlet

#------- Sets the name for the base mob -------
# mob.name = "Heavy Circlet";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=heavy_circlet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Circlet", "color": "#36B01E"}'}
