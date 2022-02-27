echo "[!] Give me your file"
read file
echo "[+] Compile "
rustc $file
echo "[*] Execute $file"
./$file
