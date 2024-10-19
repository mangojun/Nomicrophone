# 플레이어마다 아이디 부여
execute as @a unless score @s nomic.data = @s nomic.data run tag @s add nomic.new
execute store result score @n[tag=nomic.new] nomic.data run scoreboard players get .next nomic.data
execute as @n[tag=nomic.new] run scoreboard players add .next nomic.data 1
execute as @n[tag=nomic.new] store result storage nomic:temp id int 1 run scoreboard players get @n[tag=nomic.new] nomic.data

# 플레이어 초기 설정
execute as @n[tag=nomic.new] at @s run function nomic:player/init with storage nomic:temp

# 플레이어 루프
function nomic:_/loop_player {index: 0}