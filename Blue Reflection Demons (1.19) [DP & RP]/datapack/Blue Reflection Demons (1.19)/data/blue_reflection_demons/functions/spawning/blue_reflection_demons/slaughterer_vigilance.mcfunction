#******************* Spawning --> Blue Reflection Demons --> Slaughterer Vigilance *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Slaughterer Vigilance -------
# armor_stand.tags.Add("slaughterer_vigilance");
# zombie.tags.Add("slaughterer_vigilance");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add slaughterer_vigilance
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add slaughterer_vigilance

#------- Sets the name for the base mob -------
# zombie.name = "Slaughterer Vigilance";
execute as @e[type=zombie, tag=slaughterer_vigilance, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Slaughterer Vigilance", "color": "#19B2FF"}'}
