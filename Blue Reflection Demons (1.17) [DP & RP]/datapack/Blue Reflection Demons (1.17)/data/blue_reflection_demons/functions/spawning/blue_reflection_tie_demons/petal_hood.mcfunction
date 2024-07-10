#******************* Spawning --> Blue Reflection Tie Demons --> Petal Hood *******************


#------- Adds a new tag, indicating the armor stand and mob are a Petal Hood -------
# armor_stand.tags.Add("petal_hood");
# mob.tags.Add("petal_hood");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add petal_hood
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add petal_hood

#------- Sets the name for the base mob -------
# mob.name = "Petal Hood";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=petal_hood, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Petal Hood", "color": "#36B01E"}'}
