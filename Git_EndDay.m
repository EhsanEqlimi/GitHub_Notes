
%% =========================================================
%  Git End of Day
%  Ehsan Eqlimi
%  Commit and push today's changes
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

%% 2. Show current status

disp('==========================================');
disp('Git status before commit');
disp('==========================================');

!git status

%% 3. Show changes

disp(' ');
disp('Changes detected:');
disp(' ');

!git diff --stat

%% 4. Add changes

disp(' ');
disp('Adding changed files...');
disp(' ');

!git add .

%% 5. Check staged changes

disp(' ');
disp('Files staged for commit:');
disp(' ');

!git status

%% 6. Commit

disp(' ');
disp('Creating commit...');
disp(' ');

!git commit -m "Update research code"

%% 7. Push to GitHub

disp(' ');
disp('Pushing changes to GitHub...');
disp(' ');

!git push

disp(' ');
disp('==========================================');
disp('GitHub update complete.');
disp('Ehsan Eqlimi');
disp('==========================================');
