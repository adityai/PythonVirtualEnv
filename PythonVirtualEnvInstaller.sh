mkdir ~/src
mkdir ~/.localpython
cd ~/src
wget http://www.python.org/ftp/python/2.7.10/Python-2.7.10.tgz
tar -zxvf Python-2.7.10.tgz
cd Python-2.7.10

make clean
./configure --prefix=/home/${USER}/.localpython
make
make install

cd ~/src
wget https://pypi.python.org/packages/d4/0c/9840c08189e030873387a73b90ada981885010dd9aea134d6de30cd24cb8/virtualenv-15.1.0.tar.gz#md5=44e19f4134906fe2d75124427dc9b716
tar -zxvf virtualenv-15.1.0.tar.gz
cd virtualenv-15.1.0/
~/.localpython/bin/python setup.py install

mkdir /home/${USER}/virtualenvs
cd /home/${USER}/virtualenvs
~/.localpython/bin/virtualenv py2.7 --python=/home/${USER}/.localpython/bin/python2.7

source ~/virtualenvs/py2.7/bin/activate

