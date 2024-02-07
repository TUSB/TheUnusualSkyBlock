### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,0f],translation:[0f,-0.15f,0f],scale:[0.75f,0.75f,0.75f]},Tags:[DelayedData,HasAI,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1004}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Sky,Shoot,Tippy,TpBody]}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"},{Name:"Function",Tags:[Global,Event,Function,CommonExe,PassengersKill]}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:200,Current:60},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Direction:[0f,90f],Speed:0.6d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Shoot,Tippy,Sound]}]}]}]}
