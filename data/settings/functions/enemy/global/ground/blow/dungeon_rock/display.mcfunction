### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Tags:[DelayedData,HasAI,"Omoiwa"],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"オモイワー","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]'}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:127,Explosion:{Type:0,Colors:[I;2500134]}}},item_display:"none",start_interpolation:-1,interpolation_duration:1,transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f],translation:[0.0f,-1.0f,0.0f],left_rotation:[0.0f,0.924f,-0.383f,0.0f]}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]}}
