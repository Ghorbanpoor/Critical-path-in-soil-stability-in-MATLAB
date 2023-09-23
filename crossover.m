function    crosspop=crossover(crosspop,pop,ncross)

global x1 x2 y1 y2 

f=[pop.fit];
f=f./sum(f);
f=cumsum(f);


for n=1:2:ncross
    
    s=0;
    while s==0

    
        i1=find(rand<=f,1,'first');
        i2=find(rand<=f,1,'first');
    
    
        p1=pop(i1).par;
        p2=pop(i2).par;



        R=rand(size(p1));

        o1=(p1.*R)+(p2.*(1-R));
        o2=(p2.*R)+(p1.*(1-R));

        x=o1;

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
       
       if (yo-y1)/R>=-1 && (yo-y1)/R <=1 && (yo-y2)/R>=-1 && (yo-y2)/R<=1 && x_ebteda<x1 && x_enteha>x2
           x=o2;
           xo=x(1);
           yo=x(2);
           R=x(3);
           
           teta1=asin((yo-y1)/R);
        teta2=asin((yo-y2)/R);

        teta0=teta1-teta2;

        % R*sin(teta)+yo=y1
        teta_ebteda=asin((y1-yo)/R);
        x_ebteda=R*cos(teta_ebteda)+xo;
        teta_enteha=asin((y2-yo)/R);
        x_enteha=R*cos(teta_enteha)+xo;

           if (yo-y1)/R>=-1 && (yo-y1)/R <=1 && (yo-y2)/R>=-1 && (yo-y2)/R<=1 && x_ebteda<x1 && x_enteha>x2
               s=1;
           end
       end
    end


crosspop(n).par=o1;
crosspop(n).fit=fitness(o1);


crosspop(n+1).par=o2;
crosspop(n+1).fit=fitness(o2);

end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%