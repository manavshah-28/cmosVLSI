```
grid on
grid 0.5um 0.5um
snap user
```
// 2 micro pmos and 1 micro nmos


// make nwell area and pdiff area 2 micron nwell square
```
paint nwell
paint pdiff
```
2 micron pdiff square 
solve drc by extending nwell by 1 box all sides
```
paint nwell
```
// for pdiff on nmos below the pmos
leav one row under the nwell and select 4 boxes center and use command 
```
paint ndiff
```
// now add (width 150nm) poly in the centre of the design
// change grid to 50nm 50nm to do this
```
paint poly
```

now select both sides of the pdiff area and 
```
paint li
```
a single column will have to removed to remove the drc error li.3
for that use erase li
cntrl d will remove all layer so not using that

// next paint pdc (p diffusion contact)
```
paint pdc
```
select a rectangle bit smaller that pdiff and do paint pdc(a box with a cross in light blue appears)

use c to copy to other side

on the lower part(nmos), do paint ndc(ndiff contact)
// with the 50nm scale it looks like this

![alt text](../images/nmos_lay.png)
z
on the top side above the entrie layout, select a rectangle and do paint ndiff with a gap of 4 rows(small small cells)

therefore first to paint ntap
then paint li
paint ntapc(ntap connection)
finally there is a different blue colour rectangle with cross on it at the top of the layout

the drc found is solved as follows
make the paint ntapc area smaller.

now there are no drc


on the lower side of the layout do paint ptap
paint li

leave edge space and select another rectangle
do paint ptapc

// for selecting everything and move it, select an area by pressing a on keyboars and do
move down 1

// to see whole layout in one screen press v
