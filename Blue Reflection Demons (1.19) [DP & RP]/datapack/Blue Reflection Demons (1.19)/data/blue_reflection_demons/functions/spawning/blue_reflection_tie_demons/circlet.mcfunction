#******************* Spawning --> Blue Reflection Tie Demons --> Circlet *******************


#------- Adds a new tag, indicating the armor stand and mob are a Circlet -------
# armor_stand.tags.Add("circlet");
# mob.tags.Add("circlet");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add circlet
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add circlet

#------- Sets the name for the base mob -------
# mob.name = "Circlet";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=circlet, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Circlet", "color": "#36B01E"}'}
