### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnInit,AnalyseLog,"UpdateOffers"],CustomName:'{"translate":"《師範》ヘン・クーリー","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"weaponsmith",type:"savanna"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{SpawnTags:[FlyingIsland,Friendly,Blow,Employee,HenCooley]}}},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:item_name":"[\"忍者\"]","minecraft:profile":{id:[I;0,0,0,2],properties:[{name:"textures",value:"eyJ0aW1lc3RhbXAiOjE0NTk0MzQyNTgxNjAsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInRleHR1cmVzIjp7IlNLSU4iOnsidXJsIjoiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9kNjQ1NDJlOWZmYzFjMDg0N2I2MDExM2UxNjFmODNhZWZlMmQ4NzJiNTFiMmU0NzQ1MWUxODZlZTlhYWVkNjkifX19"}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s誰だ・・・このワシのヘソクリを盗ったのは・・・","with":[{"translate":"【能力：取引・無敵】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[FlyingIsland,Friendly,Blow,Employee,HenCooleyLines]}]}
