#******************* Gameplay --> 3D Models --> Update Demon --> Anxiety Coffin *******************


#------- Updates the Anxiety Coffin's 3D model position and rotation on the base mob's position -------
# armor_stand.position = demon.position;   armor_stand.rotation = demon.rotation;
tp @e[type=armor_stand, tag=anxiety_coffin, limit=1, sort=nearest] ~ ~ ~ ~ ~

#------- If the demon takes damage, its armor stand renders the demon with a red color -------
# if (demon.hurt_time == 10):
#   armor_stand.update3DModel( anxiety_coffin, damage );
execute if entity @s[nbt={HurtTime:10s}] run data merge entity @e[type=armor_stand, tag=anxiety_coffin, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", Count:1b, tag:{CustomModelData:1705118}}]}

#------- The armor stand returns the normal color to the demon after taking the damage -------
# if (demon.hurt_time == 0):
#   armor_stand.update3DModel( anxiety_coffin, normal );
execute if entity @s[nbt={HurtTime:0s}] run data merge entity @e[type=armor_stand, tag=anxiety_coffin, limit=1, sort=nearest, distance=..1] {ArmorItems:[{},{},{},{id:"minecraft:nether_brick", Count:1b, tag:{CustomModelData:1705117}}]}
