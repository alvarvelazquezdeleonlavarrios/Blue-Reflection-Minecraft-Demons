#******************* Spawning --> Common Leuk *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Common Leuk -------
# armor_stand.tags.Add("common_leuk");
# zombie.tags.Add("common_leuk");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add common_leuk
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add common_leuk

#------- Sets the name for the base mob -------
# zombie.name = "Common Leuk";
execute as @e[type=zombie, tag=common_leuk, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Common Leuk", "color": "#19B2FF"}'}
