title @a subtitle [{"translate":"%1$s周目 ","color":"light_purple","with":[{"storage":"v13alpha:","nbt":"Loops"}]},{"translate":"クリア時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]}]
title @a title {"translate":"全てのスポナーを破壊した!!","color":"green"}

tellraw @a {"translate":"全てのスポナーを破壊した!!","color":"green"}
tellraw @a [{"translate":"%1$s周目 ","color":"light_purple","with":[{"storage":"v13alpha:","nbt":"Loops"}]},{"translate":"クリア時間:%1$s時間%2$s分%3$s秒","color":"gold","with":[{"score":{"name":"$Hours","objective":"Count"}},{"score":{"name":"$Minutes","objective":"Count"}},{"score":{"name":"$Seconds","objective":"Count"}}]}]

summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680,16748800,16772608],FadeColors:[I;2293504,16711918,65518]}]}}}}
summon firework_rocket ~ ~5 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680,16748800,16772608],FadeColors:[I;2293504,16711918,65518]}]}}}}
summon firework_rocket ~ ~5 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680,16748800,16772608],FadeColors:[I;2293504,16711918,65518]}]}}}}
