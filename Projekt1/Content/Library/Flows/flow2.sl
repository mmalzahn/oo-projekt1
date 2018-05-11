namespace: Flows
flow:
  name: flow2
  workflow:
    - on_failure:
        - MasterFlow1_1:
            do:
              Flows.MasterFlow1:
                - input_0: null
  results:
    - FAILURE
