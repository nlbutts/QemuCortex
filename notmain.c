#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

void threshold_image(const uint8_t *input_image, uint8_t *output_image, uint32_t width, uint32_t height, uint8_t threshold) {
    uint32_t total_pixels = width * height;

    for (uint32_t i = 0; i < total_pixels; i++) {
        output_image[i] = (input_image[i] > threshold) ? 255 : 0;
    }
}

static uint8_t img[320*240];

int notmain()
{
    for (int i = 0; i < (320*240); i++)
    {
        img[i] = 0;
    }
    threshold_image(img, img, 320, 240, 240);
    return 0;
}