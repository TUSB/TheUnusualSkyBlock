#> player:trigger/talk/
### 村人会話時処理

### 取引更新
execute positioned ^ ^ ^2 as @e[tag=UpdateOffers,distance=..5] run function player:trigger/talk/update_offers
### フレンドリー化
execute positioned ^ ^ ^2 run team join Friendly @e[tag=WanderingVillager,distance=..5]
### トリガーリセット
scoreboard players reset @s Talk
