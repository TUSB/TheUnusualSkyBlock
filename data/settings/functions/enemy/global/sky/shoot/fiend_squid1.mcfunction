### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",CustomNameVisible:true,CustomName:'{"translate":"アオリイカ","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:1600,Tags:[Mob,DelayedData,DelayedData,HasAI,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 30
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Passenger:{Type:"up",Check:false,Call:[{Name:"Kill"}]},Turn:[{Target:{Look:"player",Radius:32d},Skill:[{Interval:{Min:60,Max:75,Current:60},Call:[{Execute:"All",Name:"Step",Direction:[-30f,0f],DirectionRange:[60f,0f],Speed:3.9d,SpeedRange:5.7d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}},{Name:"ChangeTurn",Loop:1,Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:8}}]}]}]},{Target:{Look:"player",Radius:32d},Skill:[{Interval:{Min:40,Max:60,Current:50},Call:[{Execute:"All",Name:"Step",Direction:[-40f,0f],DirectionRange:[80f,0f],Speed:4.5d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}},{Name:"ChangeTurn",Loop:1,Condition:[{Name:"RandomChance",Chance:0.25d}]}]}],Exit:{Time:200,TimeCount:200}},{Target:{Look:"player",Radius:32d},Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:5,Current:5},Call:[{Name:"Message",Message:'{"text":"墨発射"}',Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:10}},{Name:"MP",MP:5}]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
