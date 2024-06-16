#******************* Spawning --> Blue Reflection Demons --> Nightmare Graver *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Nightmare Graver -------
# armor_stand.tags.Add("nightmare_graver");
# zombie.tags.Add("nightmare_graver");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add nightmare_graver
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add nightmare_graver

#------- Sets the name for the base mob -------
# zombie.name = "Nightmare Graver";
execute as @e[type=zombie, tag=nightmare_graver, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Nightmare Graver", "color": "#19B2FF"}'}
