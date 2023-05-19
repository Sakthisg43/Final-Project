import PIL.Image
from PIL import Image, ImageDraw, ImageFilter
import os
import numpy as np
import cv2
import matplotlib.pyplot as plt



im1 = Image.open("static/group/P1fcc2.jpg")
im2 = Image.open("static/group/b1_1.jpg")
em="x1.jpg"

x=179
y=148

back_im = im1.copy()
back_im.paste(im2, (x, y))
back_im.save('static/group/'+em, quality=95)
