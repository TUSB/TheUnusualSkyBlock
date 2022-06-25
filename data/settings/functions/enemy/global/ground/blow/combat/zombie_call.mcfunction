### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Small:1b,Invulnerable:1b,Invisible:0b,Marker:1b,PortalCooldown:40,DeathLootTable:"empty",Tags:[DelayedData,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"DelayAction",Tags:["ZombieCall","ArmorStand"]}]}
