#! /bin/bash

echo "Hello a simple calculator made by Akshay Jindal"
calc() {
echo "what you want to perform select from below options"
echo "1: add
2: subtract
3: multiply
4: divide
5: modulus"
read op

if [ $op == 1 ];
then
	result=$(($1+$2))
elif [ $op == 2 ];
then
	result=$(($1-$2))
elif [ $op == 3 ];
then
	result=$(($1*$2))
elif [ $op == 4 ];
then
	result=$(($1/$2))
elif [ $op == 5 ];
then
	result=$(($1%$2))
else
	echo "Invalid option selected Try again"
	calc
fi

}
echo "enter 1st number to perform operation on"
read num1
echo "enter 2nd number to perform action on"
read num2
calc $num1 $num2
echo "result is $result"

echo "wanna perform some further action on your result y/n"
read a
while [ $a == "y" ]
do
	echo "enter 2nd number"
	read num3
	calc $result $num3
	echo "final result is $result"
	echo "more actions ? y/n"
	read a
done

