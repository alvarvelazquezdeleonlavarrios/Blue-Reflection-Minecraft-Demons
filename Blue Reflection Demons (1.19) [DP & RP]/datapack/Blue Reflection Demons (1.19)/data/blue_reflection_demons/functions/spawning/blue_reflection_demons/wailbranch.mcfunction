#******************* Spawning --> Blue Reflection Demons --> Wailbranch *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Wailbranch -------
# armor_stand.tags.Add("wailbranch");
# zombie.tags.Add("wailbranch");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add wailbranch
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add wailbranch

#------- Sets the name for the base mob -------
# zombie.name = "Wailbranch";
execute as @e[type=zombie, tag=wailbranch, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Wailbranch", "color": "#19B2FF"}'}
