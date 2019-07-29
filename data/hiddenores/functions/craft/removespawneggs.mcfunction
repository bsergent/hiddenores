#tellraw @s {"text":"Removing egg from inventory."}
execute as @s run clear @s minecraft:bat_spawn_egg 1
scoreboard players remove @s ho_eggstoremove 1