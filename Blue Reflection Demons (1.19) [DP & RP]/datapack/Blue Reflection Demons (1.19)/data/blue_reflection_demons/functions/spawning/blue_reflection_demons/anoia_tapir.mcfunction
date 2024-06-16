#******************* Spawning --> Blue Reflection Demons --> Anoia Tapir *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Anoia Tapir -------
# armor_stand.tags.Add("anoia_tapir");
# zombie.tags.Add("anoia_tapir");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add anoia_tapir
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add anoia_tapir

#------- Sets the name for the base mob -------
# zombie.name = "Anoia Tapir";
execute as @e[type=zombie, tag=anoia_tapir, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Anoia Tapir", "color": "#19B2FF"}'}
