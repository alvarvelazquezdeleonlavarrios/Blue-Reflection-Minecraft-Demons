#******************* Spawning --> Blue Reflection Demons --> Colonel Leuk *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Colonel Leuk -------
# armor_stand.tags.Add("colonel_leuk");
# zombie.tags.Add("colonel_leuk");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add colonel_leuk
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add colonel_leuk

#------- Sets the name for the base mob -------
# zombie.name = "Colonel Leuk";
execute as @e[type=zombie, tag=colonel_leuk, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Colonel Leuk", "color": "#19B2FF"}'}
