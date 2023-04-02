### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",CustomName:'{"translate":"アオリイカ","color":"#FFFFFF"}',NoGravity:true,DeathTime:19s,Silent:true,ActiveEffects:[{Id:14,Amplifier:127b,Duration:2147483647,ShowParticles:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"up",Check:false,Call:[{Name:"Kill"}]},TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:75,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-30f,0f],DirectionRange:[60f,0f]}],Name:"Step",Speed:1.9d,SpeedRange:2.7d},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:16}}],Name:"ChangeTurn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:40,Max:60,Current:50},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-40f,0f],DirectionRange:[80f,0f]}],Name:"Step",Speed:3.5d},{Condition:[{Name:"RandomChance",Chance:0.25d}],Name:"ChangeTurn",Loop:1}]}],Exit:{Time:200,TimeCount:200}},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:4},Call:[{Condition:[{Name:"MP",MP:5,Percent:true}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:24d}},{Name:"Direction",Direction:[0f,0f],Speed:1d},{Name:"Rotation",Direction:[-7f,-12f],DirectionRange:[14f,9f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,FiendSquid,SquidInkBullet],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
