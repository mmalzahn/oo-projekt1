namespace: Flows
flow:
  name: flow2
  inputs:
    - awsAccessKey
    - awsSecurityKey
    - host
    - user
    - password
  workflow:
    - advanced_search:
        do:
          io.cloudslang.vmware.vcenter.util.advanced_search:
            - host: '${host}'
            - user: '${user}'
            - password:
                value: '${password}'
                sensitive: true
            - props_type: VirtualMachine
            - props_pathset: name
        navigate:
          - SUCCESS: SUCCESS
          - NO_MORE: SUCCESS
          - FAILURE: on_failure
    - on_failure:
        - MasterFlow1_1:
            do:
              Flows.MasterFlow1:
                - input_0: null
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      advanced_search:
        x: 104
        y: 139
        navigate:
          309e2675-bcc5-c770-efc1-cacce5f00f20:
            targetId: 858b4d52-93e6-814a-8bd1-7b7be4639f9f
            port: SUCCESS
          39524339-1e9d-5ceb-fc9e-c3b7d16cd672:
            targetId: 858b4d52-93e6-814a-8bd1-7b7be4639f9f
            port: NO_MORE
    results:
      SUCCESS:
        858b4d52-93e6-814a-8bd1-7b7be4639f9f:
          x: 289
          y: 111
