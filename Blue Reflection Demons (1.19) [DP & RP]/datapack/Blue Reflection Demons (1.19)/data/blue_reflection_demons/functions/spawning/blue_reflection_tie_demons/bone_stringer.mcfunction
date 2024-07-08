#******************* Spawning --> Blue Reflection Tie Demons --> Bone Stringer *******************


#------- Adds a new tag, indicating the armor stand and mob are a Bone Stringer -------
# armor_stand.tags.Add("bone_stringer");
# mob.tags.Add("bone_stringer");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add bone_stringer
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add bone_stringer

#------- Sets the name for the base mob -------
# mob.name = "Bone Stringer";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=bone_stringer, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Bone Stringer", "color": "#36B01E"}'}
