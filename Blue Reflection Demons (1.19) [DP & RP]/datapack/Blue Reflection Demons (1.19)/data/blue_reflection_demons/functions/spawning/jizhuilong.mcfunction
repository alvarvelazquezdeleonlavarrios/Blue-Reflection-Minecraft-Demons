#******************* Spawning --> Jizhuilong *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Jizhuilong -------
# armor_stand.tags.Add("jizhuilong");
# zombie.tags.Add("jizhuilong");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add jizhuilong
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add jizhuilong

#------- Sets the name for the base mob -------
# zombie.name = "Jizhuilong";
execute as @e[type=zombie, tag=jizhuilong, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Jizhuilong", "color": "#19B2FF"}'}
