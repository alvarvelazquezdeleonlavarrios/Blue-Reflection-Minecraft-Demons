#******************* Spawning --> Blue Reflection Demons --> Wailbranch *******************


#------- Adds a new tag, indicating the armor stand and mob are a Wailbranch -------
# armor_stand.tags.Add("wailbranch");
# mob.tags.Add("wailbranch");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add wailbranch
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add wailbranch

#------- Sets the name for the base mob -------
# mob.name = "Wailbranch";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=wailbranch, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Wailbranch", "color": "#19B2FF"}'}
