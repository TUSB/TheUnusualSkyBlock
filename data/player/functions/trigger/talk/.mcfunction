### 村人会話時処理

### 取引更新
execute positioned ^ ^ ^3 as @e[tag=UpdateOffers,distance=..5,sort=nearest,limit=1] run function player:trigger/talk/update_offers
### トリガーリセット
scoreboard players reset @s Talk
