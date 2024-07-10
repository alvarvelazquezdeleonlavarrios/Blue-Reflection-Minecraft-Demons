#******************* Spawning --> Blue Reflection Demons --> Colonel Leuk *******************


#------- Adds a new tag, indicating the armor stand and mob are a Colonel Leuk -------
# armor_stand.tags.Add("colonel_leuk");
# mob.tags.Add("colonel_leuk");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add colonel_leuk
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add colonel_leuk

#------- Sets the name for the base mob -------
# mob.name = "Colonel Leuk";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=colonel_leuk, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Colonel Leuk", "color": "#19B2FF"}'}
