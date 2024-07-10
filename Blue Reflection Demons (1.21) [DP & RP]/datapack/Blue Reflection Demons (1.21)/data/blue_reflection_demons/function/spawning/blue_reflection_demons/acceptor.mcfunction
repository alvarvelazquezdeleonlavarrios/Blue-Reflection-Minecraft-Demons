#******************* Spawning --> Blue Reflection Demons --> Acceptor *******************


#------- Adds a new tag, indicating the armor stand and mob are a Acceptor -------
# armor_stand.tags.Add("acceptor");
# mob.tags.Add("acceptor");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add acceptor
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add acceptor

#------- Sets the name for the base mob -------
# mob.name = "Acceptor";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=acceptor, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Acceptor", "color": "#19B2FF"}'}
