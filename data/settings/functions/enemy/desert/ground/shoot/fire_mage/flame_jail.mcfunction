### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,CustomName:'{"translate":"フレイムジェイル","color":"#FFFFFF","bold":true}',Invisible:1b,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,Flame]},{Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,FlameJailDebuff]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,FlameJailAppearance]}]}],Exit:{Time:100,TimeCount:100}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
