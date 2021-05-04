% zoom the date or other variables


function dateszoom = zoom_dates(yy1,mm1,dd1,HH1,MM1,SS1,yy2,mm2,dd2,HH2,MM2,SS2,n,datesR)
zoomstart = find(datesR==datenum(yy1,mm1,dd1,HH1,MM1,SS1))/n;
zoomend = find(datesR==datenum(yy2,mm2,dd2,HH2,MM2,SS2))/n;
dateszoom = datesR(1,zoomstart:zoomend);

end