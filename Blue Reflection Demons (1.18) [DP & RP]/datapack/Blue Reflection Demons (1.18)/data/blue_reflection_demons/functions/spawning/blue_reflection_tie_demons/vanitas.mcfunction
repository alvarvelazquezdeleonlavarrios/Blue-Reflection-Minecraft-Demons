#******************* Spawning --> Blue Reflection Tie Demons --> Vanitas *******************


#------- Adds a new tag, indicating the armor stand and mob are a Vanitas -------
# armor_stand.tags.Add("vanitas");
# mob.tags.Add("vanitas");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add vanitas
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add vanitas

#------- Sets the name for the base mob -------
# mob.name = "Vanitas";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=vanitas, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Vanitas", "color": "#36B01E"}'}
