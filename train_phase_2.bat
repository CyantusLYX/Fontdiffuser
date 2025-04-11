@echo off
REM 啟動 FontDiffuser 訓練
call activate fontdiffuser
accelerate launch train.py ^
    --seed=123 ^
    --experience_name="FontDiffuser_training_phase_2" ^
    --data_root="data_examples" ^
    --output_dir="outputs/FontDiffuser_1font_fineturn" ^
    --report_to="tensorboard" ^
    --phase_2 ^
    --phase_1_ckpt_dir="phase_1_ckpt" ^
    --scr_ckpt_path="ckpt/scr_210000.pth" ^
    --sc_coefficient=0.01 ^
    --num_neg=16 ^
    --resolution=96 ^
    --style_image_size=96 ^
    --content_image_size=96 ^
    --content_encoder_downsample_size=3 ^
    --channel_attn=True ^
    --content_start_channel=64 ^
    --style_start_channel=64 ^
    --train_batch_size=8 ^
    --perceptual_coefficient=0.01 ^
    --offset_coefficient=0.5 ^
    --max_train_steps=1000 ^
    --ckpt_interval=200 ^
    --gradient_accumulation_steps=1 ^
    --log_interval=50 ^
    --learning_rate=1e-6 ^
    --lr_scheduler="constant" ^
    --lr_warmup_steps=100 ^
    --drop_prob=0.1 ^
    --mixed_precision="no"