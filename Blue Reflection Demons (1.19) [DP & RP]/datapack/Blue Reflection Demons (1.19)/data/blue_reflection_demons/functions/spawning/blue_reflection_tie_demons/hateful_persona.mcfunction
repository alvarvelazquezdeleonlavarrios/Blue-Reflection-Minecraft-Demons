#******************* Spawning --> Blue Reflection Tie Demons --> Hateful Persona *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Hateful Persona -------
# armor_stand.tags.Add("hateful_persona");
# zombie.tags.Add("hateful_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hateful_persona
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hateful_persona

#------- Sets the name for the base mob -------
# zombie.name = "Hateful Persona";
execute as @e[type=zombie, tag=hateful_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Hateful Persona", "color": "#36B01E"}'}
