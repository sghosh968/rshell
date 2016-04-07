echo -n "Enter file name : "
read file_name
touch $file_name.txt
echo "File created $file_name.txt"
echo $(ls | grep $file_name)
