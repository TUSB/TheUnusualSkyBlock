### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:arrow",CustomName:'{"translate":"5WAYアロー","color":"#FFFFFF"}',life:1200,Fire:30000s,Color:43877,custom_potion_effects:[{id:"instant_damage",amplifier:0b,duration:1}],PortalCooldown:120,Tags:[DelayedData,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Speed:1.8d}]}
