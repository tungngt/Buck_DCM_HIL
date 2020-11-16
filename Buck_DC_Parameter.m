clear;
T = 2e-4;
%% DCM Model 
    Udm = 220;          Idm = 21;
    ndm = 1000;         wdm = ndm/9.55;
    Ru = 0.89;          Lu = 0.05;
    J = 0.5;           Pdm = 3700;
    Edm = Udm-Ru*Idm;   
    Kphi = Edm/wdm;
%% DC Controller
    % Speed Controller
        Tres_speed = 1;           
        Kp_W = 3*J/Tres_speed;
    % Current Controller
        Tres_current = 0.1;
        Ki_I = 3*Ru/Tres_current;   
        Kp_I = Ki_I*(Lu/Ru);
%% Buck Model
    Ubat = 400;
    L = 4.7e-3;   C = 4700e-6;
%     L = 15.7e-3;  C = 19.25e-6;
    rL = 0.005;
%% Buck Controller
    % Uc Controller
        Tres_Uc = 0.05;         
        Kp_Uc = 3*C/Tres_Uc;
    % IL Controller9
        Tres_IL = 0.01;
        Ki_IL = 3*rL/Tres_IL;   
        Kp_IL = Ki_IL*(L/rL);
%% Max
    ILmax = 60;         Ucmax = Ubat;
    Iumax = 3*Idm;      wmax = 150;