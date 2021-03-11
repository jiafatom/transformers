export SQUAD_DIR=squad \
&& python examples/research_projects/distillation/run_squad_w_distillation.py \
  --model_type distilbert \
  --model_name_or_path distilbert-base-uncased \
  --do_train \
  --do_eval \
  --do_lower_case \
  --train_file $SQUAD_DIR/test-v2.0.json \
  --predict_file $SQUAD_DIR/test-v2.0.json \
  --per_gpu_train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 1.0 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir content/model_output \
  --save_steps 50 \
  --threads 4 \
  --version_2_with_negative