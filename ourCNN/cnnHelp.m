
%cnnHelp
%
% author: steeve laquitaine
%   date: 08/18/2015
%purpose: Explain the CNN's architecture and neural processes (operations)
%
%
%----------------------
% Motion input to layer
%----------------------
%
%		  motionStim.mat 	%Nheight by Nwidth by Nframes movie
%
%------------------
% Neural net layers
%------------------
%
%			cnnV1layer.m 	%V1 layer processing (convolution, half-squaring rectification, divisive normalization)
%			cnnMTlayer.m    %MT layer processing (pooling)
%
%--------
% Filters
%--------
%
%	 v1SpatialFilters.mat     %V1 neurons spatial receptive field
%	v1TemporalFilters.mat	  %V1 neurons temporal receptive field