#******************* Spawning --> Blue Reflection Tie Demons --> Lacrima Falsa *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Lacrima Falsa -------
# armor_stand.tags.Add("lacrima_falsa");
# zombie.tags.Add("lacrima_falsa");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add lacrima_falsa
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add lacrima_falsa

#------- Sets the name for the base mob -------
# zombie.name = "Lacrima Falsa";
execute as @e[type=zombie, tag=lacrima_falsa, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Lacrima Falsa", "color": "#36B01E"}'}
