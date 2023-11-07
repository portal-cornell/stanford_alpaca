#!/bin/bash

python train.py \
    --model_name_or_path meta-llama/Llama-2-7b-hf\
    --load_8_bit true\
    --data_path /share/portal/hw575/language_irl/alpaca_data/simple_exp1/alpaca_final_states_train_no-output-req_2-5.json \
    --eval_data_path /share/portal/hw575/language_irl/alpaca_data/simple_exp1/alpaca_final_states_dev_no-output-req_2-5.json \
    --fp16 true \
    --output_dir './output/no-output-req_e=10_2-5' \
    --num_train_epochs 10 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 8 \
    --do_eval \
    --evaluation_strategy "epoch" \
    --save_strategy "epoch" \
    --save_total_limit 3 \
    --logging_steps 5 \
    --learning_rate 2e-4 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --wandb_project language-irl-prelim_2-5 \
    --load_best_model_at_end true \
    --report_to wandb