#******************* Spawning --> Calm Erythro *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Calm Erythro -------
# armor_stand.tags.Add("calm_erythro");
# zombie.tags.Add("calm_erythro");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add calm_erythro
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add calm_erythro

#------- Sets the name for the base mob -------
# zombie.name = "Calm Erythro";
execute as @e[type=zombie, tag=calm_erythro, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Calm Erythro", "color": "#19B2FF"}'}
