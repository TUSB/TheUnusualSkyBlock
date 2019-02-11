##############################
### スライムビートル召喚 - Global Ground Shoot
##############################

summon minecraft:cave_spider ~ ~1 ~ {AbsorptionAmount:200f,DeathLootTable:"loot_manager:empty",Tags:["HasSkill","Call","Event","SlimeBall"],Attributes:[{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:2d,UUIDLeast:1l},{Amount:50d,UUIDLeast:3l},{Amount:45d,UUIDLeast:4l}]}],CustomName:"{\"text\":\"スライムビートル\"}",Passengers:[{id:"minecraft:slime",AbsorptionAmount:200f,DeathLootTable:"loot_manager:empty",Size:0,CustomName:"{\"text\":\"スライム\"}"}]}
