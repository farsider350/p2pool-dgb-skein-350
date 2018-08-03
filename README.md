P2pool installation with pypy -- Windows
--------------------------------------
On Windows, pypy is only supported via the Windows Subsystem for Linux (WSL). P2pool on pypy on WSL is much faster than P2pool on
CPython on native Windows. To install WSL, first follow the steps outlined here:

https://msdn.microsoft.com/en-us/commandline/wsl/install_guide

Once you've done that, run bash and follow the rest of the steps below.

P2pool installation with pypy -- Linux and Windows
-------------------------------------------------
Copy and paste the following commands one line at a time into a bash shell in order to install p2pool on Windows or Linux.



sudo apt-get update
sudo apt-get install pypy pypy-dev pypy-setuptools gcc build-essential git

wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo pypy
sudo rm setuptools-*.zip

wget https://pypi.python.org/packages/source/z/zope.interface/zope.interface-4.1.3.tar.gz#md5=9ae3d24c0c7415deb249dd1a132f0f79
tar zxf zope.interface-4.1.3.tar.gz
cd zope.interface-4.1.3/
sudo pypy setup.py install
cd ..
sudo rm -r zope.interface-4.1.3*

wget https://pypi.python.org/packages/source/T/Twisted/Twisted-15.4.0.tar.bz2
tar jxf Twisted-15.4.0.tar.bz2
cd Twisted-15.4.0
sudo pypy setup.py install
cd ..
sudo rm -r Twisted-15.4.0*

git clone https://github.com/farsider350/p2pool-dgb-skein
cd p2pool-dgb-skein
cd digibyte_subsidy
sudo pypy setup.py install
cd ..
cd python_skein_hash
sudo pypy setup.py install




Running P2Pool:
-------------------------
To use P2Pool, you must be running your own local myriadcoind. For standard configurations, using P2Pool should be as simple as:

    pypy run_p2pool.py --net digibyte