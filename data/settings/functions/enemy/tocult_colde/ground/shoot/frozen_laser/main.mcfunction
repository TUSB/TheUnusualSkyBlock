### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"冷凍光線","color":"#FFFFFF"}',Silent:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnAttack]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:1239039}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:1239039}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:1239039}},Count:1},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,5,0],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ1OTg0MzcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iMWZmODg4M2U2MzVmM2E5N2NhODcxMjk0ODgwMWU2ODk1YjI2OTZjMDY1ZWM3YmRkNGY0YmFlZGRmYmEyNDYifX19"}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Ice]}],TurnCount:2,Turn:[{Index:1,Rotate:[0f,0f],Skill:[{Interval:{Min:20,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Laser",Laser:"FrozenLaser",Loop:120},{Name:"Function",Tags:[TocultColde,Ground,Shoot,FrozenLaser,Sound]}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}}]}
