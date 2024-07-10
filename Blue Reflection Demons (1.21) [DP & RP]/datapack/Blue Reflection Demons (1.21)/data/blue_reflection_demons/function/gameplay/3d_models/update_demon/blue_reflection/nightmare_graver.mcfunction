#******************* Gameplay --> 3D Models --> Update Demon --> Blue Reflection --> Nightmare Graver *******************


#------- Updates the Nightmare Graver's 3D model position and rotation on the base mob's position -------
# armor_stand.position = demon.position;   armor_stand.rotation = demon.rotation;
tp @e[type=armor_stand, tag=nightmare_graver, limit=1, sort=nearest] ~ ~ ~ ~ ~

#------- If the demon takes damage, its armor stand renders the demon with a red color -------
# if (demon.hurt_time == 10):
#   armor_stand.model = ResourcePacks.Find("Blue Reflection Demons", nether_brick, 1705080);
execute if entity @s[nbt={HurtTime:10s}] run data merge entity @e[type=armor_stand, tag=nightmare_graver, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", count:1b, components:{"minecraft:custom_model_data":1705080}}]}

#------- The armor stand returns the normal color to the demon after taking the damage -------
# if (demon.hurt_time == 0):
#   armor_stand.model = ResourcePacks.Find("Blue Reflection Demons", nether_brick, 1705079);
execute if entity @s[nbt={HurtTime:0s}] run data merge entity @e[type=armor_stand, tag=nightmare_graver, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", count:1b, components:{"minecraft:custom_model_data":1705079}}]}
