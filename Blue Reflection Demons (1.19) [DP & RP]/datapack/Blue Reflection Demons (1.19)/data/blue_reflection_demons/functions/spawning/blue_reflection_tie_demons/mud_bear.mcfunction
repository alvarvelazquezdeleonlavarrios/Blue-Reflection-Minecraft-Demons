#******************* Spawning --> Blue Reflection Tie Demons --> Mud Bear *******************


#------- Adds a new tag, indicating the armor stand and mob are a Mud Bear -------
# armor_stand.tags.Add("mud_bear");
# mob.tags.Add("mud_bear");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mud_bear
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mud_bear

#------- Sets the name for the base mob -------
# mob.name = "Mud Bear";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=mud_bear, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Mud Bear", "color": "#36B01E"}'}
