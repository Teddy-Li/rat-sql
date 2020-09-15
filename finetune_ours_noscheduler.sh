echo "finetune ours models started!"

echo "lr: 3e-4"
source activate ratsql
nohup python -u run_2.py --use_scheduler False train experiments/spider-glove-finetune_ours-3e-4-noscheduler.jsonnet > glove_finetune_ours_3e-4_ns_0916.log &

echo "lr: 1e-4"
source activate ratsql
nohup python -u run_2.py --use_scheduler False train experiments/spider-glove-finetune_ours-1e-4-noscheduler.jsonnet > glove_finetune_ours_1e-4_ns_0916.log &

echo "lr: 3e-5"
source activate ratsql
nohup python -u run_3.py --use_scheduler False train experiments/spider-glove-finetune_ours-3e-5-noscheduler.jsonnet > glove_finetune_ours_3e-5_ns_0916.log &

echo "lr: 1e-5"
source activate ratsql
nohup python -u run_3.py --use_scheduler False train experiments/spider-glove-finetune_ours-1e-5-noscheduler.jsonnet > glove_finetune_ours_1e-5_ns_0916.log &

echo "finetune ours models finished!"