# Training on 1 GPU.
CUDA_VISIBLE_DEVICES=0 torchrun \
    --nnodes=1 \
    --nproc_per_node=1 \
    --rdzv_backend=c10d \
    --rdzv_endpoint=localhost:0 \
    tools/train_plr.py configs/bmn/thumos_tsn_0.4.py \
    --exp_code bmn_thumos_tsn_0.4 \
    --note "Final Training"