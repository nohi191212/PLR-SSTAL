# Training on 1 GPU.
CUDA_VISIBLE_DEVICES=0 torchrun \
    --nnodes=1 \
    --nproc_per_node=1 \
    --rdzv_backend=c10d \
    --rdzv_endpoint=localhost:0 \
    tools/train_plr.py configs/actionformer/thumos_i3d_0.6.py \
    --exp_code actf_thumos_i3d_0.6 \
    --note "Final Training"