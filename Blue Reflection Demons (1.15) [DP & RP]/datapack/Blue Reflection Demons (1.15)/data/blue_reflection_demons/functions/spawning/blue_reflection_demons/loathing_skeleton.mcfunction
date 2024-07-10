#******************* Spawning --> Blue Reflection Demons --> Loathing Skeleton *******************


#------- Adds a new tag, indicating the armor stand and mob are a Loathing Skeleton -------
# armor_stand.tags.Add("loathing_skeleton");
# mob.tags.Add("loathing_skeleton");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add loathing_skeleton
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add loathing_skeleton

#------- Sets the name for the base mob -------
# mob.name = "Loathing Skeleton";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=loathing_skeleton, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Loathing Skeleton", "color": "#19B2FF"}'}
