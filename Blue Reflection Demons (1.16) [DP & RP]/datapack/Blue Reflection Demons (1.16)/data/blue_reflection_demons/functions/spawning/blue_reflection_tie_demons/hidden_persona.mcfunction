#******************* Spawning --> Blue Reflection Tie Demons --> Hidden Persona *******************


#------- Adds a new tag, indicating the armor stand and mob are a Hidden Persona -------
# armor_stand.tags.Add("hidden_persona");
# mob.tags.Add("hidden_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hidden_persona
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add hidden_persona

#------- Sets the name for the base mob -------
# mob.name = "Hidden Persona";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=hidden_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Hidden Persona", "color": "#36B01E"}'}
