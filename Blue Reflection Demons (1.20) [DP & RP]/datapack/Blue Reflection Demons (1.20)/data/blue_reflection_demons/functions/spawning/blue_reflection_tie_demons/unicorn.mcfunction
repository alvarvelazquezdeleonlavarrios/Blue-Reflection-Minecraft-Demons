#******************* Spawning --> Blue Reflection Tie Demons --> Unicorn *******************


#------- Adds a new tag, indicating the armor stand and mob are a Unicorn -------
# armor_stand.tags.Add("unicorn");
# mob.tags.Add("unicorn");
execute as @e[type=armor_stand, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add unicorn
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=blue_reflection_demon, limit=1, sort=nearest] run tag @s add unicorn

#------- Sets the name for the base mob -------
# mob.name = "Unicorn";
execute as @e[type=#blue_reflection_demons:hostile_mobs, tag=unicorn, limit=1, sort=nearest] run data merge entity @s {CustomName:'{"text":"Unicorn", "color": "#36B01E"}'}
