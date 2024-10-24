# Image Square Cropping and Blurring with Gaussian Filter

By [Naimur Rahman](https://github.com/nayeem-rafi)
## [Click for Files](https://drive.google.com/drive/folders/1aYsiQ6l6xobzYM8NmtJ5ZH6Zgu7BMiFH?usp=drive_link)
## Introduction:
This MATLAB project demonstrates how to interactively crop a portion of an image and apply a Gaussian blur filter to the cropped region. It showcases the practical use of image processing techniques like cropping, filtering, and channel-wise manipulation of an image.

## Objective:
The primary goal of this project is to:
1. Allow the user to crop a selected area of an image.
2. Apply a Gaussian blur filter to the cropped section of the image.
3. Display the modified image with the blurred crop area.

## Analyzing the Input:
The input image (`cat.jpg`) is read from the current directory. Users are given the option to manually select a region of the image they want to crop by using the `imcrop()` function, which opens an interactive window for cropping.

## Blurring with Cropping:
1. **Cropping**:  
   The user selects a region from the image interactively, and the coordinates of the cropped section are stored for later manipulation.
   
2. **Gaussian Blur**:  
   A **Gaussian filter** is applied to the cropped region of the image. The key parameters of the filter include:
   - **Kernel size** (`hsize`): Determines the size of the filter matrix (set to 21 in this case).
   - **Standard deviation** (`sigma`): Controls the amount of blur (set to 10).
   
   The filter is applied separately to each color channel (red, green, and blue) using the `filter2()` function, ensuring the blur effect is consistent across the image's RGB components.


<h1 align= "center">


**Crop Square Position**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/be99e105-2a94-43c6-8ea1-597fe8b8d650", width="620">
</p>

<h1 align= "center">


**Crop Position Blurred**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/c823ba98-2885-43a2-b504-52815ad184a8", width="620">
</p>

## How the Code Works:
1. The image is first loaded using `imread()`, and the user selects the cropping area through `imcrop()`.
2. A Gaussian filter is created using `fspecial()`, and a new blurred image is initialized.
3. The filter is applied to each of the three color channels (RGB) of the original image.
4. The blurred region is merged back into the original image, replacing the cropped section with the blurred version.
5. The final result is displayed using `imshow()`.

## How to Run the Code:
1. Ensure MATLAB is installed on your system.
2. Place the `cat.jpg` image in the same directory as your script.
3. Run the script. You will be prompted to select the area of the image you want to crop and blur.
4. Once you confirm the crop, the Gaussian blur is applied, and the modified image is displayed.
   
   Key steps:
   - Adjust the cropping interactively.
   - Define the Gaussian kernel parameters (`hsize` and `sigma`) if needed.
   
   You can experiment with different values of the kernel size and sigma to observe the effect of blurring on the cropped region.

## Conclusion:
This project provides a simple, interactive way to crop and blur images in MATLAB. By selecting a region of interest and applying a Gaussian filter, users can quickly see the effects of image processing techniques. This approach is commonly used in image editing software to blur specific parts of an image, such as backgrounds, while preserving details in other regions.

Feel free to adjust the kernel size and standard deviation values to observe different levels of blurring and enhance your understanding of Gaussian filters in image processing.

