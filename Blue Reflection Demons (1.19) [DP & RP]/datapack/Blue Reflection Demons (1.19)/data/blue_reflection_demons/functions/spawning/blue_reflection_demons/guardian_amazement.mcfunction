#******************* Spawning --> Blue Reflection Demons --> Guardian Amazement *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Guardian Amazement -------
# armor_stand.tags.Add("guardian_amazement");
# zombie.tags.Add("guardian_amazement");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add guardian_amazement
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add guardian_amazement

#------- Sets the name for the base mob -------
# zombie.name = "Guardian Amazement";
execute as @e[type=zombie, tag=guardian_amazement, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Guardian Amazement", "color": "#19B2FF"}'}
