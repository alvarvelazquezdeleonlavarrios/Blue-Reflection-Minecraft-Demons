#******************* Spawning --> Blue Reflection Demons --> Crystalline Astonish *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Crystalline Astonish -------
# armor_stand.tags.Add("crystalline_astonish");
# zombie.tags.Add("crystalline_astonish");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add crystalline_astonish
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add crystalline_astonish

#------- Sets the name for the base mob -------
# zombie.name = "Crystalline Astonish";
execute as @e[type=zombie, tag=crystalline_astonish, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Crystalline Astonish", "color": "#19B2FF"}'}
