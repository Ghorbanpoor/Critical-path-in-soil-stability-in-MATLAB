function varargout = Soil_stability(varargin)
% SOIL_STABILITY MATLAB code for Soil_stability.fig
%      SOIL_STABILITY, by itself, creates a new SOIL_STABILITY or raises the existing
%      singleton*.
%
%      H = SOIL_STABILITY returns the handle to a new SOIL_STABILITY or the handle to
%      the existing singleton*.
%
%      SOIL_STABILITY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOIL_STABILITY.M with the given input arguments.
%
%      SOIL_STABILITY('Property','Value',...) creates a new SOIL_STABILITY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Soil_stability_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Soil_stability_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Soil_stability

% Last Modified by GUIDE v2.5 17-Sep-2023 12:22:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Soil_stability_OpeningFcn, ...
                   'gui_OutputFcn',  @Soil_stability_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Soil_stability is made visible.
function Soil_stability_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Soil_stability (see VARARGIN)

% Choose default command line output for Soil_stability
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Soil_stability wait for user response (see UIRESUME)
% uiwait(handles.figure1);


clc

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');
set(handles.edit8,'String','');
set(handles.edit9,'String','[ ]');
set(handles.edit10,'String','[ ]');
set(handles.edit11,'String','');


set(handles.text14,'String',num2str(0));
set(handles.text16,'String',num2str(0));
set(handles.text18,'String',num2str(0));

axes(handles.axes1)
cla(handles.axes1,'reset')

grid on
I=imread('Capture1.JPG');
imshow(I);

axes(handles.axes2)
cla(handles.axes2,'reset')

axis off


% --- Outputs from this function are returned to the command line.
function varargout = Soil_stability_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)






clc

%% paramters setting
global alfa c fi gama FS x1 y1 x2 y2 X Y

syms X Y

c=eval(get(handles.edit1,'String'));
fi=eval(get(handles.edit2,'String'));
fi=fi*pi/180;
gama=eval(get(handles.edit3,'String'));
FS=eval(get(handles.edit4,'String'));

x1=eval(get(handles.edit5,'String'));
y1=eval(get(handles.edit6,'String'));

x2=eval(get(handles.edit7,'String'));
y2=eval(get(handles.edit8,'String'));

Y=(y2-y1)/(x2-x1)*(X-x1)+y1;
alfa=atan((y2-y1)/(x2-x1));



nvar=3;    % number of variable



npop=100;         % number of population

maxiter=eval(get(handles.edit11,'String'));;      % max of iteration


pc=0.1;                  % percent of crossover
ncross=2*round(npop*pc/2);   % number of cross over offspring

pm=1-pc;                 % percent of mutation
nmut=round(npop*pm);     % number of mutation offsprig

lb=eval(get(handles.edit9,'String'));
ub=eval(get(handles.edit10,'String'));


%% initialization
tic
empty.par=[];
empty.fit=[];


pop=repmat(empty,npop,1);


for i=1:npop
    s=0;
   while s==0 
       x=lb+rand(1,nvar).*(ub-lb);

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
   pop(i).par=x;
   pop(i).fit=fitness(pop(i).par);
   
end




%% main loop


BEST=zeros(maxiter,1);
MEAN=zeros(maxiter,1);

for iter=1:maxiter


   % crossover
   
   crosspop=repmat(empty,ncross,1);
   crosspop=crossover(crosspop,pop,ncross);
   
   
   
   
   % mutation
   mutpop=repmat(empty,nmut,1);
   mutpop=mutation(mutpop,pop,nmut,npop,lb,ub,nvar);
   
   
   % merged
  [pop]=[pop;crosspop;mutpop];


  % select
  [value,index]=sort([pop.fit]);
  pop=pop(index);
  pop=pop(1:npop);

 gpop=pop(1);   % global pop



 BEST(iter)=gpop.fit;
 MEAN(iter)=mean([pop.fit]);



 disp([ ' Iter = '  num2str(iter)  ' BEST = '  num2str(BEST(iter))]);


  if iter>150 && BEST(iter)==BEST(iter-150)
      break
  end

end
%% results

disp(' ')
disp([ ' Best par = '  num2str(gpop.par)])
disp([ ' Best fitness = '  num2str(gpop.fit)])
disp([ ' Time = '  num2str(toc)])

x=gpop.par;

xo=x(1);
yo=x(2);

R=x(3);

set(handles.text14,'String',num2str(xo));
set(handles.text16,'String',num2str(yo));
set(handles.text18,'String',num2str(R));

teta1=-asin((yo-y1)/R);
teta2=-asin((yo-y2)/R);

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
    xxx=[x_ebteda xx1 x_enteha xx2]; 
    yyy=[y1 yy1 y2 yy2];
end

axes(handles.axes2)
cla(handles.axes2,'reset')

grid on
plot(xxx,yyy)
line([x_ebteda xo],[y1 yo],'LineStyle','--')
line([x_enteha xo],[y2 yo],'LineStyle','--')


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc

set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit6,'String','');
set(handles.edit7,'String','');
set(handles.edit8,'String','');
set(handles.edit9,'String','[ ]');
set(handles.edit10,'String','[ ]');
set(handles.edit11,'String','');


set(handles.text14,'String',num2str(0));
set(handles.text16,'String',num2str(0));
set(handles.text18,'String',num2str(0));

axes(handles.axes1)
cla(handles.axes1,'reset')

grid on
I=imread('Capture1.JPG');
imshow(I);

axes(handles.axes2)
cla(handles.axes2,'reset')

axis off


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close
