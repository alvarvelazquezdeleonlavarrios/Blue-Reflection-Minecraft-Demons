#******************* Spawning --> Blue Reflection Tie Demons --> Vanitas *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Vanitas -------
# armor_stand.tags.Add("vanitas");
# zombie.tags.Add("vanitas");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add vanitas
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add vanitas

#------- Sets the name for the base mob -------
# zombie.name = "Vanitas";
execute as @e[type=zombie, tag=vanitas, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Vanitas", "color": "#36B01E"}'}
