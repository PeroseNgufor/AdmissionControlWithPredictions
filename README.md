# AdmissionControlWithPredictions
Source codes for my MEng. dissertation titled 'Admission Control in Sliced Networks, Using Predictive Techniques".
All the code in this repository was written/authored by Perose Mutombo Ngufor in MATLAB and is subject to copyright.
----------------------------------------------------------------------------------------------------
List of ADMISSION CONTROL ALGORITHMS FILES
1. DECISIONmatrix.mlx
2. UTILITYindexWithThreshold.mlx
3. FIFOwithQUEUE.mlx

TO RUN THE BATCHES OF HOURLY DATA THROUGH THE VARIOUS ADMISSION CONTROL ALGORITHMS,

1. Change the text 'Hour49' in  the variable assignment of 'input' to whatever hour you
wish to simulate from Hour01 to Hour72. The variable 'heading' should also be changed to
reflect the hour number chosen

2. Run the script or live file.

----------------------------------------------------------------------------------------------------

TRAINING THE PREDICTIVE MODEL

1. The HWES Prediction Model coefficients are gotten by running the file 'optimizingsmoothingconstants.m'.
It calles the functions 'training10days.m' and 'calculate_rmse.m'.

2. The variable created in the workspace called 'solution' contains the optimal coefficients
[alpha, beta, gamma] respectively.

----------------------------------------------------------------------------------------------------

RUNNING THE PREDICTIVE MODEL

1. The dataset containing the bandwidth to be predicted is held in the file 'PredictionData312.mat'

2. Run the (live) script 'HWES_NetworkData.mlx'. NOTE: this script calls the following functions: 'levelupdatehw.m',
'trendupdate.m', 'seasonupdate.m' so these must be downloaded into the same project folder.

3. The forecast results are contained in the variable 'forecasts'. The actual data is contained in the variable 'actual_forplot'.

