t=-150:.01:150;

y1=cos(t/3);
y2=cos(t/4);

ys=cos(t/3)+cos(t/4);

fig = figure;
%plot(t,ys)
plot(t,y1,'g',t,y2,'r',t,ys,'b','linewidth',2);
set(gcf,'Color',[0.8 0.8 0.8],'Position',[280 200 680 500]);
set(gca,'FontName','Helvetica','Fontweight','Normal',...
    'Fontsize',18,'Color',[0.8 0.8 0.8],'xgrid','on','ygrid','on');
xlabel(' Temps ');ylabel(' Amplitude  ');
legend({'cos(t/3)','cos(t/4)','cos(t/3)+cos(t/4)'});
title('My cosines')

saveas( fig, 'toto.jpg')



