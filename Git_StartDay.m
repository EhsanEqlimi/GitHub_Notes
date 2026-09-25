%% =========================================================
%  Git Start of Day
%  Ehsan Eqlimi
%  Pull latest code before working
%  Does NOT delete .git
% ==========================================================
clc;close all;clear

%% 1. Find project folder

CompName=getenv('COMPUTERNAME');
UserName=getenv('USER');

if strcmp(CompName,'EA05C123')
    % Dell laptop
    cd('C:\Users\eeqlimi\Downloads\CUPostDoc\ThreeCat20chanFrontalBetaProjectCodes');

elseif strcmp(UserName,'ehsaneqlimi')
    % CU Mac office
    cd(['/Users/' UserName '/github/ThreeCat20chanFrontalBetaProjectCodes']);

else
    % MacBook
    cd(['/Users/' UserName '/GitHubRepo/ThreeCat20chanFrontalBetaProjectCodes']);
end

%% 2. Show current location

disp('==========================================');
disp('Git project folder:');
disp(pwd);
disp('==========================================');

%% 3. Check Git repository

!git status

%% 4. Get latest changes from GitHub

disp(' ');
disp('Pulling latest changes from GitHub...');
disp(' ');

!git pull

disp(' ');
disp('==========================================');
disp('Ready to work.');
disp('Ehsan Eqlimi');
disp('==========================================');
```
