# Image Processing Project in MATLAB

This repository contains a MATLAB script for basic image processing operations on a grayscale or single-channel image. The script performs the following tasks:

1. **Image Loading and Display:**  
   Reads an image (`Project2.jpg`) and displays its first channel.

2. **Image Negative:**  
   Creates a negative of the image by inverting pixel values (255 - pixel value).

3. **Brightness Enhancement:**  
   Increases the brightness of the image by 30%, clipping values above 255.

4. **Maximum Pixel Detection:**  
   Finds the maximum pixel value in the image and displays all pixel coordinates where this maximum occurs.

5. **Median Filtering:**  
   Applies a median filter to reduce noise by replacing each pixel value with the median of its 3x3 neighborhood (excluding the pixel itself).

## How to Run

- Ensure you have MATLAB installed.
- Place your grayscale or single-channel image as `Project2.jpg` in the same folder as the script.
- Run the script in MATLAB.

## Outputs

- Displays the original image channel.
- Displays the negative image.
- Displays the brightness-enhanced image.
- Prints coordinates of the brightest pixels in the Command Window.
- Displays the median filtered image.

---

## Skills Demonstrated

- Image manipulation and pixel-wise operations.
- Looping and conditional statements in MATLAB.
- Basic image filtering using median filter.
- Visualization of image data using `imshow`.

---

This project showcases fundamental image processing techniques suitable for digital image analysis and enhancement tasks. It can serve as a foundation for more advanced computer vision applications.

---

Feel free to clone this repo and modify the code for your own image processing needs!
