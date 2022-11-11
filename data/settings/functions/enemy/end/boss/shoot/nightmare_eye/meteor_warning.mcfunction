### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"ナイトメアメテオの警告","color":"#FFFFFF"}',PortalCooldown:40,Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[End,Boss,Shoot,NightmareEye,MeteorOmenDirection]}]}],Exit:{Loop:{Max:5,Current:5}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
