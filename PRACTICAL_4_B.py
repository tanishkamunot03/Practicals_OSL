import numpy as np  
import cv2  
font = cv2.FONT_HERSHEY_SIMPLEX 
img = cv2.imread(r"D:\NIRMA\TRIMESTER IV\OSL\download.jfif",1)  
cv2.circle(img,(80,80), 55, (0,255,0), -1) 
cv2.rectangle(img,(15,25),(200,150),(0,255,255),15) 
cv2.ellipse(img, (250, 150), (80, 20), 5, 0, 360, (0,0,255), -1)  
cv2.line(img,(10,0),(150,150),(0,0,0),15)  
cv2.putText(img,'Hack Projects',(10,500), font, 1,(255,255,255),2)
#defining points for polylines  
pts = np.array([[100,50],[200,300],[700,200],[500,100]], np.int32)  
# pts = pts.reshape((-1,1,2))  
cv2.polylines(img, [pts], True, (0,255,255), 3)  
cv2.imshow('image',img)  
cv2.waitKey(0)  
cv2.destroyAllWindows()  