grid on
grid 0.5um 0.5um
snap user

// 2 micro pmos and 1 micro nmos


// make nwell area and pdiff area 2 micron nwell square
2 micron pdiff square 
solve drc by extending nwell by 1 box all sides

// for pdiff on nmos below the pmos
leav one row under the nwell and select 4 boxes center and use command paint ndiff

// now add (width 150nm) poly in the centre of the design
// change grid to 50nm 50nm to do this


