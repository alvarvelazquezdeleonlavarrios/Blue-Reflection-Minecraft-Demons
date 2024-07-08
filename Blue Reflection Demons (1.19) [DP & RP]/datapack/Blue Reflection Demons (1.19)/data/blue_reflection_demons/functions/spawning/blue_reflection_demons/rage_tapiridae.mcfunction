#******************* Spawning --> Blue Reflection Demons --> Rage Tapiridae *******************


#------- Adds a new tag, indicating the armor stand and mob are a Rage Tapiridae -------
# armor_stand.tags.Add("rage_tapiridae");
# mob.tags.Add("rage_tapiridae");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add rage_tapiridae
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add rage_tapiridae

#------- Sets the name for the base mob -------
# mob.name = "Rage Tapiridae";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=rage_tapiridae, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Rage Tapiridae", "color": "#19B2FF"}'}
