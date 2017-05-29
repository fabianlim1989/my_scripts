#!/bin/bash -ex
USERNAME=fabian_lim
SSH_PUB_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC82hD4RMa47ldL96Ngx0adGSoHRKy00HczkdH63KpxEAyJnWscddCBlfT0SLWzLaj6b/Lo12g59RR5tqriJw1Iprn9h9SqDtihkDdPRLFENbIea1rYSDwcgU7zgR0sKAp3abCsdavsFDTMPoe5MkzzHgsNEMrfNVzkICNPQaKunoLanYtm1BADNWnJWB00FBv6yc2Gl9UwPNV7FFTbFrGyuAfqZpxX8cRyS1sRh2KexJ+x0d0OYeuS/7tmFIDW3FtqcZd/DR+YxTvlw5A3R6xsr2Vqt7Hx9uR/ZdpS+LxNCkUxDGIIKEG5Z3pBQWnuCWaFWz/sBQ+eb5q2kPmaggC7 fabian_lim@gds"

sudo adduser $USERNAME
sudo -u $USERNAME mkdir -p /home/$USERNAME/.ssh
sudo -u $USERNAME chmod 700 /home/$USERNAME/.ssh
sudo -u $USERNAME touch /home/$USERNAME/.ssh/authorized_keys
sudo -u $USERNAME chmod 600 /home/$USERNAME/.ssh/authorized_keys
sudo -u $USERNAME echo $SSH_PUB_KEY | sudo tee /home/$USERNAME/.ssh/authorized_keys
sudo usermod -aG sudo $USERNAME

echo "done adding $USERNAME"
echo "now go add $USERNAME to sudoers using visudo"
