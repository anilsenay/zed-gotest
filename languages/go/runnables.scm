; Functions names start with `Test`
(
    (function_declaration name: (_) @run
        (#match? @run "^Test.+"))
) @go-test

; `t.Run`
(
    (call_expression function: (_) @run
        (#match? @run "^t.Run.*"))
) @go-subtest

; Functions names start with `Benchmark`
(
    (function_declaration name: (_) @run
        (#match? @run "^Benchmark.+"))
) @go-benchmark