#******************* Spawning --> Blue Reflection Demons --> Sculpture Distract *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Sculpture Distract -------
# armor_stand.tags.Add("sculpture_distract");
# zombie.tags.Add("sculpture_distract");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sculpture_distract
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add sculpture_distract

#------- Sets the name for the base mob -------
# zombie.name = "Sculpture Distract";
execute as @e[type=zombie, tag=sculpture_distract, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Sculpture Distract", "color": "#19B2FF"}'}
