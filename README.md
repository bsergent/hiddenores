![Hidden Ores](https://i.imgur.com/dEdx3o8.png)

## About
This project is a combination of a resource and data pack meant to be used together to overhaul the way in which players go about mining in Minecraft since mining hasn't really changed since the game was released. 

### Resource Pack
The goal of the resource pack is to make ores harder to notice, masking the majority as regular stone blocks. Most of the remaining visible ores are retextured to be less obvious, while the final few are preserved as default and fully visible. This makes mining less about getting every ore you see and more about constantly keeping an eye out for where veins may be located. The data pack works to decrease this new difficulty a bit while adding in a fun, new mechanic: prospecting.
![Screenshot of less visible ores](https://i.imgur.com/zWVOPOk.png)

### Data Pack
The data pack adds a new tool, the prospector pickaxe. This pick will check the surroundings for ore when a block is mined and report that to the player via the action bar (the text just above the hotbar). Exact numbers aren't reported (although the variable `#ho_exact` can be set to 1 in `/data/hiddenores/functions/load.mcfunction` to enable that). Instead, a [general estimate](/data/hiddenores/functions/count/end.mcfunction) is given, usually for the rarest nearby ore. For example, if there are two diamond ore seven blocks away, the pick may report 'Found traces of diamond ore' while five ore within three blocks may report 'Found a large sample of diamond ore.' There is a random chance that the pick will instead report a less rare ore or no ores at all (a false negative).
![Example of ore proximity with prospector pick](https://i.imgur.com/lqpUDIy.png)
The prospector pick may be crafted from four gold ingots and two sticks, similarly to a regular golden pickaxe. This will actually craft a bat spawn egg due to the limitations of Minecraft's data-driven crafting recipes, but the spawn egg will be immediately replaced with the new pickaxe during the next tick. In addition, the number of spawn eggs removed will exactly equal the number of pickaxes crafted so that the spawn eggs are still fully useable in creative. 
![Crafting recipe for prospector pick](https://i.imgur.com/IyvErxQ.png)

## Installation
### Downloads
There aren't any downloads yet, but they will be located under Releases. The latest version is v1.
### Resource Pack
The resource pack may be installed by simply dragging/copying the zip archive into your `%AppData%/.minecraft/resourcepacks/` folder and selecting it in-game.
### Data Pack
The data pack may be installed by dragging/copying the zip archive into your world save (`%AppData%/.minecraft/saves/<worldname>/datapacks/`). Yes, the same zip archive is both a resource and data pack. 
