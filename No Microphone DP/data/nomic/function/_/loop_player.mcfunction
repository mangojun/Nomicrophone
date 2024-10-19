# 끝나면 루프 종료
$execute unless data storage nomic:global data[$(index)] run scoreboard players set .index nomic.data 0
$execute unless data storage nomic:global data[$(index)] run return 0

# 루프
$function nomic:player/main with storage nomic:global data[$(index)]

# 다음 플레이어로 이동
execute store result storage nomic:temp index int 1 run scoreboard players add .index nomic.data 1
function nomic:_/loop_player with storage nomic:temp