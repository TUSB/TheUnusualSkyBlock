### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",CustomName:'{"translate":"予測者","color":"#FF0000","bold":true}',ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:6666,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:1001,Explosion:{Type:0,Colors:[I;13285631]}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 650
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:8,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeStatus",ElementFire:{Set:200},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:3,Current:6},Call:[{Name:"Teleport",Target:{Look:"player",Radius:24,IgnoreBlocks:1b},Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:200},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:3,Current:6},Call:[{Name:"Teleport",Target:{Look:"player",Radius:24,IgnoreBlocks:1b},Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}]},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:200},ElementLight:{Set:0},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:3,Current:6},Call:[{Name:"Teleport",Target:{Look:"player",Radius:24,IgnoreBlocks:1b},Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}]},{Index:5,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:200},ElementDark:{Set:0}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:3,Current:6},Call:[{Name:"Teleport",Target:{Look:"player",Radius:24,IgnoreBlocks:1b},Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}]},{Index:6,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeStatus",ElementFire:{Set:0},ElementIce:{Set:0},ElementLightning:{Set:0},ElementLight:{Set:0},ElementDark:{Set:200}}]},{Interval:{Min:5,Max:20,Current:20},Loop:{Max:3,Current:6},Call:[{Name:"Teleport",Target:{Look:"player",Radius:24,IgnoreBlocks:1b},Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Loop:1}]}]},{Index:7,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"KILL呼び出し"}'}]}]},{Index:8,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:8,Current:8},Call:[{Name:"Teleport",Target:{Look:"player",Radius:24,IgnoreBlocks:1b},Direction:[-360f,-15f],DirectionRange:[720f,0f],Speed:8d,SpeedRange:16d}]}]}]}
