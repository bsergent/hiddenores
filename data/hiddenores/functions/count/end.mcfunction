execute if score #ho_exact ho_calc matches 1 run tag @s add ho_reported

# Diamond ore
#execute if score #ho_rand ho_calc matches 4..7 as @s[scores={ho_diamondact=1..}] run scoreboard players operation @s ho_diamondrep /= #ho_rand ho_calc
execute if score #ho_exact ho_calc matches 1 run tellraw @s [{ "text":"Found "}, {"score":{"name":"@s","objective":"ho_diamondact"},"color":"aqua"}, { "text":" diamond ore. ("}, {"score":{"name":"@s","objective":"ho_diamondrep"}}, {"text":" reported)"}]
function hiddenores:count/falsenegatives
execute as @s[scores={ho_diamondrep=1..2},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"traces","bold":true}, {"text":" of "}, {"text":"diamond","color":"aqua"}, {"text":" ore."}]
execute as @s[scores={ho_diamondrep=3..8},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"small","bold":true}, {"text":" sample of "}, {"text":"diamond","color":"aqua"}, {"text":" ore."}]
execute as @s[scores={ho_diamondrep=9..14},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"medium","bold":true}, {"text":" sample of "}, {"text":"diamond","color":"aqua"}, {"text":" ore."}]
execute as @s[scores={ho_diamondrep=15..20},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"large","bold":true}, {"text":" sample of "}, {"text":"diamond","color":"aqua"}, {"text":" ore."}]
execute as @s[scores={ho_diamondrep=21..24},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"very large","bold":true}, {"text":" sample of "}, {"text":"diamond","color":"aqua"}, {"text":" ore."}]
execute as @s[scores={ho_diamondrep=25..},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"multiple","bold":true}, {"text":" deposits of "}, {"text":"diamond","color":"aqua"}, {"text":" ore."}]
execute as @s[scores={ho_diamondrep=1..},tag=!ho_falseneg] run tag @s add ho_reported

# Emerald ore
execute if score #ho_exact ho_calc matches 1 run tellraw @s [{ "text":"Found "}, {"score":{"name":"@s","objective":"ho_emeraldact"},"color":"green"}, { "text":" emerald ore. ("}, {"score":{"name":"@s","objective":"ho_emeraldrep"}}, {"text":" reported)"}]
function hiddenores:count/falsenegatives
execute as @s[scores={ho_emeraldrep=1},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"traces","bold":true}, {"text":" of "}, {"text":"emerald","color":"green"}, {"text":" ore."}]
execute as @s[scores={ho_emeraldrep=2},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"small","bold":true}, {"text":" sample of "}, {"text":"emerald","color":"green"}, {"text":" ore."}]
execute as @s[scores={ho_emeraldrep=3},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"medium","bold":true}, {"text":" sample of "}, {"text":"emerald","color":"green"}, {"text":" ore."}]
execute as @s[scores={ho_emeraldrep=4..},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"multiple","bold":true}, {"text":" deposits of "}, {"text":"emerald","color":"green"}, {"text":" ore."}]
execute as @s[scores={ho_emeraldrep=1..},tag=!ho_falseneg] run tag @s add ho_reported

# Lapis ore
execute if score #ho_exact ho_calc matches 1 run tellraw @s [{ "text":"Found "}, {"score":{"name":"@s","objective":"ho_lapisact"},"color":"blue"}, { "text":" lapis ore. ("}, {"score":{"name":"@s","objective":"ho_lapisrep"}}, {"text":" reported)"}]
function hiddenores:count/falsenegatives
execute as @s[scores={ho_lapisrep=1..2},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"traces","bold":true}, {"text":" of "}, {"text":"lapis","color":"blue"}, {"text":" ore."}]
execute as @s[scores={ho_lapisrep=3..8},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"small","bold":true}, {"text":" sample of "}, {"text":"lapis","color":"blue"}, {"text":" ore."}]
execute as @s[scores={ho_lapisrep=9..14},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"medium","bold":true}, {"text":" sample of "}, {"text":"lapis","color":"blue"}, {"text":" ore."}]
execute as @s[scores={ho_lapisrep=15..20},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"large","bold":true}, {"text":" sample of "}, {"text":"lapis","color":"blue"}, {"text":" ore."}]
execute as @s[scores={ho_lapisrep=21..24},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"very large","bold":true}, {"text":" sample of "}, {"text":"lapis","color":"blue"}, {"text":" ore."}]
execute as @s[scores={ho_lapisrep=25..},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"multiple","bold":true}, {"text":" deposits of "}, {"text":"lapis","color":"blue"}, {"text":" ore."}]
execute as @s[scores={ho_lapisrep=1..},tag=!ho_falseneg] run tag @s add ho_reported

