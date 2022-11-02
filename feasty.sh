#!/bin/bash
array[0]=" BIO-Herzhafte Käsespätzle "
array[1]=" Nougat-Palatschinken "
array[2]=" Piccolino*Penne al pomodoro  "
array[3]=" Piccolino - Buddha Bowl  "
array[4]=" Orientalische Gemüsepfanne  "
array[5]=" BIO Bowl 'green dream'  "
array[6]=" *Piccolini*-'Biryani Oriental'  "
array[7]=" 'Sieben-Schwaben-Topf '  "
array[8]=" Grillteller 'Griechische Art '  "
array[9]=" Mediterranes Sommerschnitzel  "
array[10]=" Köttbullar  "
array[11]=" Chili-Käse-Bällchen  "
array[12]=" Orangenhuhn  "
array[13]=" Curryhuhn 'India Style '  "
array[14]=" Hähnchen Erdnuss-Tikka  "
array[15]=" Linsengericht 'Schwäbische Art'  "
array[16]=" Kaiserschmarren  "
array[17]=" Rucola-Spinat-Spaghetti  "
array[18]=" BIO Kartoffeltaschen  "
array[19]=" Süßkartoffel-Curry  "
array[20]=" Knusprige Kartoffeltaschen  "
array[21]=" Blumenkohl-Käsebratling  "
array[22]=" Süßkartoffel-Gnocchi-Pfanne  "
array[23]=" *Piccolini*-Thai Lime  "



size=${#array[@]}
index=$(($RANDOM % $size))

echo "Feasty wird gewählt"
sleep 0.1
echo "#........."
sleep 0.1
echo "##........"
sleep 0.1
echo "###......."
sleep 0.1
echo "####......"
sleep 0.1
echo "#####....."
sleep 0.1
echo "######...."
sleep 0.1
echo "#######..."
sleep 0.1
echo "########.."
sleep 0.1
echo "#########."
sleep 0.1
echo "##########"
sleep 0.1

x="echo ${array[$index]}"
eval "$x"
str1=$(eval "$x")

filename='unwanted.txt'
n=1
while read line; do
# reading each line

if [[ $line =~ $str1 ]];
then

echo " "        






fi



n=$((n+1))
done < $filename

echo "Bewertung?"
read rate

if [ $rate -eq 1 ]
then

	
	
	echo $str1 >> favourites.txt
elif [ $rate -eq 0 ]
then
	echo $str1 >> unwanted.txt
fi






