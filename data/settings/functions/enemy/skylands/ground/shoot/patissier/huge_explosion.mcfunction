### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ラスト・エクスプロージョン","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI,CallOnInit,TickingRequired,AnalyseLog,HideLevel],Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:120}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 15
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 15
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s強度...測定不能！ ※当たったらもれなく死にます。","with":[{"translate":"【能力：範囲攻撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"DelayAction",Tags:["Affect","HugeExplosion01"]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Affect","HugeExplosion02"]}],Once:1}]}]}
