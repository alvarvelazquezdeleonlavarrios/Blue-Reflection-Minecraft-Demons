#******************* Spawning --> Blue Reflection Tie Demons --> Sorrowful Persona *******************


#------- Adds a new tag, indicating the armor stand and mob are a Sorrowful Persona -------
# armor_stand.tags.Add("sorrowful_persona");
# mob.tags.Add("sorrowful_persona");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sorrowful_persona
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sorrowful_persona

#------- Sets the name for the base mob -------
# mob.name = "Sorrowful Persona";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=sorrowful_persona, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Sorrowful Persona", "color": "#36B01E"}'}
