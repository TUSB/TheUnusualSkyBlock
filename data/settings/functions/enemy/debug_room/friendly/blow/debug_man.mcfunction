### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"デバッグマン","color":"#FFFFFF"}',NoGravity:true,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
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
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"テストMOBだよ"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",Start:true,Speed:{Set:0d},Gravity:{Set:0d}},{Name:"Message",Message:'{"text":"==========開始地点=========="}'},{Name:"SmartMotion",Start:true,Speed:{Set:0d}}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:16,Max:16,Current:16},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"ChangeTurn",Set:2},{Name:"ChangeTurn",Set:3}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"Message",Message:'{"text":"CallSkill 3-1"}'},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[35f,0f]},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:2d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:30d,Range:70d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:4}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"Message",Message:'{"text":"CallSkill 4-1"}'},{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-35f,0f]},{Name:"Direction",Speed:1d},{Name:"Rotation",Target:{Look:"Self"}},{Name:"Direction",Speed:2d},{Name:"Facing",Target:{Look:"Self"}},{Name:"Rotation",Flip:true},{Name:"Direction",Target:{Look:"Self"}}],Name:"SmartMotion",TP:true,Speed:{Set:30d,Range:70d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:4}]}]},{Index:4,Skill:[{Interval:{Min:16,Max:16,Current:16},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"CallSkill 5-1"}'},{Name:"SmartMotion",Speed:{Set:0d}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
