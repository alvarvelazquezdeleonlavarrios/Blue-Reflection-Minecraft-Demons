#******************* Spawning --> Blue Reflection Tie Demons --> Hateful Persona *******************


#------- Adds a new tag, indicating the armor stand and mob are a Hateful Persona -------
# armor_stand.tags.Add("hateful_persona");
# mob.tags.Add("hateful_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hateful_persona
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hateful_persona

#------- Sets the name for the base mob -------
# mob.name = "Hateful Persona";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=hateful_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Hateful Persona", "color": "#36B01E"}'}
