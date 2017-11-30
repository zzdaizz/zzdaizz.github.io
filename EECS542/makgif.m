clc;clear all;close all;
for i=0:59   %???
    if i <= 9
        Msk=imread(['dog/0000' num2str(i) '.png']);
        Img=imread(['dog-o/0000' num2str(i) '.jpg']);
        Img(:,:,1) = Img(:,:,1)+Msk;
    else
        Msk=imread(['dog/000' num2str(i) '.png']);
        Img=imread(['dog-o/000' num2str(i) '.jpg']);
        Img(:,:,1) = Img(:,:,1)+Msk;
    end
    imshow(Img,[]);%??????????????????????????

    frame=getframe(gcf);
    im=frame2im(frame);%??gif????????index????
    [I,map]=rgb2ind(im,256);
    if i==0;
        imwrite(I,map,'dog.gif','gif','Loopcount',inf,...
            'DelayTime',0.06); 
    else
        imwrite(I,map,'dog.gif','gif','WriteMode','append',...
            'DelayTime',0.06); 
    end
end