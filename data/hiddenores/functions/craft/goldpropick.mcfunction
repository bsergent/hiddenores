give @s minecraft:golden_pickaxe{"display":{"Name":"{\"text\":\"Golden Prospector Pick\",\"italic\":false}","Lore":["{\"text\":\"15x15x15\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"30% false negatives\",\"color\":\"gray\",\"italic\":false}","{\"text\":\"Can detect all ores\",\"color\":\"gray\",\"italic\":false}"]},"Enchantments":[{"lvl":1s,"id":"minecraft:unbreaking"}]} 1
scoreboard players add @s ho_eggbat 1
scoreboard players remove @s ho_craftgoldpick 1
execute as @s[scores={ho_craftgoldpick=1..}] run function hiddenores:craft/goldpropick