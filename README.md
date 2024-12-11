Personal repository based on OpenTAD
https://github.com/nohi191212/PLR-SSTAL.git



# Dependencies
Our code is tested on:
 - Python 3.10.12
 - PyTorch 2.3.1+cu121
 - CUDA 12.1
 - Ubuntu 18.04.6 LTS
 - gcc 9.4.0 (Ubuntu 9.4.0-1ubuntu1~18.04)

Other configurations may work as well, but we cannot guarantee it.

# Installation
**Step 1.** Install PyTorch=2.0.1, Python=3.10.12

```
conda create -n plr-sstal python=3.10.12
source activate plr-sstal
pip install pytorch=2.3.1-cu121 torchvision=0.18.1 torchaudio==0.19.0
```

**Step 2.** Install mmaction2
```
pip install openmim
mim install mmcv==2.0.1
mim install mmaction2==1.1.0
```

**Step 3.** Install requirements
```
pip install -r requirements.txt
```

# Download Features
You can download the pre-extracted features from the following links:

| Dataset | Feature Backbone | Link |
| --- | --- | --- |
| ActivityNet | TSN | [Google Drive](https://drive.google.com/u/0/uc?id=1ISemndlSDS2FtqQOKL0t3Cjj9yk2yznF&export=download) |
| THUMOS14 | TSN | [Google Drive](https://drive.google.com/drive/folders/1-19PgCRTTNfy2RWGErvUUlT0_3J-qEb8?usp=sharing) |
| ActivityNet | I3D | [Google Drive](https://drive.google.com/drive/folders/1B1srfie2UWKwaC4-7bo6UItmJoESCUq3?usp=sharing) |
| THUMOS14 | I3D | [Google Drive](https://drive.google.com/drive/folders/1C4YG01X9IIT1a568wMM8fgm4k4xTC2EQ?usp=sharing) |

After downloading the features, please put them into the corresponding folders:

```
data/activitynet_tsn
data/thumos14_tsn
data/activitynet_i3d
data/thumos14_i3d
```

# Train and Test
Run the following command to train and test the model on ActivityNet with 10% labeled data:

```
run/actionformer_anet_tsn_0.1.sh
```
Other scripts can be found in the `run` folder.


Test the trained model on the test set:

```
run/test.sh
```

You need to modify the paths in the script to the path of the trained model.

