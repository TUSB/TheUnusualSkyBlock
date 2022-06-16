### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",CustomName:'{"translate":"吸血コウモリ"}',PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CooldownRequired,HasLootTable]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier1/mix",Count:1,Chance:0.3d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Step",Speed:0.35d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:40d,IgnoreBlocks:true}}]}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:1d,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"Player",Radius:10d,IgnoreBlocks:1b},Move:{Front:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}},{Name:"MinHP",Global:true,Inverse:true,HP:50,Percent:true},{Name:"HP",HP:-10},{Name:"RandomChance",Global:true,Chance:0.2d}],Name:"Damage",Player:{Damage:10d,DamageType:[Global]},Distance:{Min:0.1d,Max:5d},AEC:{Particle:"falling_dust redstone_block",Duration:1,Radius:0.1f}},{Name:"Function",Tags:[Underworld,Sky,Blow,VampireBat,NormalAttack]}]},{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}},{Name:"MinHP",Global:true,HP:50,Percent:true}],Name:"Damage",Player:{Damage:10d,DamageType:[Global]},Distance:{Min:0.1d,Max:5d},AEC:{Particle:"falling_dust redstone_block",Duration:1,Radius:0.1f}},{Name:"Function",Tags:[Underworld,Sky,Blow,VampireBat,BloodsuckingAttack]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
