echo "enter the no of element"
read n1
for (( i=0; i<$n1; i++ ))
do
            echo "enter `expr $i + 1` the element."
            read a[$i]
done
for (( i=0; i<$n1; i++ ))
do
            for (( j=`expr $i + 1`; j<$n1; j++ ))
            do
                        if [ ${a[$i]} -gt ${a[$j]} ]
                        then
                                    x=${a[$i]}
                                    a[$i]=${a[$j]}
                                    a[$j]=$x
                        fi
            done
done
echo "After sorting"
            for (( i=$n1; i>0; i-- ))
            do
                        echo ${a[`expr $i - 1`]}
            done
echo "The third largest no. is ${a[2]}"

