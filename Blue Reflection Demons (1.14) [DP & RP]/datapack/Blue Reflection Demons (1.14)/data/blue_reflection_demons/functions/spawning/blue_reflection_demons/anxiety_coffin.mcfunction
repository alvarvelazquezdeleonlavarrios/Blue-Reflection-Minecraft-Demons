#******************* Spawning --> Blue Reflection Demons --> Anxiety Coffin *******************


#------- Adds a new tag, indicating the armor stand and mob are a Anxiety Coffin -------
# armor_stand.tags.Add("anxiety_coffin");
# mob.tags.Add("anxiety_coffin");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add anxiety_coffin
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add anxiety_coffin

#------- Sets the name for the base mob -------
# mob.name = "Anxiety Coffin";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=anxiety_coffin, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Anxiety Coffin", "color": "#19B2FF"}'}
