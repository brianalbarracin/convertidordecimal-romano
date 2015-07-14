function varargout = untitled_3(varargin)
% UNTITLED_3 M-file for untitled_3.fig
%      UNTITLED_3, by itself, creates a new UNTITLED_3 or raises the existing
%      singleton*.
%
%      H = UNTITLED_3 returns the handle to a new UNTITLED_3 or the handle to
%      the existing singleton*.
%
%      UNTITLED_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED_3.M with the given input arguments.
%
%      UNTITLED_3('Property','Value',...) creates a new UNTITLED_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled_3

% Last Modified by GUIDE v2.5 13-Jul-2015 15:00:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_3_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_3_OutputFcn, ...
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


% --- Executes just before untitled_3 is made visible.
function untitled_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled_3 (see VARARGIN)

% Choose default command line output for untitled_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
decimal=get(handles.edit1,'String')

set(handles.text1,'String',decimal)
valores=str2double(decimal)
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clc
decimal=get(handles.edit1,'String')

set(handles.text1,'String',decimal)
valores=str2double(decimal)

rom=['M' ,'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'XV','V' ,'IV', 'I']
romano=['']
for i=0:100
    
if valores >= 4000 || valores < 0
    msgbox('fuera de los parametros establecidos')
    i=200
    break
    
elseif valores >= 1000
    
    romano=[romano rom(1)]
    valores=valores-1000

elseif  valores >= 900
        romano=[romano rom(2:3)]
        valores=valores-900
     
elseif  valores >= 500
        romano=[romano rom(4)]
        valores=valores-500
elseif  valores >= 400
        romano=[romano rom(5:6)]
        valores=valores-400
elseif  valores >= 100
        romano=[romano rom(7)]
        valores=valores-100        
elseif  valores >= 90
        romano=[romano rom(8:9)]
        valores=valores-90        
elseif  valores >= 50
        romano=[romano rom(10)]
        valores=valores-50        
elseif  valores >= 40
        romano=[romano rom(11:12)]
        valores=valores-40
elseif  valores >= 10
        romano=[romano rom(13)]
        valores=valores-10        
elseif  valores >= 9
        romano=[romano rom(14:15)]
        valores=valores-9
elseif  valores >= 5
        romano=[romano rom(16)]
        valores=valores-5
elseif  valores >= 4
        romano=[romano rom(17:18)]
        valores=valores-4
elseif  valores >= 1
        romano=[romano rom(19)]
        valores=valores-1       
end
end
textofinal=['Su numero en romano es: ',romano]
set(handles.text2,'String',textofinal)
 

    

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
