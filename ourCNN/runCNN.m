

%runCNN.m
%
%  author : steeve laquitaine
%    date : 08/18/15
% purpose : run the CNN


%----------------------
%create motion stimulus
%----------------------
  stim.dir = 0; 								      %coherent direction  
stim.speed = 1;						 				  %speed
stim.movie = mkDots([39 39 50], dir, speed,0.15);     %Nheidth by Nwidth by Ntime frames motion


%-------------------
%V1 layer processing
%-------------------
% - convolution
% - half-squaring rectification
% - divisive normalization
cnn.v1Responses = cnnV1layer(stim.movie)


%-------------------
%MT layer processing
%-------------------
% - pooling
cnn.mtResponses = cnnMTlayer(v1Responses)