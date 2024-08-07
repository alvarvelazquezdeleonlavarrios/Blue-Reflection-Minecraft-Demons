#******************* Spawning --> Blue Reflection Tie Demons --> Heavy Mud Bear *******************


#------- Adds a new tag, indicating the armor stand and mob are a Heavy Mud Bear -------
# armor_stand.tags.Add("heavy_mud_bear");
# mob.tags.Add("heavy_mud_bear");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_mud_bear
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_mud_bear

#------- Sets the name for the base mob -------
# mob.name = "Heavy Mud Bear";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=heavy_mud_bear, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Mud Bear", "color": "#36B01E"}'}
