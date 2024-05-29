#******************* Spawning --> Sorrowful Persona *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Sorrowful Persona -------
# armor_stand.tags.Add("sorrowful_persona");
# zombie.tags.Add("sorrowful_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sorrowful_persona
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sorrowful_persona

#------- Sets the name for the base mob -------
# zombie.name = "Sorrowful Persona";
execute as @e[type=zombie, tag=sorrowful_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Sorrowful Persona", "color": "#19B2FF"}'}
