cp main.py temp.py 
echo "client_id='$CONFIG_ID'" > configid.txt
echo "client_secret='$CONFIG_KEY'" > configkey.txt
echo "refresh_token='$REFRESH_TOKEN'" > refreshtoken.txt
sed -i '10 r configid.txt' temp.py
sed -i '12 r configkey.txt' temp.py
sed -i '14 r refreshtoken.txt' temp.py
echo `date +"%Y-%m-%d %H:%M:%S"` begin > time.log
python3 temp.py
rm -f temp.py
rm -f configid.txt
rm -f configkey.txt
rm -f refreshtoken.txt
rm -f Secret.txt
