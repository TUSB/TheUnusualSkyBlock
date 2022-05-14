#> debug:tusb_memory_plus/load_skill/job
#スコアからスキルをロード
#SkillID = 職業ID * 100 + 習得Lv
#職業を選択
execute if score _ _ matches 100..199 run function debug:tusb_memory_plus/load_skill/knight
execute if score _ _ matches 200..299 run function debug:tusb_memory_plus/load_skill/ninja
execute if score _ _ matches 300..399 run function debug:tusb_memory_plus/load_skill/hunter
execute if score _ _ matches 400..499 run function debug:tusb_memory_plus/load_skill/white_mage
execute if score _ _ matches 500..599 run function debug:tusb_memory_plus/load_skill/black_mage
execute if score _ _ matches 600..699 run function debug:tusb_memory_plus/load_skill/summoner
execute if score _ _ matches 700..799 run function debug:tusb_memory_plus/load_skill/puppet_master
execute if score _ _ matches 800..899 run function debug:tusb_memory_plus/load_skill/thief
execute if score _ _ matches 900..999 run function debug:tusb_memory_plus/load_skill/common1
execute if score _ _ matches 1000..1999 run function debug:tusb_memory_plus/load_skill/common2
#スキルを選択
scoreboard players set _ Calc 100
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:0}}]
execute if score _ _ matches 1 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:1}}]
execute if score _ _ matches 2 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:2}}]
execute if score _ _ matches 3 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:3}}]
execute if score _ _ matches 4 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:4}}]
execute if score _ _ matches 5 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:5}}]
execute if score _ _ matches 6 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:6}}]
execute if score _ _ matches 7 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:7}}]
execute if score _ _ matches 8 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:8}}]
execute if score _ _ matches 9 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:9}}]
execute if score _ _ matches 10 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:10}}]
execute if score _ _ matches 11 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:11}}]
execute if score _ _ matches 12 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:12}}]
execute if score _ _ matches 13 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:13}}]
execute if score _ _ matches 14 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:14}}]
execute if score _ _ matches 15 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:15}}]
execute if score _ _ matches 16 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:16}}]
execute if score _ _ matches 17 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:17}}]
execute if score _ _ matches 18 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:18}}]
execute if score _ _ matches 19 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:19}}]
execute if score _ _ matches 20 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:20}}]
execute if score _ _ matches 21 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:21}}]
execute if score _ _ matches 22 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:22}}]
execute if score _ _ matches 23 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:23}}]
execute if score _ _ matches 24 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:24}}]
execute if score _ _ matches 25 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:25}}]
execute if score _ _ matches 26 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:26}}]
execute if score _ _ matches 27 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:27}}]
execute if score _ _ matches 28 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:28}}]
execute if score _ _ matches 29 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:29}}]
execute if score _ _ matches 30 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:30}}]
execute if score _ _ matches 31 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:31}}]
execute if score _ _ matches 32 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:32}}]
execute if score _ _ matches 33 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:33}}]
execute if score _ _ matches 34 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:34}}]
execute if score _ _ matches 35 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:35}}]
execute if score _ _ matches 36 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:36}}]
execute if score _ _ matches 37 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:37}}]
execute if score _ _ matches 38 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:38}}]
execute if score _ _ matches 39 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:39}}]
execute if score _ _ matches 40 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:40}}]
execute if score _ _ matches 41 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:41}}]
execute if score _ _ matches 42 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:42}}]
execute if score _ _ matches 43 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:43}}]
execute if score _ _ matches 44 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:44}}]
execute if score _ _ matches 45 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:45}}]
execute if score _ _ matches 46 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:46}}]
execute if score _ _ matches 47 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:47}}]
execute if score _ _ matches 48 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:48}}]
execute if score _ _ matches 49 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:49}}]
execute if score _ _ matches 50 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:50}}]
execute if score _ _ matches 51 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:51}}]
execute if score _ _ matches 52 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:52}}]
execute if score _ _ matches 53 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:53}}]
execute if score _ _ matches 54 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:54}}]
execute if score _ _ matches 55 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:55}}]
execute if score _ _ matches 56 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:56}}]
execute if score _ _ matches 57 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:57}}]
execute if score _ _ matches 58 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:58}}]
execute if score _ _ matches 59 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:59}}]
execute if score _ _ matches 60 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:60}}]
execute if score _ _ matches 61 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:61}}]
execute if score _ _ matches 62 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:62}}]
execute if score _ _ matches 63 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:63}}]
execute if score _ _ matches 64 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:64}}]
execute if score _ _ matches 65 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:65}}]
execute if score _ _ matches 66 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:66}}]
execute if score _ _ matches 67 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:67}}]
execute if score _ _ matches 68 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:68}}]
execute if score _ _ matches 69 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:69}}]
execute if score _ _ matches 70 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:70}}]
execute if score _ _ matches 71 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:71}}]
execute if score _ _ matches 72 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:72}}]
execute if score _ _ matches 73 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:73}}]
execute if score _ _ matches 74 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:74}}]
execute if score _ _ matches 75 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:75}}]
execute if score _ _ matches 76 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:76}}]
execute if score _ _ matches 77 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:77}}]
execute if score _ _ matches 78 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:78}}]
execute if score _ _ matches 79 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:79}}]
execute if score _ _ matches 80 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:80}}]
execute if score _ _ matches 81 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:81}}]
execute if score _ _ matches 82 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:82}}]
execute if score _ _ matches 83 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:83}}]
execute if score _ _ matches 84 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:84}}]
execute if score _ _ matches 85 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:85}}]
execute if score _ _ matches 86 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:86}}]
execute if score _ _ matches 87 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:87}}]
execute if score _ _ matches 88 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:88}}]
execute if score _ _ matches 89 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:89}}]
execute if score _ _ matches 90 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:90}}]
execute if score _ _ matches 91 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:91}}]
execute if score _ _ matches 92 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:92}}]
execute if score _ _ matches 93 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:93}}]
execute if score _ _ matches 94 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:94}}]
execute if score _ _ matches 95 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:95}}]
execute if score _ _ matches 96 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:96}}]
execute if score _ _ matches 97 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:97}}]
execute if score _ _ matches 98 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:98}}]
execute if score _ _ matches 99 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:99}}]
