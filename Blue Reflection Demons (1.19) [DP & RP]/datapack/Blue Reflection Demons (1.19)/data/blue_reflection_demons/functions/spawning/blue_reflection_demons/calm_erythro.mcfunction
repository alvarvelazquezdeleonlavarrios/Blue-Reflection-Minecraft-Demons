#******************* Spawning --> Blue Reflection Demons --> Calm Erythro *******************


#------- Adds a new tag, indicating the armor stand and mob are a Calm Erythro -------
# armor_stand.tags.Add("calm_erythro");
# mob.tags.Add("calm_erythro");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add calm_erythro
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add calm_erythro

#------- Sets the name for the base mob -------
# mob.name = "Calm Erythro";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=calm_erythro, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Calm Erythro", "color": "#19B2FF"}'}
