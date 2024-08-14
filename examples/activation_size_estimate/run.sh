output_dir="examples/activation_size_estimate/outputs"

if [[ ! -e $output_dir ]]; then
    mkdir $output_dir
elif [[ ! -d $output_dir ]]; then
    echo "$output_dir already exists but is not a directory" 1>&2
fi

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 2 --pp_size 1  --global_batch_size 16 --total_num_gpus 2 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 2 --pp_size 1  --global_batch_size 16 --total_num_gpus 2 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate3.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 2 --pp_size 1  --global_batch_size 16 --total_num_gpus 2 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-gpt.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 2 --pp_size 1  --global_batch_size 16 --total_num_gpus 2 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-gpt2.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 2 --pp_size 1  --global_batch_size 16 --total_num_gpus 2 --achieved_tflops 153 --output_dir ${output_dir}

python -m llm_analysis.analysis train --model_name llm_analysis/model_configs/activation_size_estimate-gpt3.json --gpu_name a100-pcie-80gb --total_num_tokens 300e9  --activation_recomputation 0 --activation_reloading 1 --tp_size 2 --pp_size 1  --global_batch_size 16 --total_num_gpus 2 --achieved_tflops 153 --output_dir ${output_dir}
