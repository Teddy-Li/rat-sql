{
    logdir: "logdir/glove_run_finetune_irrelevant_1e-3",
    trainset: "finetune_irrelevant",
    valset: "test",
    model_config: "configs/spider/nl2code-glove-finetune-ours-1e-3.jsonnet",
    model_config_args: {
        att: 0,
        cv_link: true,
        clause_order: null, # strings like "SWGOIF"
        enumerate_order: false,
    },

    eval_name: "glove_run_finetune_irrelevant_1e-3_%s_%d" % [self.eval_use_heuristic, self.eval_beam_size],
    eval_output: "%s/ie_dirs" % self.logdir,
    eval_beam_size: 1,
    eval_use_heuristic: true,
    eval_steps: [1] + [ 50 * x for x in std.range(1, 119)] + [6000],
    eval_section: "test",
}