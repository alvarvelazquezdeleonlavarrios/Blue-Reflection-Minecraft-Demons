#******************* Spawning --> Blue Reflection Demons --> Apathy Bones *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Apathy Bones -------
# armor_stand.tags.Add("apathy_bones");
# zombie.tags.Add("apathy_bones");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add apathy_bones
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add apathy_bones

#------- Sets the name for the base mob -------
# zombie.name = "Apathy Bones";
execute as @e[type=zombie, tag=apathy_bones, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Apathy Bones", "color": "#19B2FF"}'}
