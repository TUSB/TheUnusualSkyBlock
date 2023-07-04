### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"シルバーソーサラー","color":"#FFFFFF","bold":true}',Particle:"block air",Radius:0.001f,Duration:45,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeInit]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeRange]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeSetstart]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeSetmove]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeDamage1]}],Once:1},{Interval:{Min:1,Max:1,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,SilverSorcerer,SpikeFinish]}],Once:1}]}]}