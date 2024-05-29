#******************* Spawning --> Heavy Mud Bear *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Heavy Mud Bear -------
# armor_stand.tags.Add("heavy_mud_bear");
# zombie.tags.Add("heavy_mud_bear");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_mud_bear
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_mud_bear

#------- Sets the name for the base mob -------
# zombie.name = "Heavy Mud Bear";
execute as @e[type=zombie, tag=heavy_mud_bear, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Mud Bear", "color": "#19B2FF"}'}
