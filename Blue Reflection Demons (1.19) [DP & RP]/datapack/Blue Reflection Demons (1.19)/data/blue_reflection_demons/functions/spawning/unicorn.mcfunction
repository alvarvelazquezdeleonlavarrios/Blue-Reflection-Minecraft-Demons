#******************* Spawning --> Unicorn *******************


#------- Adds a new tag, indicating the armor stand and zombie are a Unicorn -------
# armor_stand.tags.Add("unicorn");
# zombie.tags.Add("unicorn");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add unicorn
execute as @e[type=zombie, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add unicorn

#------- Sets the name for the base mob -------
# zombie.name = "Unicorn";
execute as @e[type=zombie, tag=unicorn, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Unicorn", "color": "#19B2FF"}'}
