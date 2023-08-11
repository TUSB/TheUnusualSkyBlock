#処理
  #島の個数(後で変更)
  scoreboard players set # _ 100

  #検出 オーバーワールド
    execute if entity @s[advancements={area:system/island_capture={overworld_test=true}}] run data modify storage area: capture.overworld.test set value true
  #検出 以下略


  #クリア数抽出 ディメンションごとに
  scoreboard players set _ Calc 0

  execute store result score _ _ run data get storage area: capture.overworld
  scoreboard players operation _ Calc += _ _


  #パーセント
  #係数定数
  scoreboard players set @s _ 100
  #計算
  scoreboard players operation # Calc = _ Calc
  scoreboard players operation # Calc *= @s _
  scoreboard players operation # Calc /= # _
#クリアを通知
  execute at @a run playsound minecraft:ui.toast.challenge_complete player @a
  title @a title [{"translate":"島 攻略率"},{"score":{"name": "_","objective": "Calc"}},"/",{"score":{"name": "#","objective": "_"}},"(",{"score":{"name": "#","objective": "Calc"}},"%)"]
#リセット
  advancement revoke @s only area:system/island_capture
