# install openvpn
sudo apt-get update && apt-get upgrade -y
sudo apt-get install openvpn -y

# Install packages
sudo apt-get install -y \
  network-manager \
  curl \
  wget \
  git \
  python3 \
  python3-dev \
  build-essential \
  libssl-dev \
  libffi-dev \
  libxml2-dev \
  libxslt1-dev \
  zlib1g-dev \
  python-pip

# Install salt
pip install salt

# Configure salt
mkdir -p /etc/salt/
mkdir -p /etc/salt/minion.d
echo "master: it.stickfy.com" > /etc/salt/minion.d/master.conf
MAC=`cat /sys/class/net/wlan0/address`
ID="LED-$MAC"
echo $ID > /etc/salt/minion_id

# Run saltstack
# salt-minion -d
