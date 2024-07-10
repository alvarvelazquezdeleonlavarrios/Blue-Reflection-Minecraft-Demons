#******************* Spawning --> Blue Reflection Demons --> Executioner Ex-Pect *******************


#------- Adds a new tag, indicating the armor stand and mob are a Executioner Ex-Pect -------
# armor_stand.tags.Add("executioner_ex_pect");
# mob.tags.Add("executioner_ex_pect");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add executioner_ex_pect
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add executioner_ex_pect

#------- Sets the name for the base mob -------
# mob.name = "Executioner Ex-Pect";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=executioner_ex_pect, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Executioner Ex-Pect", "color": "#19B2FF"}'}
