### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,HideLevel],CustomName:'{"translate":"Grumm","color":"#000000"}',IsBaby:true,Silent:true,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:18,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,61,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjI2YjM4OTRhYTkwYmEwNGQwZGI4OWE2ZGQ2MDIxMGViYjNhZTZmZWI1MGY3NGQ4NTk4ZDU2Y2M4NjYyODIxZiJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 60
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 60
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier5/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:30,IgnoreBlocks:false}}]}},{Index:2,Skill:[{Call:[{Name:"DelayAction",Tags:[Casting,Cast,Normal]}]},{Interval:{Min:40,Max:40,Current:40},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:24d,IgnoreBlocks:false}}],Settings:[{Name:"Align",Vector:[X,Y,Z],Center:[X,Z]},{Name:"Direction",Direction:[0f,-90f],Absolute:{Vertical:true},Speed:2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,SecurityPoleDual,Body],Level:1}],[{Tags:[Global,Ground,Shoot,SecurityPoleDual,Main],Level:1}]],Count:1},{Name:"Kill"}]}],Exit:{Loop:{Max:2,Current:2}}}]}
