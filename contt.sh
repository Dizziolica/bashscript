read word1
read word2
read word3

lista=(${word1:0:1} ${word2:1:1} ${word3:2:1})

for i in ${lista[@]}; do
	echo $i
done
