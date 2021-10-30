program p1_2;
var 
    x,y,h,a,b:real;
    n,i:integer;
function power(x, y: real): real;
begin
  power := exp(y * ln(x));
end;
begin
    write('Enter counts of calculation (n): ');
    readln(n);
    write('Enter left border (a): ');
    readln(a);
    write('Enter right border (b): ');
    readln(b);
    h:=(b-a)/(n-1);
    writeln('Step is: ',h);
    x:=a;
    for i:=1 to n do
        begin
            y:=((Ln(Sqrt(Exp(0.1*x) + x)) / (x + power(x,1/3) + Arctan(x))) + 2/5);
            writeln(i:4,x:10:3,y:10:3);
            x:=x+h;
        end;
        readln();
end.
