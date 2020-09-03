echo "finetune ours models started!"

echo "lr: 1e-3"
python -u run_1.py train experiments/spider-glove-finetune_ours-1e-3.jsonnet
python -u run_1.py eval experiments/spider-glove-finetune_ours-1e-3.jsonnet

echo "lr: 3e-4"
python -u run_1.py train experiments/spider-glove-finetune_ours-3e-4.jsonnet
python -u run_1.py eval experiments/spider-glove-finetune_ours-3e-4.jsonnet

echo "lr: 1e-4"
python -u run_1.py train experiments/spider-glove-finetune_ours-1e-4.jsonnet
python -u run_1.py eval experiments/spider-glove-finetune_ours-1e-4.jsonnet

echo "lr: 3e-5"
python -u run_1.py train experiments/spider-glove-finetune_ours-3e-5.jsonnet
python -u run_1.py eval experiments/spider-glove-finetune_ours-3e-5.jsonnet

echo "finetune ours models finished!"