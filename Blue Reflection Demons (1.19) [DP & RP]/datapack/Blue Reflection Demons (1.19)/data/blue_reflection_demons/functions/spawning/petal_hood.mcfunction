#******************* Spawning --> Petal Hood *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Petal Hood -------
# armor_stand.tags.Add("petal_hood");
# zombie.tags.Add("petal_hood");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add petal_hood
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add petal_hood

#------- Sets the name for the base mob -------
# zombie.name = "Petal Hood";
execute as @e[type=zombie, tag=petal_hood, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Petal Hood", "color": "#19B2FF"}'}
