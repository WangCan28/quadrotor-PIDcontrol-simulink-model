%仿真轨迹与绘制
clf
% len = length(tout);
% xmax = 0; ymax = 0; zmax = 0;
% xmin = 0; ymin = 0; zmin = 0;
% for i = 1:len
%     figure(1);
%     if(pid_x(i)>=xmax)
%         xmax = pid_x(i);
%     end
%     if(pid_y(i)>=ymax)
%         ymax = pid_y(i);
%     end
%     if(pid_z(i)>=zmax)
%         zmax = pid_z(i);
%     end
%     if(pid_x(i)<=xmin)
%         xmin = pid_x(i);
%     end
%     if(pid_y(i)<=ymin)
%         ymin = pid_y(i);
%     end
%     if(pid_z(i)<=zmin)
%         zmin = pid_z(i);
%     end
%     limitmin = min(xmin,ymin); limitmax = max(xmax,ymax);
%     xlim([limitmin-2,limitmax+2]),ylim([limitmin-2,limitmax+2]),zlim([-1,zmax+5])
%     grid on;
%     
%     [point1_trans,point2_trans,point3_trans,point4_trans]=drone(phi(i),theta(i),psai(i));%绘制四旋翼
%     drawnow;
%     try
%         delete(h1);delete(h2);delete(point);
%         plot3([pid_x(i-1),pid_x(i)],[pid_y(i-1),pid_y(i)],[pid_z(i-1),pid_z(i)],'LineWidth',2)
%     catch
%     end
%     h1 = plot3([pid_x(i)+point1_trans(1),pid_x(i)+point2_trans(1)],[pid_y(i)+point1_trans(2),pid_y(i)+point2_trans(2)],...
%         [pid_z(i)+point1_trans(3),pid_z(i)+point2_trans(3)],'LineWidth',3,'Color','r');
%     hold on;
%     h2 = plot3([pid_x(i)+point3_trans(1),pid_x(i)+point4_trans(1)],[pid_y(i)+point3_trans(2),pid_y(i)+point4_trans(2)],...
%         [pid_z(i)+point3_trans(3),pid_z(i)+point4_trans(3)],'LineWidth',3,'Color','b');
%     point = scatter3(xd(i),yd(i),zd(i),100,'filled','g');
%     set(gca,'ztick',0:20:pid_z(i)+5)
%     drawnow
% %     pause(0.1)
% end

%绘制位置图像
figure(2);clf;
subplot(1,3,1)
h1 = plot(tout,xd,'MarkerEdgeColor','r','LineWidth',2);hold on;
h2 = plot(tout,x,'MarkerEdgeColor','g','LineWidth',2);
legend([h1,h2],['参考位置xd','实际位置x'])
grid on;
subplot(1,3,2)
h3 = plot(tout,yd,'MarkerEdgeColor','b','LineWidth',2);hold on;
h4 = plot(tout,y,'MarkerEdgeColor','m','LineWidth',2);
legend([h3,h4],['参考位置yd','实际位置y'])
grid on;
subplot(1,3,3)
h5 = plot(tout,zd,'MarkerEdgeColor','y','LineWidth',2);hold on;
h6 = plot(tout,z,'MarkerEdgeColor','k','LineWidth',2);
legend([h5,h6],['参考位置zd','实际位置z'])
grid on;
%绘制角度图像
% figure(3);clf;
% h7 = plot(tout,phi,'LineWidth',2); hold on;
% h8 = plot(tout,psai,'LineWidth',2);
% h9 = plot(tout,theta,'LineWidth',2);hold off;
% legend([h7,h8,h9],['phi','psai','theta']),grid on;
