#!/bin/bash

python evaluate.py \
    --model_name_or_path meta-llama/Llama-2-7b-hf\
    --lora_weight_path './output/no-output-req_e=10'\
    --load_8_bit true\
    --test_data_path /share/portal/hw575/language_irl/alpaca_data/simple_exp1/alpaca_final_states_dev_no-output-req.json \