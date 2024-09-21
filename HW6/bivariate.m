function [output] = bivariate(x,y,ux,ox,uy,oy,p)
z = (x-ux)*(x-ux)/ox/ox + (y-uy)*(y-uy)/oy/oy - 2*p*(x-ux)*(y-uy)/ox/oy;
output = 1/( 2*pi*ox*oy*sqrt(1-p*p) ) * exp( -z/( 2*(1-p*p) ) );
end