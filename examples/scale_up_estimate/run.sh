output_dir="examples/scale_up_estimate/outputs"

if [[ ! -e $output_dir ]]; then
    mkdir $output_dir
elif [[ ! -d $output_dir ]]; then
    echo "$output_dir already exists but is not a directory" 1>&2
fi

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_1.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 4 --pp_size 1  --global_batch_size 16 --total_num_gpus 4 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 4 --pp_size 1  --global_batch_size 16 --total_num_gpus 4 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_3.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 4 --pp_size 1  --global_batch_size 16 --total_num_gpus 4 --achieved_tflops 153 --output_dir ${output_dir}


python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_1.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 1  --global_batch_size 16 --total_num_gpus 8 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 1  --global_batch_size 16 --total_num_gpus 8 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_3.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 1  --global_batch_size 16 --total_num_gpus 8 --achieved_tflops 153 --output_dir ${output_dir}


python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_1_pp2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 2  --global_batch_size 32 --total_num_gpus 16 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_2_pp2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 2  --global_batch_size 32 --total_num_gpus 16 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_3_pp2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 2  --global_batch_size 32 --total_num_gpus 16 --achieved_tflops 153 --output_dir ${output_dir}


python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_1_pp4.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 4  --global_batch_size 64 --total_num_gpus 32 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_2_pp4.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 4  --global_batch_size 64 --total_num_gpus 32 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_3_pp4.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 4  --global_batch_size 64 --total_num_gpus 32 --achieved_tflops 153 --output_dir ${output_dir}


python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_1_pp8.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 8  --global_batch_size 128 --total_num_gpus 64 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_2_pp8.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 8  --global_batch_size 128 --total_num_gpus 64 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-bert_3_pp8.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 8 --pp_size 8  --global_batch_size 128 --total_num_gpus 64 --achieved_tflops 153 --output_dir ${output_dir}

