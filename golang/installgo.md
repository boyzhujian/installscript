


wget  http://192.168.3.120:7000/tools/go1.12.2.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf  go1.12.2.linux-amd64.tar.gz
mkdir ~/go
echo "export GOPATH=~/go/">> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin">> ~/.bashrc
