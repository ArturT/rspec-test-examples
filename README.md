# rspec-test-examples

Generate paths to RSpec examples

```
rspec --dry-run --format json --out spec.json
```

Test examples:

```
./spec/example_spec.rb[1:1]
./spec/example_spec.rb[1:2]
```

Run test examples:

```
rspec ./spec/example_spec.rb[1:1] ./spec/example_spec.rb[1:2]
```

Run tests:

```
ruby run_tests.rb
```

