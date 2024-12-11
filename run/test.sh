# test trained model on test set
CUDA_VISIBLE_DEVICES=0 torchrun \
    --nnodes=1 \
    --nproc_per_node=1 \
    --rdzv_backend=c10d \
    --rdzv_endpoint=localhost:0 \
    tools/test.py configs/YOUR_CONFIG.py \
    --checkpoint exps/YOUR_CKPT.pth