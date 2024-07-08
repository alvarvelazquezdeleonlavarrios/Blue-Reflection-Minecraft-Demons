#******************* Spawning --> Blue Reflection Tie Demons --> Mountain Bug *******************


#------- Adds a new tag, indicating the armor stand and mob are a Mountain Bug -------
# armor_stand.tags.Add("mountain_bug");
# mob.tags.Add("mountain_bug");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mountain_bug
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mountain_bug

#------- Sets the name for the base mob -------
# mob.name = "Mountain Bug";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=mountain_bug, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Mountain Bug", "color": "#36B01E"}'}
