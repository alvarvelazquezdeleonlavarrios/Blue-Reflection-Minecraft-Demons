#******************* Spawning --> Rage Erythro *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Rage Erythro -------
# armor_stand.tags.Add("rage_erythro");
# zombie.tags.Add("rage_erythro");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add rage_erythro
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add rage_erythro

#------- Sets the name for the base mob -------
# zombie.name = "Rage Erythro";
execute as @e[type=zombie, tag=rage_erythro, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Rage Erythro", "color": "#19B2FF"}'}
