x0 = [0.347; 2.178e-10; 3.769e-10];


% Set nondefault solver options
options = optimoptions('fmincon','PlotFcn',{'optimplotx',...
    'optimplotfvalconstr','optimplotfval'});

% Solve
[solution,objectiveValue] = fmincon(@training10days,x0,[],[],[],[],...
    zeros(size(x0)),ones(size(x0)),[],options);

% Clear variables
clearvars options

solution

objectiveValue