# Gold ore
execute if score #ho_exact ho_calc matches 1 run tellraw @s [{ "text":"Found "}, {"score":{"name":"@s","objective":"ho_goldact"},"color":"gold"}, { "text":" gold ore. ("}, {"score":{"name":"@s","objective":"ho_goldrep"}}, {"text":" reported)"}]
function hiddenores:count/falsenegatives
execute as @s[scores={ho_goldrep=1..2},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"traces","bold":true}, {"text":" of "}, {"text":"gold","color":"gold"}, {"text":" ore."}]
execute as @s[scores={ho_goldrep=3..8},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"small","bold":true}, {"text":" sample of "}, {"text":"gold","color":"gold"}, {"text":" ore."}]
execute as @s[scores={ho_goldrep=9..14},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"medium","bold":true}, {"text":" sample of "}, {"text":"gold","color":"gold"}, {"text":" ore."}]
execute as @s[scores={ho_goldrep=15..20},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"large","bold":true}, {"text":" sample of "}, {"text":"gold","color":"gold"}, {"text":" ore."}]
execute as @s[scores={ho_goldrep=21..24},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"very large","bold":true}, {"text":" sample of "}, {"text":"gold","color":"gold"}, {"text":" ore."}]
execute as @s[scores={ho_goldrep=25..},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"multiple","bold":true}, {"text":" deposits of "}, {"text":"gold","color":"gold"}, {"text":" ore."}]
execute as @s[scores={ho_goldrep=1..},tag=!ho_falseneg] run tag @s add ho_reported

# Iron ore
execute if score #ho_exact ho_calc matches 1 run tellraw @s [{ "text":"Found "}, {"score":{"name":"@s","objective":"ho_ironact"},"color":"gray"}, { "text":" iron ore. ("}, {"score":{"name":"@s","objective":"ho_ironrep"}}, {"text":" reported)"}]
function hiddenores:count/falsenegatives
execute as @s[scores={ho_ironrep=1..2},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"traces","bold":true}, {"text":" of "}, {"text":"iron","color":"gray"}, {"text":" ore."}]
execute as @s[scores={ho_ironrep=3..8},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"small","bold":true}, {"text":" sample of "}, {"text":"iron","color":"gray"}, {"text":" ore."}]
execute as @s[scores={ho_ironrep=9..14},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"medium","bold":true}, {"text":" sample of "}, {"text":"iron","color":"gray"}, {"text":" ore."}]
execute as @s[scores={ho_ironrep=15..20},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"large","bold":true}, {"text":" sample of "}, {"text":"iron","color":"gray"}, {"text":" ore."}]
execute as @s[scores={ho_ironrep=21..24},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"very large","bold":true}, {"text":" sample of "}, {"text":"iron","color":"gray"}, {"text":" ore."}]
execute as @s[scores={ho_ironrep=25..},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"multiple","bold":true}, {"text":" deposits of "}, {"text":"iron","color":"gray"}, {"text":" ore."}]
execute as @s[scores={ho_ironrep=1..},tag=!ho_falseneg] run tag @s add ho_reported

# Coal ore
execute if score #ho_exact ho_calc matches 1 run tellraw @s [{ "text":"Found "}, {"score":{"name":"@s","objective":"ho_coalact"},"color":"black"}, { "text":" coal ore. ("}, {"score":{"name":"@s","objective":"ho_coalrep"}}, {"text":" reported)"}]
function hiddenores:count/falsenegatives
execute as @s[scores={ho_coalrep=1..8},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"traces","bold":true}, {"text":" of "}, {"text":"coal","color":"black"}, {"text":" ore."}]
execute as @s[scores={ho_coalrep=9..16},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"small","bold":true}, {"text":" sample of "}, {"text":"coal","color":"black"}, {"text":" ore."}]
execute as @s[scores={ho_coalrep=17..24},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"medium","bold":true}, {"text":" sample of "}, {"text":"coal","color":"black"}, {"text":" ore."}]
execute as @s[scores={ho_coalrep=25..32},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"large","bold":true}, {"text":" sample of "}, {"text":"coal","color":"black"}, {"text":" ore."}]
execute as @s[scores={ho_coalrep=33..51},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found a "}, {"text":"very large","bold":true}, {"text":" sample of "}, {"text":"coal","color":"black"}, {"text":" ore."}]
execute as @s[scores={ho_coalrep=52..},tag=!ho_reported,tag=!ho_falseneg] run title @s actionbar [{"text":"Found "}, {"text":"multiple","bold":true}, {"text":" deposits of "}, {"text":"coal","color":"black"}, {"text":" ore."}]
execute as @s[scores={ho_coalrep=1..},tag=!ho_falseneg] run tag @s add ho_reported

# No ores
execute as @s[tag=!ho_reported] run title @s actionbar [{"text":"Found "}, {"text":"no","bold":true}, {"text":" traces of ore."}]
execute if score #ho_exact ho_calc matches 1 run title @s actionbar [{"text":"Finished looking for ores."}]

tag @s remove ho_reported
kill @e[type=area_effect_cloud,tag=ho_counter]
scoreboard players set @s ho_usepick 0
playsound minecraft:entity.villager.work_mason block @s ~ ~ ~ 0.3 0.8