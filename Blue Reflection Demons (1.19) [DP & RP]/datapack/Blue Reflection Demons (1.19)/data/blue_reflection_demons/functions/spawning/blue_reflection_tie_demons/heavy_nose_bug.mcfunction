#******************* Spawning --> Blue Reflection Tie Demons --> Heavy Nose Bug *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Heavy Nose Bug -------
# armor_stand.tags.Add("heavy_nose_bug");
# zombie.tags.Add("heavy_nose_bug");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_nose_bug
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add heavy_nose_bug

#------- Sets the name for the base mob -------
# zombie.name = "Heavy Nose Bug";
execute as @e[type=zombie, tag=heavy_nose_bug, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Heavy Nose Bug", "color": "#36B01E"}'}
