### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:husk",CustomName:'{"translate":"テストMOB","color":"#FFFFFF"}',Silent:1b,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnDamage]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b,tag:{Unbreakable:1b,Enchantments:[{}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,5,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ1OTg0MzcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iMWZmODg4M2U2MzVmM2E5N2NhODcxMjk0ODgwMWU2ODk1YjI2OTZjMDY1ZWM3YmRkNGY0YmFlZGRmYmEyNDYifX19"}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 12d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 5d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 250
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Blow,FinalAttack,FinalAttackPotion01],Level:1}]]}],Damage:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Execute:"Random",Name:"Step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d},{Name:"Step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:120,Max:240,Current:4},Loop:{Max:2,Current:2},Call:[{Name:"Function",Tags:[Global,Ground,Blow,Deidora,DeidoraWarcry]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:40,Max:40,Current:40},Loop:{Max:3,Current:3},Call:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:24}}],Execute:"Random",Name:"Step",Direction:[90f,-5f],Speed:1.5d},{Name:"Step",Direction:[-90f,-5f],Speed:1.5d}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[0f,-3f],Speed:3.0d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Target:{Look:"player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"Step",Direction:[0f,-90f],Speed:0.4d,SpeedRange:0.8d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}]},{Interval:{Min:80,Max:80,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24}}],Name:"Step",Direction:[0f,10f],Speed:2.0d}]}],Exit:{Loop:{Max:2,Current:2}}}]}
