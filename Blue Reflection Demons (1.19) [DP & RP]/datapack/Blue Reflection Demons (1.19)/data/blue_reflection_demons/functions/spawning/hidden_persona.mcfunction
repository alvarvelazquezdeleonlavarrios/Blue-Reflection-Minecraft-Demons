#******************* Spawning --> Hidden Persona *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Hidden Persona -------
# armor_stand.tags.Add("hidden_persona");
# zombie.tags.Add("hidden_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hidden_persona
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hidden_persona

#------- Sets the name for the base mob -------
# zombie.name = "Hidden Persona";
execute as @e[type=zombie, tag=hidden_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Hidden Persona", "color": "#19B2FF"}'}
