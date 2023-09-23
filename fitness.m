function  [Z]=fitness(x)

global alfa c fi gama FS x1 y1 x2 y2 X Y

xo=x(1);
yo=x(2);

R=x(3);



teta1=-asin(-(yo-y1)/R);
teta2=-asin(-(yo-y2)/R);

teta0=teta1-teta2;

% R*sin(teta)+yo=y1
teta_ebteda=-asin((y1-yo)/R);
x_ebteda=R*cos(teta_ebteda)+xo;
teta_enteha=-asin((y2-yo)/R);
x_enteha=R*cos(teta_enteha)+xo;

if x_ebteda<x1 && x_enteha>x2
    xx1=x1:(x2-x1)/5:x2;
    t=teta2:(teta1-teta2)/10:teta1;
    xx2=R*cos(t)+xo;
    yy1=eval(subs(Y,X,xx1));
    yy2=R*sin(t)+yo;
    xxx=[x_ebteda xx1 x_enteha xx2(1,2:end-1)]; 
    yyy=[y1 yy1 y2 yy2(1,2:end-1)];
    
    x_mean=sum(xxx)/size(xxx,2);
    y_mean=sum(yyy)/size(yyy,2);
    
    d=x_mean-xo;
    
    A = polyarea(xxx,yyy);%calculate the area of boundary
    
    W=A*gama;
    Z=abs(FS*W*d-(c+W/(R*abs(teta0))*cos(alfa)*tan(fi))*R^2*abs(teta0));
else
    Z=1000000000000000000000;
end





end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%