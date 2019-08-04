# Robust-and-effiecient-method-to-extract-roads-from-satellite-images-
                                            ABSTRACT

Image processing is often viewed as arbitrarily manipulating an image to achieve an aesthetic standard or to support a preferred reality. However, image processing is more accurately defined as a means of translation between the human visual system and digital imaging devices. The human visual system does not perceive the world in the same manner as digital detectors. Salient differences between the human and digital detectors will be shown, along with some basic processing steps for achieving translation. Image processing must be approached in a manner consistent with the scientific method so that others may reproduce, and validate, one's results. This includes recording and reporting processing actions and applying similar treatments to adequate control images.

Roads play an important role in urban planning, thus its extraction can be of great help. In this project, a robust and efficient method for the extraction of roads from a given set of satellite images is explained. Automatic road extraction is a critical feature of an efficient use of remote sensing imagery in most contexts. This paper project proposes robust geometric method to provide a first step extraction level. These results can be used as an initialization for other algorithms or as starting point for manual road extraction. 
SUMMARY

The importance of analyzing high resolution satellite imagery plays an important research topic for geographical information analysis of cities. Roads are the fundamental part of transportation, traffic management, city planning, GPS navigation and map updating. Due to rapid changes on road network in urban transportation system, it is required to extract road network for instant road mapping. Various road detecting approachs have been presented for road network extraction from high resolution satellite images.


EXTRACTION ALGORITHM

At first, the image is converted into a grayscale image and then it is adjusted from threshold range 0.5 to 0.9(as most of the roads contain this range) to remove unwanted elements. Below is the image that shows the image obtained after adjusting. Then the image is converted to a binary image using ‘graythresh’ i.e., Otsu’s method which automatically sets the threshold value for the conversion. On the binary image obtained, median filtering is done to remove the noise that affects the satellite image. When considering different types of filters, the median filter is the aptest one to reduce noise in a satellite image. 


From the median filtered image small objects are removed which are unnecessary and whose pixels are less than 60 using ‘bwareaopen’. This helps in removing buildings and small parking slots. The image after removing small pixels is given below.The image still contains many unwanted pixels. One of the easiest ways to eliminate unwanted objects from an image is by applying morphological operations. Morphological operations are those operations used to remove undesired pixels based on the foreground and the background of an image. Since the operations are done on the binary image, the MATLAB function used is ‘bwmorph’. 

After applying the morphological operations we get the clean roads but it is very important to obtain the edges of these roads for clear identification of the roads. Gradient filter is used for the edge detection and the type of operator used for the detection is ‘sobel’. Sobel operator is used because the edges are extracted with greater accuracy. 

The final step is to overlay the extracted road onto the scalar image of the original image. Overlaying of the result helps to illustrate the accuracy of the road extraction. In the final image, the thin lines indicate the paths of roads in the image. 
