# CMOS using skywater 130 PDK
* To design and complete layout of a cmos inverter using opensource vlsi tools and obtain various parameters of performance with graphs.
  
<img src="images\inverter.png" alt="invertert" width="400" height="500"/><img src="images\inverter_sch.png" alt="Another Image" width="800"  height="500"/>

## Workspace
* setup shop in Windows Subsystems for Linux (WSL), [*ubuntu will also work*]

## TOOLS
* [xschem](https://xschem.sourceforge.io/stefan/xschem_man/install_xschem.html)
* [ngspice](https://sourceforge.net/projects/ngspice/files/)
* [skywater pdk](https://github.com/google/skywater-pdk)
* [Magic](http://opencircuitdesign.com/magic/index.html)

## [Setup](http://opencircuitdesign.com/)
* open your terminal in an ubuntu device or wsl
  ```sh
  ### xschem ###
  git clone https://github.com/StefanSchippers/xschem.git xschem
  cd xschem
  ./configure
  sudo make -j4
  sudo make install
  cd ..

  ### NGSpice ### 
  git clone git://git.code.sf.net/p/ngspice/ngspiced
  cd ngspiced
  ./autogen.sh
  mkdir release
  cd release
  ../configure --with-x --enable-xspice --disable-debug --enable-cider --with-readline=yes --enable-predictor --enable-osdi --enable-openmp
  sudo make -j4
  sudo make install
  cd ../..

  ### magic vlsi ###
  git clone git://opencircuitdesign.com/magic
  cd magic
  ./configure
  sudo make
  sudo make install
  cd ..
  # dont use -j4 

  ### openPDK ###
  git clone git://opencircuitdesign.com/open_pdks
  cd open_pdks
  ./configure --enable-sky130-pdk --enable-sram-sky130
  sudo make -j4
  sudo make install
  sudo make veryclean
  cd ..
  # these steps will take a lot of time and occupy a lot of space, be patient.....

  ### xschem and skywater 130 integration ###
  mkdir test_xschem_sky130
  cd test_xschem_sky130
  cp /usr/local/share/pdk/sky130B/libs.tech/xschem/xschemrc .
  xschem
  ```
## Test nfet 
```sh
# setup xschem with skywater pdk 130 
mkdir test_nfet
cd test_nfet
cp /usr/local/share/pdk/sky130B/libs.tech/xschem/xschemrc .
xschem
```
* press Shift + i in xschem window to add new schematic.
* insert the nfet from the library
* <img src="images\nfet_test.png"/>
  
_______________________________________________________________

# CMOS 
To run xschem with skywater pdk 
```sh
 mkdir directory_name
 cd directory_name
 cp /usr/local/share/pdk/sky130B/libs.tech/xschem/xschemrc .
 xschem
```
## CMOS schematic 
  * <img src="images\inverter.png"/>

## CMOS testbench
*   * <img src="images\inverter_sch.png"/>


## ngspice simulation
* input and output voltage plot
  * <img src="images\vin_vout.png"/>
* propogation delay
  * time from 50% Vin to 50 % Vout
  * <img src="images\tpHL.png"/>
  * showing propogation delay has dependance on imput pulse
    * <img src="images\tpHL2.png"/>
* Rise time and fall time
  * tr = t90 - t10
  * <img src="images\tr.png"/>
* load capacitiance decreases, circuit becomes faster


# Layout 

[Documentation](https://skywater-pdk.readthedocs.io/en/main/) of SKYWATER PDK
```sh
magic  -rcfile /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc
```
### Shortcuts 
* zoom out : shift z
* zoom in  : shift z
