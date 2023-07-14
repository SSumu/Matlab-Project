function varargout = Login(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Login_OpeningFcn, ...
                   'gui_OutputFcn',  @Login_OutputFcn, ...
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
%imshow('E:\MatLab Image Processing Project\LogoN.png');
% End initialization code - DO NOT EDIT


% --- Executes just before Login is made visible.
function Login_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Login (see VARARGIN)

% Choose default command line output for Login
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Login wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Login_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
NIC = get(handles.edit1,'String');
Pass = get(handles.edit2,'String');
conn = database('mathlab','root','');
result1=exec(conn,'SELECT NIC from login');
result2=exec(conn,'SELECT password from login');
result1=fetch(result1);
result2=fetch(result2);
%rs=result1.Data
p1=result1.Data;
p2=result2.Data;
%class(p1)
disp(NIC)
disp(Pass)

q1=cell2mat(p1)
q2=cell2mat(p2)

if q1==NIC  
    if q2==Pass
        disp('correct')
         VPI
         closereq();
    else
        disp('Invalid NIC or Password')
        f = msgbox('Invalid NIC or Password','Error');
    end    
else 
   disp('Invalid NIC or Password') 
   f = msgbox('Invalid NIC or Password','Error');
end


%result1str= strings(result1)
%result2str=strings(result2);

%i=strcmp(result1str,NIC)
%disp(i)

%if strcmp(NIC,result1) 
%    disp('kkk')
%    if strcmp(result2,Pass)
%        disp(NIC)
%        disp(Pass)
%        VPI
%        closereq();
%    else
%        disp('Wrong2');
%   end    
%else
%    disp('Wrong');
%end



% --- Executes during object creation, after setting all properties.


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
axis off
imshow('C:\Users\Pasindu O positive\Desktop\Matlab\MathLab-Project\LogoN.png');
