import cv2
#Reading images in color and grayscale
color_img = cv2.imread("D:\\NIRMA\\TRIMESTER IV\\OSL\\ANIME.jpg")
gray_img = cv2.imread("D:\\NIRMA\\TRIMESTER IV\\OSL\\ANIME.jpg",0)
#Displaying the image
cv2.imshow('originalimage', color_img)
#Storing the key pressed by user 
k = cv2.waitKey(0)
#Check if user hits ‘c’ or ‘g’ key
if( k == ord('c') ):
  cv2.imwrite('color.jpg', color_img )
  print("Image is saved color")
  cv2.destroyAllWindows()
if( k == ord('g') ):
  cv2.imwrite('gray.jpg', gray_img )
  print("Image saved in grayscale")
  cv2.destroyAllWindows()