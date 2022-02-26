### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Duration:200,PortalCooldown:100,Tags:[DelayedData,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Ground,Blow,GhostSheep,WoolPlace]}],Time:[{Name:"Function",Tags:[Skylands,Ground,Blow,GhostSheep,WoolBreak]}]}
