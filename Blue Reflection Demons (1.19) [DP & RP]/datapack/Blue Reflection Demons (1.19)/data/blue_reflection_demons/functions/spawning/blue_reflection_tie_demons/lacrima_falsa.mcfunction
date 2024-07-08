#******************* Spawning --> Blue Reflection Tie Demons --> Lacrima Falsa *******************


#------- Adds a new tag, indicating the armor stand and mob are a Lacrima Falsa -------
# armor_stand.tags.Add("lacrima_falsa");
# mob.tags.Add("lacrima_falsa");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add lacrima_falsa
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add lacrima_falsa

#------- Sets the name for the base mob -------
# mob.name = "Lacrima Falsa";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=lacrima_falsa, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Lacrima Falsa", "color": "#36B01E"}'}
