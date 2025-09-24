### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"パンプキンキッド","color":"#FF0000","bold":true}',IsBaby:true,active_effects:[{id:"minecraft:jump_boost",amplifier:10b,duration:-1},{id:"minecraft:invisibility",amplifier:127b,duration:-1}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf],HandDropChances:[-Infinityf,-Infinityf],HandItems:[{components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:knockback":5,"minecraft:fire_aspect":5}}},id:"minecraft:golden_hoe",count:1},{}],ArmorItems:[{components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0},id:"minecraft:leather_boots",count:1},{components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0},id:"minecraft:leather_leggings",count:1},{components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0},id:"minecraft:leather_chestplate",count:1},{components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:feather_falling":0}}},id:"minecraft:jack_o_lantern",count:1}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 3d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s身長が低いことが最近の悩み。爆殺してストレスを和らげるのが日課である。","with":[{"translate":"【能力：コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,Attributes,MovementSpeedRandom],MinSpeed:0,RangeSpeed:30}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:80,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,PumpkinKid,Mortar],Level:1}],[{Tags:[Global,Ground,Shoot,PumpkinKid,MortarAec],Level:1}]]}],MP:15}]}]}
