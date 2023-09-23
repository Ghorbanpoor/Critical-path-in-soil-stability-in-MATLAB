function  mutpop=mutation(mutpop,pop,nmut,npop,lb,ub,nvar)

global x1 x2 y1 y2


for n=1:nmut
    
    s=0;
    while s==0


           i=randi([1 npop]); 

        sol=pop(i).par;




        j=randi([1 nvar]);

        d=0.1*unifrnd(-1,1)*(ub(j)-lb(j));


        sol(j)=sol(j)+d;

        sol=min(sol,ub);
        sol=max(sol,lb);

       x=sol;

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
           s=1;
       end
   end



mutpop(n).par=sol;
mutpop(n).fit=fitness(sol);


end



end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                   %
%                          www.matlabnet.ir                         %
%                   Free Download  matlab code and movie            %
%                          Shahab Poursafary                        %
%                                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



