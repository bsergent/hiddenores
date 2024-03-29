# Constants
scoreboard objectives add ho_calc dummy
scoreboard players set #ho_version ho_calc 1
# Multiplier for random number for iron pick (bigger means higher chance of false negative, 1.5 means 1/2 chance, 2 means 2/3 chance)
scoreboard players set #ho_ironnegmodnum ho_calc 2
scoreboard players set #ho_ironnegmodden ho_calc 3
function hiddenores:options

# Check for ores in vicinity on mine
scoreboard objectives add ho_usegoldpick minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add ho_useironpick minecraft.used:minecraft.iron_pickaxe

# Prospector pick crafting
scoreboard objectives add ho_craftgoldpick minecraft.crafted:minecraft.bat_spawn_egg
scoreboard objectives add ho_craftironpick minecraft.crafted:minecraft.blaze_spawn_egg
scoreboard objectives add ho_eggbat dummy
scoreboard objectives add ho_eggblaze dummy

# Ore count in local area
scoreboard objectives add ho_diamondact dummy
scoreboard objectives add ho_diamondrep dummy
scoreboard objectives add ho_emeraldact dummy
scoreboard objectives add ho_emeraldrep dummy
scoreboard objectives add ho_lapisact dummy
scoreboard objectives add ho_lapisrep dummy
scoreboard objectives add ho_goldact dummy
scoreboard objectives add ho_goldrep dummy
scoreboard objectives add ho_redstoneact dummy
scoreboard objectives add ho_redstonerep dummy
scoreboard objectives add ho_ironact dummy
scoreboard objectives add ho_ironrep dummy
scoreboard objectives add ho_coalact dummy
scoreboard objectives add ho_coalrep dummy

# Use to count ore in current area
scoreboard objectives add ho_checkx dummy
scoreboard objectives add ho_checky dummy
scoreboard objectives add ho_checkz dummy

# Random Number Generator
scoreboard players set #ho_rand ho_calc 0
scoreboard players set #ho_randm ho_calc 134456
scoreboard players set #ho_randa ho_calc 8121
scoreboard players set #ho_randc ho_calc 28411
scoreboard players set #ho_randtemp ho_calc 0
scoreboard players set #ho_randneg ho_calc -1
# ..1, so 1/3 chance of false negative w/ max of 6
scoreboard players set #ho_randmax ho_calc 6
# Seed the generator based on a random player's x-coord
execute store result score #ho_randseed ho_calc run data get entity @r Pos[0]
execute if score #ho_randseed mcprng matches ..0 run scoreboard players operation #ho_randseed ho_calc *= #ho_randneg ho_calc
scoreboard players operation #ho_randseed ho_calc %= #ho_randm ho_calc
scoreboard players operation #ho_random ho_calc = #ho_randseed ho_calc
