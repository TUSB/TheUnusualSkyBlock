### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",CustomName:'{"translate":"メイジサポーター","color":"#FFFFFF","bold":true}',Silent:true,PortalCooldown:600,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 64d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

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
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,LaserTurretAppearance]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:180,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Laser",Laser:"FrozenLaser",Loop:25},{Name:"Function",Tags:[TocultColde,Ground,Shoot,IceMage,LaserTurretSound]}]}],Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}},{Index:2,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Move:{Front:-0.25d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:5d,IgnoreBlocks:true}}]}}]}
