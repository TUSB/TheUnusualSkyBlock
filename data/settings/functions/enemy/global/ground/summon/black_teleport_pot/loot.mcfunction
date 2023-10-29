### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Small:true,Invulnerable:true,Invisible:true,PortalCooldown:10,DeathLootTable:"empty",Tags:[Mob,DelayedData,CallOnInit,CooldownRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/vanilla_item/tier_all/nether_star",Count:1,Chance:1d},{Loot:"item:group/vanilla_item/tier_all/nether_star",Count:1,Chance:1d},{Loot:"item:group/vanilla_item/tier_all/nether_star",Count:1,Chance:1d},{Loot:"item:group/vanilla_item/tier_all/nether_star",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Ground,Summon,BlackTeleportPot,LootInit]}]}
