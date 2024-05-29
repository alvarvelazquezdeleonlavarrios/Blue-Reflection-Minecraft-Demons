#******************* Spawning --> False Persona *******************


#------- Adds a new tag, indicating the armor stand and zombie are a False Persona -------
# armor_stand.tags.Add("false_persona");
# zombie.tags.Add("false_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add false_persona
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add false_persona

#------- Sets the name for the base mob -------
# zombie.name = "False Persona";
execute as @e[type=zombie, tag=false_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"False Persona", "color": "#19B2FF"}'}
