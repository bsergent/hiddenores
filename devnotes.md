# Hidden Ores Dev Notes
## Task List
### Future
* Make work in creative too? But the used stat doesn't update.
* Make counting radius dependent on type of prospector pickaxe? Maybe direction/area of search varies depending on base tool? Eh, next gen.
* Base search off block mined, not character position?
* Add images to the README such as the crafting recipe, what some ores look like, and what the ore report looks like.
* Add reliabilities to pickaxes for chance of false negatives?
* Increase range with Fortune enchant?
* 3d ores?

### Next
* Raytracing
* Add redstone ore. Bc I forgot.
* Fix the distributable zip archive not being detected as a valid datapack
* Mention Optifine in the README for the prospector pick textures
* Iron prospector pick with 9x9x9 range, cannot detect diamond ore
* Add accuracy lore to both pickaxes

### Finished
* Find way to make the pick craftable in survival (instead of renaming a wooden pickaxe). Done. Used bat spawn eggs (only removes on craft and they're normally uncraftable)
* Factor proximity into the sample sizes. Done.
* ~~Factor in rarity of ore more than just having more rare ores always overwriting more common ones? Eh, the randomness makes this a nonissue really.~~
* Add some false negatives? Done.
* Add sound for prospecting? Done.
* Update the prospector pick icon to be gold as well? Done. And made textures for iron and diamond.
* Check prospector pick in main hand to make sure not just renamed pickaxe (and for later checking type). Done.
* Add the other ores. Done.
* Increase durability of ProPick bc it runs out too quick. Maybe wooden pickaxe or add unbreaking. Negative only adds 1 to total, so added Unbreaking I to almost double durability.
* Add lore to the pickaxe about range

### Balance
* Get a server up and see if Darkblade will do a playtest with me
#### Questions to Answer
* How was the progression different?
  * Did it take longer or shorter to get diamonds?
  * Once diamonds were found, how long did it find to get more?
  * Was gold more useful?
* Did it make mining more fun or more annoying?
* How was the durability on the prospector pickaxes?
* Were the iron and gold prospector pickaxes different enough?
* Did it feel like it fit with vanilla or like a mod?
* How did it affect your mining strategies?
* Did you encounter any bugs?
* Were there too many/few false negatives?
* Was the action bar an adequate way to report information? If not, what alternatives would you suggest? (sounds, chat, bossbar with how close, etc.)