#******************* Spawning --> Blue Reflection Tie Demons --> Nose Bug *******************


#------- Adds a new tag, indicating the armor stand and mob are a Nose Bug -------
# armor_stand.tags.Add("nose_bug");
# mob.tags.Add("nose_bug");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add nose_bug
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add nose_bug

#------- Sets the name for the base mob -------
# mob.name = "Nose Bug";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=nose_bug, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Nose Bug", "color": "#36B01E"}'}
