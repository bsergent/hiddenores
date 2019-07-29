# Check if valid pick (crafted, not renamed in anvil)
tag @a remove ho_validpick
execute as @a[nbt={"SelectedItem":{"id":"minecraft:golden_pickaxe",tag:{display:{Name:"{\"text\":\"Prospector Pick\",\"italic\":false}"}}}}] run tag @s add ho_validpick
execute as @a[scores={ho_usepick=1..},tag=!ho_validpick] run scoreboard players set @s ho_usepick 0

# Use prospector pick
execute as @a[scores={ho_usepick=1..},tag=!ho_counting] at @s run function hiddenores:count/begin
execute as @a[tag=ho_counting] at @s run function hiddenores:count/tick

# Craft prospector pick
execute as @a[scores={ho_craftpick=1..}] at @s run function hiddenores:craft/craftprospectorpick
execute as @a[scores={ho_eggstoremove=1..}] run function hiddenores:craft/removespawneggs