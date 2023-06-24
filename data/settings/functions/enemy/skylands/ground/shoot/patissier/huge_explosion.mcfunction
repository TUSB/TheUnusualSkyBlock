### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ラスト・エクスプロージョン","color":"#FF0000","bold":true}',Tags:[DelayedData,CallOnInit,TickingRequired,AnalyseLog,HideLevel],Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:120}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 15
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 15
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"強度...測定不能！ ※当たったらもれなく死にます。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"DelayAction",Tags:["Affect","HugeExplosion"]}]}
