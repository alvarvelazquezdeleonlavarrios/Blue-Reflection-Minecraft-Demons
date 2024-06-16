#******************* Spawning --> Blue Reflection Demons --> Disgust Cranium *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Disgust Cranium -------
# armor_stand.tags.Add("disgust_cranium");
# zombie.tags.Add("disgust_cranium");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add disgust_cranium
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add disgust_cranium

#------- Sets the name for the base mob -------
# zombie.name = "Disgust Cranium";
execute as @e[type=zombie, tag=disgust_cranium, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Disgust Cranium", "color": "#19B2FF"}'}
