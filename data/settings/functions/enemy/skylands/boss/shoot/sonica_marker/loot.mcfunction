### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Small:true,Invulnerable:true,Invisible:true,PortalCooldown:10,DeathLootTable:"empty",Tags:[Mob,DelayedData,CallOnInit,CooldownRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:64,Chance:1d},{Loot:"item:item/gold_nugget/mystic/6",Count:3,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Ground,Summon,BlackTeleportPot,LootInit]}]}
