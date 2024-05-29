#******************* Spawning --> Terror Entombed *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Terror Entombed -------
# armor_stand.tags.Add("terror_entombed");
# zombie.tags.Add("terror_entombed");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add terror_entombed
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add terror_entombed

#------- Sets the name for the base mob -------
# zombie.name = "Terror Entombed";
execute as @e[type=zombie, tag=terror_entombed, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Terror Entombed", "color": "#19B2FF"}'}
