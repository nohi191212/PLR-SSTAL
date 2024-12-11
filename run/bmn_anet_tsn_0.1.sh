# Training on 1 GPU.
CUDA_VISIBLE_DEVICES=0 torchrun \
    --nnodes=1 \
    --nproc_per_node=1 \
    --rdzv_backend=c10d \
    --rdzv_endpoint=localhost:0 \
    tools/train_plr.py configs/bmn/anet_tsn_0.1.py \
    --exp_code bmn_anet_tsn_0.1 \
    --note "Final Training"