
%slfilterGabor.m
%
% author: steeve laquitaine
%   date: 150828
%purpose: create 3D space time Gabor filters
%  
%  usage:
%
%		filt = slfilterGabor(-10:10,-10:10,1:10,2,2,2,0.1,0.1,0.1,'dispOn')
%
%inputs:
%
%		x : filter width elements (e.g., pixels, -inf to +inf)
%		y : filter height elements
%		t : filter time elements (e.g., movie frames)
%		sx: filter width spread
%		sy: filter height spread
%		st: filter time spread
%		wx: filter width spatial frequency
%		wy: filter height spatial frequency
%		wt: filter temporal frequency
%
%additional:
%
%　dispOpt: 'on' to display example filter, 'off' otherwise

function filt = slfilterGabor(x,y,t,sx,sy,st,wx,wy,wt,dispOpt)

%filter
for i = 1 : numel(x)
	for j = 1 : numel(y)
		for k = 1 : numel(t)

			filt(i,j,k) = 1/(sqrt(2*pi.^(3/2))*sx*sy*st) * exp( -( x(i).^2/(2*sx^2) + y(j).^2/(2*sy^2) + t(k).^2/(2*st^2)) ) .* sin( 2*pi*wx*x(i) +  2*pi*wy*y(j) + 2*pi*wt*t(k));

		end
	end
end


%display spatial filter at time t=0
if strcmp(dispOpt,'dispOn')
	
	%time examples
	ts_ex = [t(1) round(numel(t)/2) t(end-2)];
	possurf = [1 3 5];
	
	for i = 1 : 3

		subplot(3,2,possurf(i))
		surf(filt(:,:,ts_ex(i)))
		set(gca,'xtick',1:numel(x),'xticklabel',x,'ytick',1:numel(y),'yticklabel',y)
		title('3D space time Gabor filter at time t= ')
        box off

		if i == 3
		
			xlabel('Width (# of elements)')
			ylabel('Heigth (# of elements)')
			zlabel('Weight (a.u)')
			colormap('gray')

		end
		subplot(3,2,possurf(i)+1)
		imagesc(filt(:,:,ts_ex(i)))
		set(gca,'xtick',1:numel(x),'xticklabel',x,'ytick',1:numel(y),'yticklabel',y)
		title('Same filter (view from above) ')
		box off

		if i == 3

			xlabel('Width (# of elements)')
			ylabel('Heigth (# of elements)')
			
		end

	end
	set(gcf,'color','w','position',[503   187   570   582])
else
end