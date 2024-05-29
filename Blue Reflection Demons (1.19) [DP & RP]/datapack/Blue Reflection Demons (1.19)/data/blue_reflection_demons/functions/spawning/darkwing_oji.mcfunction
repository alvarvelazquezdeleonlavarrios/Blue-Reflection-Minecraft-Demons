#******************* Spawning --> Darkwing Oji *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Darkwing Oji -------
# armor_stand.tags.Add("darkwing_oji");
# zombie.tags.Add("darkwing_oji");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add darkwing_oji
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add darkwing_oji

#------- Sets the name for the base mob -------
# zombie.name = "Darkwing Oji";
execute as @e[type=zombie, tag=darkwing_oji, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Darkwing Oji", "color": "#19B2FF"}'}
