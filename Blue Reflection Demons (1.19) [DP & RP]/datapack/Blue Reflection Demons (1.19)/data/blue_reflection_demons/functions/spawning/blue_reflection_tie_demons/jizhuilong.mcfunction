#******************* Spawning --> Blue Reflection Tie Demons --> Jizhuilong *******************


#------- Adds a new tag, indicating the armor stand and mob are a Jizhuilong -------
# armor_stand.tags.Add("jizhuilong");
# mob.tags.Add("jizhuilong");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add jizhuilong
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add jizhuilong

#------- Sets the name for the base mob -------
# mob.name = "Jizhuilong";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=jizhuilong, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Jizhuilong", "color": "#36B01E"}'}
