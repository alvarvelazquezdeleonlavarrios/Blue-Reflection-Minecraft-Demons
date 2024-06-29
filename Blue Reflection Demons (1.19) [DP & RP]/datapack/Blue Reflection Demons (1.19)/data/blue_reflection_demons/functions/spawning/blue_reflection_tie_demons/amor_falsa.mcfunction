#******************* Spawning --> Blue Reflection Tie Demons --> Amor Falsa *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Amor Falsa -------
# armor_stand.tags.Add("amor_falsa");
# zombie.tags.Add("amor_falsa");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add amor_falsa
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add amor_falsa

#------- Sets the name for the base mob -------
# zombie.name = "Amor Falsa";
execute as @e[type=zombie, tag=amor_falsa, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Amor Falsa", "color": "#36B01E"}'}
