### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"バナナ・ガベージャ","color":"#FFFFFF"}',Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],Tags:[Mob,DelayedData,HasAI,CallOnAttack,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;11053056]},CustomModelData:1004}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier1/mix",Count:1,Chance:0.3d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Damage",MP:{MP:50,Percent:true},Distance:{Max:2d},AEC:{Particle:"dust",Color:16766255,Duration:10,Radius:1f,Effects:[{Id:1b,Amplifier:100b,Duration:5,ShowParticles:false}]}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:17d}}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-4f,-4f],DirectionRange:[8f,8f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,BananaGarbager,BananaBullet],Level:1}]]}]},{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d}},{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:16d}}],Name:"ChangeTurn",Set:1}]}]}]}
