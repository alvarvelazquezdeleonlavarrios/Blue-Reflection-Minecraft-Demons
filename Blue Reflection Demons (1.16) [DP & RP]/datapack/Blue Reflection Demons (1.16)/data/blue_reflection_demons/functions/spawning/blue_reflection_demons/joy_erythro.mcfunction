#******************* Spawning --> Blue Reflection Demons --> Joy Erythro *******************


#------- Adds a new tag, indicating the armor stand and mob are a Joy Erythro -------
# armor_stand.tags.Add("joy_erythro");
# mob.tags.Add("joy_erythro");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add joy_erythro
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add joy_erythro

#------- Sets the name for the base mob -------
# mob.name = "Joy Erythro";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=joy_erythro, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Joy Erythro", "color": "#19B2FF"}'}
