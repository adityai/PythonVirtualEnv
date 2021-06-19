#Create a src directory
mkdir ~/src

#Create a .localpython directory
mkdir ~/.localpython

#Download python tgz
cd ~/src
curl -O https://www.python.org/ftp/python/3.9.5/Python-3.9.5.tgz
tar -zxvf Python-3.9.5.tgz
cd Python-3.9.5

#Compile Python 3.9.5 from source
make clean
./configure --prefix=/home/${USER}/.localpython
make
make install

#Download virtualenv installer tar.gz
cd ~/src
curl -O https://files.pythonhosted.org/packages/7c/46/4d4c37b6d96eb06961f8b2f38f7df12bb1a4951ff1145ac5dead9977e674/virtualenv-20.4.7.tar.gz
tar -zxvf virtualenv-20.4.7.tar.gz
cd virtualenv-20.4.7/

#Install virtualenv using the python compiled in .localpython directory
~/.localpython/bin/python setup.py install

#Create a directory for virtual environments in the user home directory or any directory of choice
mkdir /home/${USER}/virtualenvs
cd /home/${USER}/virtualenvs

#Create virtual environment using .localpython 
~/.localpython/bin/virtualenv py3.9.5 --python=/home/${USER}/.localpython/bin/python3.9.5

#Activate the virtual environment
source ~/virtualenvs/py3.9.5/bin/activate

#Verify python version after activation: Output must be: Python 2.7.10
python --version

#Deactivate when done
deactivate
