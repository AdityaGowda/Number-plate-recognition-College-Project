[File_path file] = uigetfile('*.jpg','Select Image');
img = imread(fullfile(file,File_path));
figure,imshow(img);
title('Original Image');
img2 = rgb2gray(img);
figure,imshow(img2)
title("RGB to gray")
imgX = edge(img2,'sobel','horizontal');
imgY = edge(img2,'sobel','vertical');
img3 = imgX|imgY;
figure,imshow(img3)
title("Sobel Image")
img3 = bwareaopen(img3, 900);
se = strel('line',2,8);
img3 = imdilate(img3,se);
se = strel('line',2,0);
img3 = imdilate(img3,se);
figure,imshow(img3)
title("Dilation Image")
img4 = imfill(img3,'holes');
img4 = bwmorph(img4,'thin',1);
se = strel('line',5,8);
img5 = imerode(img4,se);
img5 = imerode(img5,se);
figure,imshow(img5)
title("Erosion Image");
img6 = immultiply(img2,img5);
verticalProfile = sum(img6, 2);
row1 = find(verticalProfile, 1, 'first');
row2 = find(verticalProfile, 1, 'last');
horizontalProfile = sum(img6, 1);
column1 = find(horizontalProfile, 1, 'first');
column2 = find(horizontalProfile, 1, 'last');
img7 = img6(row1-1:row2+1, column1-1:column2+1);
img7 =~im2bw(img7);
figure;
imshow(img7);
title('Detected Number Plate');
imgProp = regionprops(img7,'BoundingBox','Image');
hold on
pause(1)
im0=imread('p1/0.bmp');
im1=imread('p1/1.bmp');
im2=imread('p1/2.bmp');
im3=imread('p1/3.bmp');
im4=imread('p1/4.bmp');
im5=imread('p1/5.bmp');
im6=imread('p1/6.bmp');
im7=imread('p1/7.bmp');
im8=imread('p1/8.bmp');
im9=imread('p1/9.bmp');
imA=imread('p1/A.bmp');
imB=imread('p1/B.bmp');
imC=imread('p1/C.bmp');
imD=imread('p1/D.bmp');
imE=imread('p1/E.bmp');
imF=imread('p1/F.bmp');
imG=imread('p1/G.bmp');
imH=imread('p1/H.bmp');
imI=imread('p1/I.bmp');
imJ=imread('p1/J.bmp');
imK=imread('p1/K.bmp');
imL=imread('p1/L.bmp');
imM=imread('p1/M.bmp');
imN=imread('p1/N.bmp');
imO=imread('p1/O.bmp');
imP=imread('p1/P.bmp');
imQ=imread('p1/Q.bmp');
imR=imread('p1/R.bmp');
imS=imread('p1/S.bmp');
imT=imread('p1/T.bmp');
imU=imread('p1/U.bmp');
imV=imread('p1/V.bmp');
imW=imread('p1/W.bmp');
imX=imread('p1/X.bmp');
imY=imread('p1/Y.bmp');
imZ=imread('p1/Z.bmp');

cnt=0;
out='';
for i = 1 : size(imgProp)
    this = imgProp(i).BoundingBox;
    if(this(3)>=15 &&this(4)>=30 && this(3)<=80 &&this(4)<=160)
    temp = ~imgProp(i).Image; 
    temp=imresize(temp,[40,20]);
    imwrite(temp,'p1/temp.bmp');
    imgTest =imread('temp.bmp');
    img = imabsdiff(imA,imgTest);
    rectangle('position',this,'EdgeColor','r');
    minDiff = sum(img(:));
    cnt=cnt+1;
    ch = 'A';
    if cnt==1 || cnt==2 || cnt==6 || cnt==5
        img = imabsdiff(imB,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
          ch='B';
        hold on
pause(1)
        end
       img = imabsdiff(imC,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='C';
        hold on
pause(1)
        end
        img = imabsdiff(imD,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='D';
pause(1)
        end
        img = imabsdiff(imE,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='E';
        hold on
pause(1)
        end
        img = imabsdiff(imF,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='F';
pause(1)
        end
        img = imabsdiff(imG,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='G';
        hold on
        end
        img = imabsdiff(imH,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='H';
        hold on
pause(1)
        end
        img = imabsdiff(imI,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='I';
        hold on
pause(1)
        end
        img = imabsdiff(imJ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='J';
        hold on
pause(1)
        end
        img = imabsdiff(imK,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='K';
        end
        img = imabsdiff(imL,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='L';
        hold on
pause(1)
        end
        img = imabsdiff(imM,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='M';
        end
        img = imabsdiff(imN,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='N';
        hold on
pause(1)
        end
        img = imabsdiff(imO,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='O';
        hold on
pause(1)
        end
        img = imabsdiff(imP,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='P';
        hold on
pause(1)
        end
        img = imabsdiff(imQ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Q';
        hold on
pause(1)
        end
        img = imabsdiff(imR,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='R';
        end
        img = imabsdiff(imS,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='S';
        hold on
pause(1)
        end
        img = imabsdiff(imT,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='T';
        hold on
pause(1)
        end
        img = imabsdiff(imU,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='U';
        hold on
pause(1)
        end
        img = imabsdiff(imV,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='V';
        hold on
pause(1)
        end
        img = imabsdiff(imW,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='W';
        hold on
pause(1)
        end
        img = imabsdiff(imX,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='X';
        hold on
pause(1)
        end
        img = imabsdiff(imY,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Y';
        hold on
pause(1)
        end
        img = imabsdiff(imZ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Z';
        hold on
pause(1)
        end
    else
        img = imabsdiff(im0,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='0';
        hold on
pause(1)
        end
        img = imabsdiff(im1,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='1';
        hold on
pause(1)
        end
        img = imabsdiff(im2,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='2';
        end
        img = imabsdiff(im3,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='3';
        hold on
pause(1)
        end
        img = imabsdiff(im4,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='4';
        hold on
pause(1)
        end
        img = imabsdiff(im5,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='5';
        hold on
pause(1)
        end
        img = imabsdiff(im6,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='6';
        hold on
pause(1)
        end
        img = imabsdiff(im7,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='7';
        hold on
pause(1)
        end
        img = imabsdiff(im8,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='8';
        hold on
pause(1)
        end
        img = imabsdiff(im9,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='9';
        hold on
pause(1)
        end   
     end
     out=strcat(out,ch);
   end
end
hold on
pause(1)
file = fopen('p1/number_Plate.txt', 'wt');
    fprintf(file,'%s\n',out);
      winopen('number_Plate.txt')
                        
  