#******************* Spawning --> Blue Reflection Demons --> Guardian Amazement *******************


#------- Adds a new tag, indicating the armor stand and mob are a Guardian Amazement -------
# armor_stand.tags.Add("guardian_amazement");
# mob.tags.Add("guardian_amazement");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add guardian_amazement
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add guardian_amazement

#------- Sets the name for the base mob -------
# mob.name = "Guardian Amazement";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=guardian_amazement, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Guardian Amazement", "color": "#19B2FF"}'}
