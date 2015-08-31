
%cnnMTlayer.m
%
% author: steeve laquitaine
%   date: 08/15/2015
%purpose: a convolutional neural layer that mimics V1 (primary visual cortex) processing
%		  of motion stimuli
%
% usage :
%
%			o = cnnMTlayer(v1Responses)

function o = cnnMTlayer(v1Responses)


%spatial pooling of v1 Responses

