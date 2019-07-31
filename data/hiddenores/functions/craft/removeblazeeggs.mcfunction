execute as @s run clear @s minecraft:blaze_spawn_egg 1
scoreboard players remove @s ho_eggblaze 1
execute as @a[scores={ho_eggblaze=1..}] run function hiddenores:craft/removeblazeeggs