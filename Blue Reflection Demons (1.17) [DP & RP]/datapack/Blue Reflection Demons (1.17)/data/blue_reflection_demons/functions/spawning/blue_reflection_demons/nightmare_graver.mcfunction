#******************* Spawning --> Blue Reflection Demons --> Nightmare Graver *******************


#------- Adds a new tag, indicating the armor stand and mob are a Nightmare Graver -------
# armor_stand.tags.Add("nightmare_graver");
# mob.tags.Add("nightmare_graver");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add nightmare_graver
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add nightmare_graver

#------- Sets the name for the base mob -------
# mob.name = "Nightmare Graver";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=nightmare_graver, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Nightmare Graver", "color": "#19B2FF"}'}
