#./configure --prefix=$PREFIX
#make
#make install
python setup.py build
python setup.py install --prefix=$PREFIX

