#******************* Spawning --> Bone Stringer *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Bone Stringer -------
# armor_stand.tags.Add("bone_stringer");
# zombie.tags.Add("bone_stringer");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add bone_stringer
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add bone_stringer

#------- Sets the name for the base mob -------
# zombie.name = "Bone Stringer";
execute as @e[type=zombie, tag=bone_stringer, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Bone Stringer", "color": "#19B2FF"}'}
