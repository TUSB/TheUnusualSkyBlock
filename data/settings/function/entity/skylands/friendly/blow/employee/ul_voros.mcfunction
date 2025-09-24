### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnInit,AnalyseLog,"UpdateOffers"],CustomName:'{"translate":"《隠れ行商・召喚類》ウル・ボロス","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,Silent:true,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"nitwit",type:"plains"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{SpawnTags:[Skylands,Friendly,Blow,Employee,UlVoros]}}},{},{},{}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s無限奈落を管理","with":[{"translate":"【能力：取引・無敵】","color":"#00FF00"}],"color":"#FF0000","bold":true,"obfuscated":true},{"translate":"するの疲れるからたまには現世で息抜きしたいなって。","color":"dark_gray","obfuscated":false}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Skylands,Friendly,Blow,Employee,UlVorosLines]}]}
