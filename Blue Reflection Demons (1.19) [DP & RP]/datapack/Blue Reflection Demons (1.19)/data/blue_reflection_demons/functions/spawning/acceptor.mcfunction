#******************* Spawning --> Acceptor *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Acceptor -------
# armor_stand.tags.Add("acceptor");
# zombie.tags.Add("acceptor");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add acceptor
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add acceptor

#------- Sets the name for the base mob -------
# zombie.name = "Acceptor";
execute as @e[type=zombie, tag=acceptor, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Acceptor", "color": "#19B2FF"}'}
