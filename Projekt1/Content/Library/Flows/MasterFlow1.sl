namespace: Flows
flow:
  name: MasterFlow1
  workflow:
    - get_unique_name:
        do:
          io.cloudslang.amazon.aws.ec2.utils.get_unique_name:
            - instance_name_prefix: begin
        publish:
          - uniqueName: '${return_result}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - flow_output_1: '${return_result}'
    - flow_output_2: '${uniqueName}'
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_unique_name:
        x: 253
        y: 144
        navigate:
          0282ec26-f386-4bfc-51f2-7b4a8105191b:
            targetId: 640a42f0-6f17-cdb9-9ec8-dd67e8232a9c
            port: SUCCESS
    results:
      SUCCESS:
        640a42f0-6f17-cdb9-9ec8-dd67e8232a9c:
          x: 436
          y: 56
