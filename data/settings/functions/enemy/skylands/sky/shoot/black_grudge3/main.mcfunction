### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:phantom",CustomName:'{"translate":"黒怨之飛翔者","color":"#FF0000","bold":true}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,CallOnTick,CooldownRequired,"BlackGrudge_C"],Size:4,PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 40d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 50
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 125
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Condition:[{Name:"RandomChance",Chance:0.1d}],Name:"Function",Tags:[Skylands,Ground,Blow,BlackGrudge,Debuff1]}],Tick:[{Name:"MergeNBT",NBT:{Fire:0}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:160,Max:200,Current:100},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[Skylands,Sky,Shoot,BlackGrudge3,Flame],Level:44}]]}]}],Exit:{Loop:{Max:3,Current:3}}}]}
