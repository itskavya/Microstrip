m = 1;
while m==1
 choice = menu('CHOOSE TYPE OF PLANAR TRANSMISSION 
LINE','MICROSTRIP','COUPLED STRIPLINE','COPLANAR STRIPS');
%Taking input values from the user
R = input('Enter L for low impedance or H for high impedance ', 's');
E = input('Enter dielectric constant value: ');
Z = input('Enter characteristic impedance value: ');

%Calculation of width for low and high impedance cases
if(R == 'H')    
A = (Z/60)*((E+1)/2)^0.5 + ((E-1)/(E+1))*(0.23 + 0.11/E);
X = abs((8*exp(-A)/(exp(-2*A)-1)));
End8
if(R == 'L')
B = (60*(pi)^2)./(Z*E);
X = abs(2*((B-1)-log(2*B-1)) + ((E-1)/(2*E))*(log(B-1) + 0.39 - 0.61/E));
end
 W = X*0.15625; %h = 0.15625 ; 1/16th of an inch

%Displaying the output
display('The required width for microstrip in cm is: ');
display(W);
axis equal;
rectangle ('Position',[0,0,3*W,0.15625*0.1],'facecolor',[0 1 1]);
rectangle ('Position',[W,0.15625+0.15625*0.1,W,0.1*0.15625],'facecolor',[1 1 0]);
rectangle ('Position',[0,0.15625*0.1,3*W,0.15625],'facecolor',[0 1 0]);
end
