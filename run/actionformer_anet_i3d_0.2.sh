# Training on 1 GPU.
CUDA_VISIBLE_DEVICES=0 torchrun \
    --nnodes=1 \
    --nproc_per_node=1 \
    --rdzv_backend=c10d \
    --rdzv_endpoint=localhost:0 \
    tools/train_plr.py configs/actionformer/anet_i3d_0.2.py \
    --exp_code actf_anet_i3d_0.2 \
    --note "Final Training"