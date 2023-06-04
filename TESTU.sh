
read word1

read word2

read word3

lista=($word1 $word2 $word3)
echo ${lista[@]}
for i in ${lista[@]}
  do
	  echo "${i:2:1}"

  done



