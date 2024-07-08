#******************* Spawning --> Blue Reflection Tie Demons --> False Persona *******************


#------- Adds a new tag, indicating the armor stand and mob are a False Persona -------
# armor_stand.tags.Add("false_persona");
# mob.tags.Add("false_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add false_persona
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add false_persona

#------- Sets the name for the base mob -------
# mob.name = "False Persona";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=false_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"False Persona", "color": "#36B01E"}'}
