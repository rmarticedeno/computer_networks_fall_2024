ip=$(hostname -I)
docker run -d --rm --name vsftpd -p 21:21 -p 21100-21110:21100-21110 -e "PASV_ADDRESS=${ip}" -v $PWD/tests/ftp/files:/home/vsftpd/user lhauspie/vsftpd-alpine 
echo "a new file for upload" >> tests/ftp/new.txt