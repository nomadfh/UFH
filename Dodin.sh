#Install dependencies
sudo apt install pcsc-tools libccid libpcsc-perl libpcsclite1 pcscd opensc opensc-pkcs11 vsmartcard-vpcd libnss3-tools -y &&
# Download certificates and unzip them
wget https://dl.dod.cyber.mil/wp-content/uploads/pki-pke/zip/certificates_pkcs7_DoD.zip &&
unzip certificates_pkcs7_DoD.zip &&
# change directories to cert dir
cd Certificates_PKCS7_v5.9_DoD &&
# Trust the certificates
for n in *.p7b; do certutil -d sql:$HOME/.pki/nssdb -A -t TC -n $n -i $n; done ;
certutil -d sql:$HOME/.pki/nssdb/ -L &&
cd $HOME &&
modutil -dbdir sql:.pki/nssdb/ -add “CAC_Module” -libfile /usr/lib/x86_64-linux-gnu/pkcs11/opensc-pkcs11.so &&
# enable and start pcscd service
sudo systemctl enable pcscd.socket
sudo systemctl start pcscd.socket 
sudo systemctl start pcscd.service &&
# register opensc security module with firefox automatically
pkcs11-register &&
mkdir DODcerts &&
mv Certificates_PKCS7* DODcerts &&
mv certificates_* DODcerts &&
echo "All done!"

