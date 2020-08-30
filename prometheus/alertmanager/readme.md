
https://blog.csdn.net/a624575745856085/article/details/101618436?utm_medium=distribute.pc_relevant_right.none-task-blog-BlogCommendFromMachineLearnPai2-3.channel_param_right

# Load rules once and periodically evaluate them according to the global 'evaluation_interval'.
rule_files:
 - "/etc/prometheus/alert.rules"



 ALERT <alert name>
  IF <expression>
  [ FOR <duration> ]
  [ LABELS <label set> ]
  [ ANNOTATIONS <label set> ]


Alert name是警报标识符。它不需要是唯一的。

Expression是为了触发警报而被评估的条件。它通常使用现有指标作为/metrics端点返回的指标。

Duration是规则必须有效的时间段。例如，5s表示5秒。

Label set是将在消息模板中使用的一组标签。