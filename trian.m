##########################################################################
#  Variables:
#	maxi: maximal value of the peak.
#	ttot: total time of the peak, from 0.
#	tper: time of the maximum peak.
#	period: period of the time vector.
##########################################################################

function [y] = trian(maxi,ttot,tper,period)

t1 = [0:period:tper];
t2 = [tper+period:period:ttot];

y1 = (maxi/tper) .* t1;

y2 = ( (maxi/ (tper-ttot) ) .* t2 ) - ( (maxi*ttot)/(tper-ttot) );

y = [y1, y2];

endfunction;
