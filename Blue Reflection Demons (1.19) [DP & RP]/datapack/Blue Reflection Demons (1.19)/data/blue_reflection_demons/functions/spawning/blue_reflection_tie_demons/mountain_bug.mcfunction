#******************* Spawning --> Blue Reflection Tie Demons --> Mountain Bug *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Mountain Bug -------
# armor_stand.tags.Add("mountain_bug");
# zombie.tags.Add("mountain_bug");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mountain_bug
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mountain_bug

#------- Sets the name for the base mob -------
# zombie.name = "Mountain Bug";
execute as @e[type=zombie, tag=mountain_bug, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Mountain Bug", "color": "#36B01E"}'}
