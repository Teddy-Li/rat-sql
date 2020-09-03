{
    logdir: "logdir/glove_run_pretrain",
    initdir: "logdir/glove_run_pretrain",
    trainset: "train",
    valset: "val",
    model_config: "configs/spider/nl2code-glove-pretrain.jsonnet",
    model_config_args: {
        att: 0,
        cv_link: true,
        clause_order: null, # strings like "SWGOIF"
        enumerate_order: false,
    },

    eval_name: "glove_run_pretrain_%s_%d" % [self.eval_use_heuristic, self.eval_beam_size],
    eval_output: "%s/ie_dirs" % self.logdir,
    eval_beam_size: 1,
    eval_use_heuristic: true,
    eval_steps: [400] + [ 1000 * x + 100 for x in std.range(30, 39)] + [40000],
    eval_section: "val",
}