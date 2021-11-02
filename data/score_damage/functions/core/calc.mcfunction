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
        scoreboard players operation $CalcA ScoreDamageCore *= $20 ScoreDamageCore
        scoreboard players operation $CalcA ScoreDamageCore /= $100 ScoreDamageCore
    # $CalcB.3 = $Toughness( * 100) * 100 / 4 + 2 * 100 * 100;
        scoreboard players operation $CalcB.3 ScoreDamageCore = $Toughness ScoreDamageCore
        scoreboard players operation $CalcB.3 ScoreDamageCore *= $25 ScoreDamageCore
        scoreboard players operation $CalcB.3 ScoreDamageCore += $20000 ScoreDamageCore
    # $CalcB.2 = $damage( * 100) * 100 * 100 / $CalcB.3( * 100 * 100);
        scoreboard players operation $CalcB.2 ScoreDamageCore = $Damage ScoreDamageCore
        scoreboard players operation $CalcB.2 ScoreDamageCore *= $10000 ScoreDamageCore
        scoreboard players operation $CalcB.2 ScoreDamageCore /= $CalcB.3 ScoreDamageCore
    # $CalcB = $DefensePoints( * 100) - $CalcB.2( * 100);
        scoreboard players operation $CalcB ScoreDamageCore = $DefensePoints ScoreDamageCore
        scoreboard players operation $CalcB ScoreDamageCore -= $CalcB.2 ScoreDamageCore
    # $CalcC = min(max($CalcA( * 100), $CalcB( * 100)), 20 * 100) * 100 / 25;
        scoreboard players operation $CalcC ScoreDamageCore = $CalcA ScoreDamageCore
        scoreboard players operation $CalcC ScoreDamageCore > $CalcB ScoreDamageCore
        scoreboard players operation $CalcC ScoreDamageCore < $2000 ScoreDamageCore
        scoreboard players operation $CalcC ScoreDamageCore *= $4 ScoreDamageCore
    # $CalcD = (1 * 100 * 100 - $CalcC( * 100 * 100)) / 10;
        scoreboard players operation $CalcD ScoreDamageCore = $10000 ScoreDamageCore
        scoreboard players operation $CalcD ScoreDamageCore -= $CalcC ScoreDamageCore
        scoreboard players operation $CalcD ScoreDamageCore /= $10 ScoreDamageCore
    # $damage = $damage( * 100) * $CalcD( * 100 * 10) / 10;
        scoreboard players operation $Damage ScoreDamageCore *= $CalcD ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore /= $10 ScoreDamageCore
# エンチャントによる軽減計算部
    # $EPF = min(20, $EPF) / 100 / 25
        scoreboard players operation $EPF ScoreDamageCore < $20 ScoreDamageCore
        scoreboard players operation $EPF ScoreDamageCore *= $4 ScoreDamageCore
    # $CalcE = 1 * 100 - $EPF( * 100)
        scoreboard players operation $CalcE ScoreDamageCore = $100 ScoreDamageCore
        scoreboard players operation $CalcE ScoreDamageCore -= $EPF ScoreDamageCore
    # $damage = $damage( * 100 * 100) * $CalcE( * 100) / 100
        scoreboard players operation $Damage ScoreDamageCore *= $CalcE ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
# 耐性エフェクトによる軽減計算部
    # $Resistance *= min(5, $Resistance) * 10 / 5
        scoreboard players operation $Resistance ScoreDamageCore < $5 ScoreDamageCore
        scoreboard players operation $Resistance ScoreDamageCore *= $2 ScoreDamageCore
    # $CalcF = 1 * 10 - $Resistance( * 10)
        scoreboard players operation $CalcF ScoreDamageCore = $10 ScoreDamageCore
        scoreboard players operation $CalcF ScoreDamageCore -= $Resistance ScoreDamageCore
    # $damage = $damage( * 100 * 100) * $CalcF( * 10) / 10
        scoreboard players operation $Damage ScoreDamageCore *= $CalcF ScoreDamageCore
        scoreboard players operation $Damage ScoreDamageCore /= $10 ScoreDamageCore
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