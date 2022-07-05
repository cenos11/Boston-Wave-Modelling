​function varargout = Boston(varargin)
% BOSTON MATLAB code for Boston.fig
%      BOSTON, by itself, creates a new BOSTON or raises the existing
%      singleton*.
%
%      H = BOSTON returns the handle to a new BOSTON or the handle to
%      the existing singleton*.
%
%      BOSTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BOSTON.M with the given input arguments.
%
%      BOSTON('Property','Value',...) creates a new BOSTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Boston_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Boston_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Boston

% Last Modified by GUIDE v2.5 12-Nov-2015 16:22:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Boston_OpeningFcn, ...
                   'gui_OutputFcn',  @Boston_OutputFcn, ...
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


% --- Executes just before Boston is made visible.
function Boston_OpeningFcn(boston, eventdata, handles,varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Boston (see VARARGIN)

A=imread('bostonharbor.PNG');
imshow(A);

set(handles.slider,'Value',100);
% Choose default command line output for Boston
handles.output = boston;

% Update handles structure
guidata(boston, handles);

% UIWAIT makes Boston wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Boston_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider_Callback(slider, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider_CreateFcn(slider, eventdata, handles)
% hObject    handle to slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(slider,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(slider,'BackgroundColor',[.9 .9 .9]);
end




function t_d_Callback(hObject, eventdata, handles)
% hObject    handle to t_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_d as text
%        str2double(get(hObject,'String')) returns contents of t_d as a double


% --- Executes during object creation, after setting all properties.
function t_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2



function C_d_Callback(hObject, eventdata, handles)
% hObject    handle to C_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C_d as text
%        str2double(get(hObject,'String')) returns contents of C_d as a double


% --- Executes during object creation, after setting all properties.
function C_d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C_d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function H_s_Callback(hObject, eventdata, handles)
% hObject    handle to H_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H_s as text
%        str2double(get(hObject,'String')) returns contents of H_s as a double


% --- Executes during object creation, after setting all properties.
function H_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_s_Callback(hObject, eventdata, handles)
% hObject    handle to T_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T_s as text
%        str2double(get(hObject,'String')) returns contents of T_s as a double


% --- Executes during object creation, after setting all properties.
function T_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%input of fetch points
[x,y]=ginput(2);
fetch=(abs((x(2)*18.5-x(1)*18.5)^2+(y(2)*18.5-y(1)*18.5)^2))^.5;
set(handles.fetch,'String',num2str(fetch));

t_d=str2num(char(get(handles.t_d,'String')));
U=get(handles.slider,'Value');

%this section calculates the category and pressure of hurricane
if (0 <= U)&&(U <= 74);
    set(handles.category,'String',num2str(0));
    set(handles.pressure,'String',num2str(990));
elseif (74 < U)&&(U <= 95);
    set(handles.category,'String',num2str(1));
    set(handles.pressure,'String',num2str(980));
elseif (95 < U)&&(U <= 110);
    set(handles.category,'String',num2str(2));
    p2=979-(95-U)*((979-964)/(95-110));
    set(handles.pressure,'String',num2str(p2));
elseif (110 < U)&&(U <= 129);
    set(handles.category,'String',num2str(3));
    p3=964-(110-U)*((964-945)/(110-129));
    set(handles.pressure,'String',num2str(p3));
elseif (129 < U)&&(U <= 156);
    set(handles.category,'String',num2str(4));
    p4=944-(129-U)*((944-920)/(129-156));
    set(handles.pressure,'String',num2str(p4));
else set(handles.category,'String',num2str(5));
    set(handles.pressure,'String',num2str(919));
end
%this section calculates C_d
if U*.447 > 5.6
    Cd=(1.21+2.25*(1-(5.6/(U*.447)))^2)*10^-6;
    set(handles.C_d,'String',num2str(Cd));
else set(handles.C_d,'String',num2str(1.21*10^-6));
end

%this section calculates the limiting factor of wind waves
Fstar=9.81*fetch/(U^2);
Tstar=9.81*t_d/U;
Feff=(Tstar/68.8)^(3/2);
if Fstar < Feff
    Hstar=.0016*(Fstar^.5);
    Tpstar=.286*(Fstar^(1/3));
else Hstar=.0016*(Feff^.5);
    Tpstar=.286*(Feff^(1/3));
end 
if Hstar > .243;
    Hstar=.243;
end
if Tpstar > 8.13;
    Tpstar=8.13;
end

%Calculating H_s and T_s
Hs=(U^2)*Hstar/9.81;
Ts=U*Tpstar/9.81;
set(handles.T_s,'String',num2str(Ts));
set(handles.H_s,'String',num2str(Hs));

%calculating storm surge
press=str2num(char(get(handles.pressure,'String')));
h=Cd*(U^2)*12000/(9.81*14)+(1013/10-press/10)/9.81;
set(handles.surge,'String',num2str(h));

   


% --- Executes on button press in U10.
function U10_Callback(hObject, eventdata, handles)
% hObject    handle to U10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val=get(handles.slider,'value');
U10=val;
set(handles.U10text,'String',num2str(U10));


function U10text_Callback(hObject, eventdata, handles)
% hObject    handle to U10text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U10text as text
%        str2double(get(hObject,'String')) returns contents of U10text as a double


% --- Executes during object creation, after setting all properties.
function U10text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to U10text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function category_Callback(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of category as text
%        str2double(get(hObject,'String')) returns contents of category as a double


% --- Executes during object creation, after setting all properties.
function category_CreateFcn(hObject, eventdata, handles)
% hObject    handle to category (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pressure_Callback(hObject, eventdata, handles)
% hObject    handle to pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pressure as text
%        str2double(get(hObject,'String')) returns contents of pressure as a double


% --- Executes during object creation, after setting all properties.
function pressure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pressure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end