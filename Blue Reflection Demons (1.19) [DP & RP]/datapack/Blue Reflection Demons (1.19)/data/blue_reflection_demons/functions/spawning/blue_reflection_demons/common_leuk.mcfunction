#******************* Spawning --> Blue Reflection Demons --> Common Leuk *******************


#------- Adds a new tag, indicating the armor stand and mob are a Common Leuk -------
# armor_stand.tags.Add("common_leuk");
# mob.tags.Add("common_leuk");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add common_leuk
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add common_leuk

#------- Sets the name for the base mob -------
# mob.name = "Common Leuk";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=common_leuk, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Common Leuk", "color": "#19B2FF"}'}
