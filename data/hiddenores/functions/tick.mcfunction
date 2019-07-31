# Check type of held pickaxe (and if actually crafted)
execute as @a[tag=!ho_counting] run tag @a remove ho_goldpick
execute as @a[tag=!ho_counting] run tag @a remove ho_ironpick
execute as @a[nbt={"SelectedItem":{"id":"minecraft:golden_pickaxe","tag":{"display":{"Lore":["{\"text\":\"15x15x15\",\"color\":\"gray\",\"italic\":false}"]}}}}] run tag @s add ho_goldpick
execute as @a[nbt={"SelectedItem":{"id":"minecraft:iron_pickaxe","tag":{"display":{"Lore":["{\"text\":\"11x7x11\",\"color\":\"gray\",\"italic\":false}"]}}}}] run tag @s add ho_ironpick
execute as @a[scores={ho_usegoldpick=1..},tag=!ho_goldpick] run scoreboard players set @s ho_usegoldpick 0
execute as @a[scores={ho_useironpick=1..},tag=!ho_ironpick] run scoreboard players set @s ho_useironpick 0

# Use prospector picks
execute as @a[scores={ho_usegoldpick=1..},tag=!ho_counting] at @s run function hiddenores:count/begin
execute as @a[scores={ho_useironpick=1..},tag=!ho_counting] at @s run function hiddenores:count/begin
#execute as @a[tag=ho_counting] at @s run tellraw @s [{"text":"x="}, {"score":{"name":"@s","objective":"ho_checkx"}}, {"text":", y="}, {"score":{"name":"@s","objective":"ho_checky"}}, {"text":", z="}, {"score":{"name":"@s","objective":"ho_checkz"}}]
execute as @a[tag=ho_counting] at @s run function hiddenores:count/tick

# Craft prospector picks
execute as @a[scores={ho_craftgoldpick=1..}] at @s run function hiddenores:craft/goldpropick
execute as @a[scores={ho_craftironpick=1..}] at @s run function hiddenores:craft/ironpropick
execute as @a run function hiddenores:craft/removeeggs