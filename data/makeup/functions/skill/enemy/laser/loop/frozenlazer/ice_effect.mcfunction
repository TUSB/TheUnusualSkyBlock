##プレイヤーが撃たれた時のの演出
#爆発のような演出
particle dust 0.8 0.8 1 5 ^ ^ ^ 1.5 1.5 1.5 0.1 30 force @a[tag=ShowParticles]

##ダメージ
#凍結
effect give @a[distance=..2.5] invisibility 5 4
#ウィザー
effect give @a[distance=..2.5] wither 10 1
