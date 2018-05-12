tellraw @a[m=adventure,tag=!Adv] {"text":"ブロックの設置・破壊制限が解除された。","color":"dark_aqua"}
gamemode survival @a[m=adventure,tag=!Adv]
tellraw @a[m=survival,tag=Adv] {"text":"ブロックの設置・破壊が制限された。","color":"red"}
gamemode adventure @a[m=survival,tag=Adv]
