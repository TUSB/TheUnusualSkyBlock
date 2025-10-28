### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:firework_rocket",CustomName:'{"translate":"ドンチャン花火","color":"#FF8000"}',Life:0,LifeTime:40,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {FireworksItem:{id:"minecraft:firework_star",Count:1,components:{"minecraft:custom_model_data":126,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;10551102]},Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16777215],FadeColors:[I;10551102]}]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Friendly,Shoot,Donchian,BulletColorParticle]}],Tick:[{Condition:[{Name:"random_chance",Chance:0.25d}],Name:"function",Tags:[Global,Friendly,Shoot,Donchian,TrackEnemyExcludTrap]}]}
