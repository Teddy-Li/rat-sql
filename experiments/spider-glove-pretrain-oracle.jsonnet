{
    logdir: "logdir/glove_run_pretrain_oracle",
    initdir: "logdir/glove_run_pretrain_oracle",
    trainset: "finetune_oracle",
    valset: "test",
    model_config: "configs/spider/nl2code-glove-pretrain-ours.jsonnet",
    model_config_args: {
        att: 0,
        cv_link: true,
        clause_order: null, # strings like "SWGOIF"
        enumerate_order: false,
    },

    eval_name: "glove_run_pretrain_oracle_%s_%d" % [self.eval_use_heuristic, self.eval_beam_size],
    eval_output: "%s/ie_dirs" % self.logdir,
    eval_beam_size: 1,
    eval_use_heuristic: true,
    eval_steps: [ 100 * x for x in std.range(2, 120)],
    eval_section: "test",
}