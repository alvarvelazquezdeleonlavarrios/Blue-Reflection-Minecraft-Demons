#******************* Spawning --> Blue Reflection Demons --> Brightwing Setcasy *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Brightwing Setcasy -------
# armor_stand.tags.Add("brightwing_setcasy");
# zombie.tags.Add("brightwing_setcasy");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add brightwing_setcasy
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add brightwing_setcasy

#------- Sets the name for the base mob -------
# zombie.name = "Brightwing Setcasy";
execute as @e[type=zombie, tag=brightwing_setcasy, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Brightwing Setcasy", "color": "#19B2FF"}'}
