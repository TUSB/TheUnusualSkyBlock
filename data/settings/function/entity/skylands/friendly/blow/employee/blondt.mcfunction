### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[DelayedData,CallOnInit,AnalyseLog,"UpdateOffers"],CustomName:'{"translate":"《防具屋》ブロント","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"armorer",type:"plains"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",count:1,components:{"minecraft:custom_data":{SpawnTags:[Skylands,Friendly,Blow,Employee,Blondt]}}},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:item_name":"[\"剣士\"]","minecraft:profile":{id:[I;0,0,0,1],properties:[{name:"textures",value:"eyJ0aW1lc3RhbXAiOjE0NTk0MzQxMjI1MTUsInByb2ZpbGVJZCI6IjRiMjJmMDliNTM4ZjQ3ZDdiN2VhYzc5YWIyMjI3NmZkIiwicHJvZmlsZU5hbWUiOiJhbm1pbm1ha3VyYSIsInNpZ25hdHVyZVJlcXVpcmVkIjp0cnVlLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjVjMjU2ZWJjM2JhZDI5ZTNiYWYwYTBhZmI5M2I5MTE2N2U3NjZiZGMyODU1YTljZDcxZjg3ZTg2NTg3ZGM5In19fQ=="}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s何いきなりアナライズかけて来てるわけ？ おれは謙虚で人気者の一級商人だから貧弱一般人には助言を惜しまない。「もうついたのか！」「はやい！」「きた！盾きた！」「メイン盾きた！」「これで勝つる！」と大歓迎状態になる。盾なしはアワレにも死んでいた。やはり攻撃や弾が来た時盾を前方に構える事でダメージを無効化できるのは格が違った！ 盾を持たぬジョブは未来はにい。アドバンスのお礼はギガントエメラルド9こで良い。","with":[{"translate":"【能力：取引・無敵】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Skylands,Friendly,Blow,Employee,BlondtLines]}]}
