namespace: Flows
flow:
  name: MasterFlow1
  workflow:
    - describe_regions:
        do:
          io.cloudslang.amazon.aws.ec2.regions.describe_regions:
            - identity: AKIAJP7IML36YRSA6T6Q
            - credential:
                value: qk+marxw7dELdTflRoYOm/pcgFU7ngNEwYvf5tLl
                sensitive: true
            - key_filters_string: '*'
            - value_filters_string: '*'
            - regions_string: eu-west-1
        publish:
          - return_result
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      describe_regions:
        x: 83
        y: 133
        navigate:
          fbfcafc4-ccaa-d45f-52d1-db32ea0a7210:
            targetId: 18b7fdc5-4ac0-9cd8-9b33-7a196ce2a9a1
            port: SUCCESS
    results:
      SUCCESS:
        18b7fdc5-4ac0-9cd8-9b33-7a196ce2a9a1:
          x: 400
          y: 150
