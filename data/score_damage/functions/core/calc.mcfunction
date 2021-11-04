#> score_damage:core/calc
#
# 与えるダメージを計算します
#
# @within function score_damage:core/attack

#> Temp
# @private
    #declare score_holder $CalcA
    #declare score_holder $CalcB
    #declare score_holder $CalcB.2
    #declare score_holder $CalcB.3
    #declare score_holder $CalcC
    #declare score_holder $CalcD
    #declare score_holder $CalcE
    #declare score_holder $CalcF

# 計算式:
# damage * (1 - min(20, max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))) / 25) * (1 - (min(20, cappedEPF) / 25)) * (1 - min(5, resistanceLv) / 5)

# 防御による軽減計算部
    # $CalcA = $DefensePoints( * 100) * 100 / 5 / 100;
        scoreboard players operation $CalcA ScoreDamageCore = $DefensePoints ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 20
        scoreboard players operation $CalcA ScoreDamageCore *= _ ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 100
        scoreboard players operation $CalcA ScoreDamageCore /= _ ScoreDamageCore
    # $CalcB.3 = $Toughness( * 100) * 100 / 4 + 2 * 100 * 100;
        scoreboard players operation $CalcB.3 ScoreDamageCore = $Toughness ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 25
        scoreboard players operation $CalcB.3 ScoreDamageCore *= _ ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 20000
        scoreboard players operation $CalcB.3 ScoreDamageCore += _ ScoreDamageCore
    # $CalcB.2 = $damage( * 100) * 100 * 100 / $CalcB.3( * 100 * 100);
        scoreboard players operation $CalcB.2 ScoreDamageCore = $Damage ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 10000
        scoreboard players operation $CalcB.2 ScoreDamageCore *= _ ScoreDamageCore
        scoreboard players operation $CalcB.2 ScoreDamageCore /= $CalcB.3 ScoreDamageCore
    # $CalcB = $DefensePoints( * 100) - $CalcB.2( * 100);
        scoreboard players operation $CalcB ScoreDamageCore = $DefensePoints ScoreDamageCore
        scoreboard players operation $CalcB ScoreDamageCore -= $CalcB.2 ScoreDamageCore
    # $CalcC = min(max($CalcA( * 100), $CalcB( * 100)), 20 * 100) * 100 / 25;
        scoreboard players operation $CalcC ScoreDamageCore = $CalcA ScoreDamageCore
        scoreboard players operation $CalcC ScoreDamageCore > $CalcB ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 2000
        scoreboard players operation $CalcC ScoreDamageCore < _ ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 4
        scoreboard players operation $CalcC ScoreDamageCore *= _ ScoreDamageCore
    # $CalcD = (1 * 100 * 100 - $CalcC( * 100 * 100)) / 10;
        scoreboard players set _ ScoreDamageCore 10000
        scoreboard players operation $CalcD ScoreDamageCore = _ ScoreDamageCore
        scoreboard players operation $CalcD ScoreDamageCore -= $CalcC ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 10
        scoreboard players operation $CalcD ScoreDamageCore /= _ ScoreDamageCore
    # $damage = $damage( * 100) * $CalcD( * 100 * 10) / 10;
        scoreboard players operation $Damage ScoreDamageCore *= $CalcD ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 10
        scoreboard players operation $Damage ScoreDamageCore /= _ ScoreDamageCore
# エンチャントによる軽減計算部
    # $EPF = min(20, $EPF) / 100 / 25
        scoreboard players set _ ScoreDamageCore 20
        scoreboard players operation $EPF ScoreDamageCore < _ ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 4
        scoreboard players operation $EPF ScoreDamageCore *= _ ScoreDamageCore
    # $CalcE = 1 * 100 - $EPF( * 100)
        scoreboard players set _ ScoreDamageCore 100
        scoreboard players operation $CalcE ScoreDamageCore = _ ScoreDamageCore
        scoreboard players operation $CalcE ScoreDamageCore -= $EPF ScoreDamageCore
    # $damage = $damage( * 100 * 100) * $CalcE( * 100) / 100
        scoreboard players operation $Damage ScoreDamageCore *= $CalcE ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 100
        scoreboard players operation $Damage ScoreDamageCore /= _ ScoreDamageCore
# 耐性エフェクトによる軽減計算部
    # $Resistance *= min(5, $Resistance) * 10 / 5
        scoreboard players set _ ScoreDamageCore 5
        scoreboard players operation $Resistance ScoreDamageCore < _ ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 2
        scoreboard players operation $Resistance ScoreDamageCore *= _ ScoreDamageCore
    # $CalcF = 1 * 10 - $Resistance( * 10)
        scoreboard players set _ ScoreDamageCore 10
        scoreboard players operation $CalcF ScoreDamageCore = _ ScoreDamageCore
        scoreboard players operation $CalcF ScoreDamageCore -= $Resistance ScoreDamageCore
    # $damage = $damage( * 100 * 100) * $CalcF( * 10) / 10
        scoreboard players operation $Damage ScoreDamageCore *= $CalcF ScoreDamageCore
        scoreboard players set _ ScoreDamageCore 10
        scoreboard players operation $Damage ScoreDamageCore /= _ ScoreDamageCore
# Reset
    scoreboard players reset $CalcA ScoreDamageCore
    scoreboard players reset $CalcB ScoreDamageCore
    scoreboard players reset $CalcB.2 ScoreDamageCore
    scoreboard players reset $CalcB.3 ScoreDamageCore
    scoreboard players reset $CalcC ScoreDamageCore
    scoreboard players reset $CalcD ScoreDamageCore
    scoreboard players reset $CalcE ScoreDamageCore
    scoreboard players reset $CalcF ScoreDamageCore
    scoreboard players reset $DefensePoints ScoreDamageCore
    scoreboard players reset $Toughness ScoreDamageCore
    scoreboard players reset $EPF ScoreDamageCore