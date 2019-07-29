# Check for ore at current count position
# Diamond ore
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:diamond_ore run scoreboard players add @s ho_diamondact 1
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:diamond_ore run scoreboard players add @s ho_diamondrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxclose] if block ~ ~ ~ minecraft:diamond_ore run scoreboard players add @s ho_diamondrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxveryclose] if block ~ ~ ~ minecraft:diamond_ore run scoreboard players add @s ho_diamondrep 1

# Emerald ore
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:emerald_ore run scoreboard players add @s ho_emeraldact 1
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:emerald_ore run scoreboard players add @s ho_emeraldrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxclose] if block ~ ~ ~ minecraft:emerald_ore run scoreboard players add @s ho_emeraldrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxveryclose] if block ~ ~ ~ minecraft:emerald_ore run scoreboard players add @s ho_emeraldrep 1

# Lapis ore
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:lapis_ore run scoreboard players add @s ho_lapisact 1
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:lapis_ore run scoreboard players add @s ho_lapisrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxclose] if block ~ ~ ~ minecraft:lapis_ore run scoreboard players add @s ho_lapisrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxveryclose] if block ~ ~ ~ minecraft:lapis_ore run scoreboard players add @s ho_lapisrep 1

# Gold ore
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:gold_ore run scoreboard players add @s ho_goldact 1
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:gold_ore run scoreboard players add @s ho_goldrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxclose] if block ~ ~ ~ minecraft:gold_ore run scoreboard players add @s ho_goldrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxveryclose] if block ~ ~ ~ minecraft:gold_ore run scoreboard players add @s ho_goldrep 1

# Iron ore
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:iron_ore run scoreboard players add @s ho_ironact 1
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:iron_ore run scoreboard players add @s ho_ironrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxclose] if block ~ ~ ~ minecraft:iron_ore run scoreboard players add @s ho_ironrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxveryclose] if block ~ ~ ~ minecraft:iron_ore run scoreboard players add @s ho_ironrep 1

# Coal ore
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:coal_ore run scoreboard players add @s ho_coalact 1
execute at @e[type=area_effect_cloud,tag=ho_counter] if block ~ ~ ~ minecraft:coal_ore run scoreboard players add @s ho_coalrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxclose] if block ~ ~ ~ minecraft:coal_ore run scoreboard players add @s ho_coalrep 1
execute at @e[type=area_effect_cloud,tag=ho_counter,tag=ho_proxveryclose] if block ~ ~ ~ minecraft:coal_ore run scoreboard players add @s ho_coalrep 1

# Increment the counter position, ending and throttling as necessary
function hiddenores:count/increment
execute as @s[tag=!ho_counting] run function hiddenores:count/end
execute as @s[tag=ho_counting,tag=!ho_countthrottle] run function hiddenores:count/tick
execute as @s[tag=ho_countthrottle] run tag @s remove ho_countthrottle