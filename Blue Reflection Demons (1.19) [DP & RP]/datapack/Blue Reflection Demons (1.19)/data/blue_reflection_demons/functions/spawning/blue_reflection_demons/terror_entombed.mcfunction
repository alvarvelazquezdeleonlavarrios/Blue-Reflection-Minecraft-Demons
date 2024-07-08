#******************* Spawning --> Blue Reflection Demons --> Terror Entombed *******************


#------- Adds a new tag, indicating the armor stand and mob are a Terror Entombed -------
# armor_stand.tags.Add("terror_entombed");
# mob.tags.Add("terror_entombed");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add terror_entombed
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add terror_entombed

#------- Sets the name for the base mob -------
# mob.name = "Terror Entombed";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=terror_entombed, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Terror Entombed", "color": "#19B2FF"}'}
