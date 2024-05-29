#******************* Spawning --> Cryhorn *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Cryhorn -------
# armor_stand.tags.Add("cryhorn");
# zombie.tags.Add("cryhorn");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add cryhorn
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add cryhorn

#------- Sets the name for the base mob -------
# zombie.name = "Cryhorn";
execute as @e[type=zombie, tag=cryhorn, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Cryhorn", "color": "#19B2FF"}'}
