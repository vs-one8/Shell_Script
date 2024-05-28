#!/bin/bash
function add
{
    read -p "enter the number 1"  num1
    read -p "enter the number 2"  num2
    var1=$((num1+num2))
    echo "$var1"
}
function subtract
{
    read -p "enter the number 1"  num1
    read -p "enter the number 2"  num2
    var1=$((num1-num2))
}
function mul
{
    read -p "enter the number 1"  num1
    read -p "enter the number 2"  num2
    var1=$((num1*num2))
}
function div
{
    read -p "enter the number 1"  num1
    read -p "enter the number 2"  num2
    var1=$((num1/num2))
}
echo "=======OPERATIONS====="
echo -e "1.ADDITION\n2.SUBSTRACTION\n3.MULTIPLICATION\n4.DIVISION"
read  -p "enter the choice" choice
case $choice in
  
    1)
        add
        ;;
    2)
        subtract
        ;;
    3)
        mul
        ;;
    4)
        div
        ;;
    *)
        echo "Invalid choice. Please select a valid option (1-4)."
        ;;
esac