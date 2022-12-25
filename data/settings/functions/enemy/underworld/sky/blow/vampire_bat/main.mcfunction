### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",CustomName:'{"translate":"吸血コウモリ","color":"#FF0000","bold":true}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 30d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.2d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -25
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}]}},{Index:2,Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}},{Name:"MinHP",Global:true,Inverse:true,HP:50,Percent:true},{Name:"HP",HP:-10},{Name:"RandomChance",Global:true,Chance:0.2d}],Name:"Damage",Player:{Damage:10d,DamageType:[Global],BypassArmor:true,BypassResistance:true},Distance:{Min:0.1d,Max:5d},AEC:{Particle:"falling_dust redstone_block",Duration:1,Radius:0.1f}},{Name:"Function",Tags:[Underworld,Sky,Blow,VampireBat,NormalAttack]}]},{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}},{Name:"MinHP",Global:true,HP:50,Percent:true}],Name:"Damage",Player:{Damage:10d,DamageType:[Global],BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは%2$sのドリンクサーバーになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Min:0.1d,Max:5d},AEC:{Particle:"falling_dust redstone_block",Duration:1,Radius:0.1f}},{Name:"Function",Tags:[Underworld,Sky,Blow,VampireBat,BloodsuckingAttack]}],MP:5}],Exit:{Loop:{Max:1,Current:1},Time:20,TimeCount:20}},{Index:3,Target:{Look:"Player",Radius:-0.1d,IgnoreBlocks:1b},Move:{Front:-0.5d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:1,Current:1}}}]}
