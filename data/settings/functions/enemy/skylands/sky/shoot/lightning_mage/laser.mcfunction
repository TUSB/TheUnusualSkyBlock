### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,CustomName:'{"translate":"ライトニングレーザー","color":"#FFFFFF","bold":true}',Invisible:1b,NoGravity:1b,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
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
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f]}],Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,LaserAppearance]}],TurnCount:3,Turn:[{Index:1,Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:1b},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Time:30,TimeCount:30}},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Laser",Laser:"LightningLaser",Loop:100,Argument:{BypassArmor:true,Effectiveness:50,DeathCause:'[{"translate":"%1$sは%2$sに貫かれた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'}},{Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,LaserActDirection]},{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f]}],Name:"Function",Tags:[Skylands,Sky,Shoot,LightningMage,LaserAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:60,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
