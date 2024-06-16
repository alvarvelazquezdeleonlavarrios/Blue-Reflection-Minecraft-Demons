#******************* Spawning --> Blue Reflection Demons --> Despair Erythro *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Despair Erythro -------
# armor_stand.tags.Add("despair_erythro");
# zombie.tags.Add("despair_erythro");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add despair_erythro
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add despair_erythro

#------- Sets the name for the base mob -------
# zombie.name = "Despair Erythro";
execute as @e[type=zombie, tag=despair_erythro, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Despair Erythro", "color": "#19B2FF"}'}
