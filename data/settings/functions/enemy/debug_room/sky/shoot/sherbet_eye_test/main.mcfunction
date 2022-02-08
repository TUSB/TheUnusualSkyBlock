### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],Tags:[Mob,DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 60d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 70d
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
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:100,Current:100},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"translate":"[1]:成功","color":"#FFFFFF"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:10,Max:10,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,SherbetEyeTest,Bullet],Level:1}],[{Tags:[DebugRoom,Sky,Shoot,SherbetEyeTest,BulletDirection],Level:1}]],Count:1},{Name:"Message",Message:'{"translate":"[2-1]:成功","color":"#FFFFFF"}'}]},{Interval:{Min:10,Max:10,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,SherbetEyeTest,Bullet],Level:1}],[{Tags:[DebugRoom,Sky,Shoot,SherbetEyeTest,BulletDirection],Level:1}]],Count:1},{Name:"Message",Message:'{"translate":"[2-2]:成功","color":"#FFFFFF"}'}]},{Interval:{Min:10,Max:10,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,SherbetEyeTest,Bullet],Level:1}],[{Tags:[DebugRoom,Sky,Shoot,SherbetEyeTest,BulletDirection],Level:1}]],Count:1},{Name:"Message",Message:'{"translate":"[2-3]:成功","color":"#FFFFFF"}'}]}],Exit:{Loop:{Max:3,Current:3}}}]}
