namespace: Flows
flow:
  name: MasterFlow1
  workflow:
    - uuid_generator:
        do:
          io.cloudslang.base.utils.uuid_generator: []
        publish:
          - new_uuid
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      uuid_generator:
        x: 100
        y: 150
        navigate:
          f150a808-cba8-f625-53ce-a6731799da52:
            targetId: 18b7fdc5-4ac0-9cd8-9b33-7a196ce2a9a1
            port: SUCCESS
    results:
      SUCCESS:
        18b7fdc5-4ac0-9cd8-9b33-7a196ce2a9a1:
          x: 400
          y: 150
