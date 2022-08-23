### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",CustomName:'{"translate":"デバッグマン","color":"#FFFFFF"}',NoGravity:true,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit]}
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
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Message",Message:'{"text":"==========開始地点=========="}'},{Name:"SmartMotion",Start:true,Speed:{Set:0d}}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"CallSkill 1-1"}'}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:60,Current:60},Call:[{Name:"Message",Message:'{"text":"CallSkill 1-2"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"CallSkill 2-1"}'}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:60,Current:60},Call:[{Name:"Message",Message:'{"text":"CallSkill 2-2"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"CallSkill 3-1"}'}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:60,Current:60},Call:[{Name:"Message",Message:'{"text":"CallSkill 3-2"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:4,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"CallSkill 4-1"}'}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:60,Current:60},Call:[{Name:"Message",Message:'{"text":"CallSkill 4-2"}'}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Message",Message:'{"text":"CallSkill 5-1"}'}]}],Exit:{Loop:{Max:1,Current:1}}}]}
