#******************* Spawning --> Blue Reflection Demons --> Rage Tapiridae *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Rage Tapiridae -------
# armor_stand.tags.Add("rage_tapiridae");
# zombie.tags.Add("rage_tapiridae");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add rage_tapiridae
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add rage_tapiridae

#------- Sets the name for the base mob -------
# zombie.name = "Rage Tapiridae";
execute as @e[type=zombie, tag=rage_tapiridae, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Rage Tapiridae", "color": "#19B2FF"}'}
