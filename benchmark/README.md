# Benchmark

## Libraries

- torch 1.8.0
- torchvision 0.9.0
- opencv 4.5.1 (with cuda support)

**!NB**
- half precision improves performance only when converting models to tensor

|Algorithm|fps|extra info|description|
|--|--|--|--|
|Midas small|7|torch; fp32; 256x256 input size|Monocular depth estimation neural network|
|lraspp_mobilenet_v3_large||torch; fp32; 256x256 input size|Semantic segmentation model|
|deeplabv3_mobilenet_v3_large||torch; fp32; 256x256 input size|Semantic segmentation model|
|fcn_resnet50||torch; fp32; 256x256 input size|Semantic segmentation model|
|squeezenetv1.0||tensorrt fp16||
|squeezenetv1.1||tensorrt fp16||
|squeezenetv1.0||tensorrt fp16||
|yolov5s||torch hub fp32||
|squeezedet||||
|squeezedet trt||||
|nanodet||||
|zstd --fast=1||||
|zstd --fast=9||||
|StereoSGBM||CUDA version from opencv 4.5.1||
