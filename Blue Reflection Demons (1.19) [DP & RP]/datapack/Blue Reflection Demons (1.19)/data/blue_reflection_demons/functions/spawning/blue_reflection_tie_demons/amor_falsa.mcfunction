#******************* Spawning --> Blue Reflection Tie Demons --> Amor Falsa *******************


#------- Adds a new tag, indicating the armor stand and mob are a Amor Falsa -------
# armor_stand.tags.Add("amor_falsa");
# mob.tags.Add("amor_falsa");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add amor_falsa
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add amor_falsa

#------- Sets the name for the base mob -------
# mob.name = "Amor Falsa";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=amor_falsa, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Amor Falsa", "color": "#36B01E"}'}
