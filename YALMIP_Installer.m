clear all
close all
clc

%% Add YALMIP solver path

addpath(genpath('YALMIP-master'))

cd YALMIP-master
urlwrite('https://github.com/yalmip/yalmip/archive/master.zip','yalmip.zip');
unzip('yalmip.zip','yalmip')
addpath(genpath([pwd filesep 'yalmip']));
savepath