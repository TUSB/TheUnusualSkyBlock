### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"冷凍銃","color":"#FF0000"}',Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":1239039},Count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":1239039},Count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":1239039},Count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1,0,5,0],properties:[{name:"textures",value:"eyJ0aW1lc3RhbXAiOjE0NjUzODQ1OTg0MzcsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9iMWZmODg4M2U2MzVmM2E5N2NhODcxMjk0ODgwMWU2ODk1YjI2OTZjMDY1ZWM3YmRkNGY0YmFlZGRmYmEyNDYifX19"}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

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
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"function",Tags:[Global,Event,Function,DamageSound,Ice]}],TurnCount:2,Turn:[{Index:1,Rotate:[0f,0f],Skill:[{Interval:{Min:20,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"laser",Laser:"FrozenLaser",Loop:120},{Name:"function",Tags:[TocultColde,Ground,Shoot,FrozenLaser,Sound]}],MP:10}],Exit:{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"change_turn",Set:1}]}],Exit:{Condition:[{Name:"has_target",Inverse:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}}]}
