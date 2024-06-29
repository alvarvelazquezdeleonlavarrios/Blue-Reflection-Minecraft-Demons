#******************* Spawning --> Blue Reflection Tie Demons --> Mud Bear *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Mud Bear -------
# armor_stand.tags.Add("mud_bear");
# zombie.tags.Add("mud_bear");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mud_bear
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add mud_bear

#------- Sets the name for the base mob -------
# zombie.name = "Mud Bear";
execute as @e[type=zombie, tag=mud_bear, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Mud Bear", "color": "#36B01E"}'}
