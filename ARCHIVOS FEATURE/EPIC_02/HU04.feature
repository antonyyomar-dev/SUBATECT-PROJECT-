Feature: HU04 - Gestión de pedidos pendientes y priorización automática
    Como cajero o mesero
    Quiero visualizar los pedidos pendientes con prioridad automática según el tiempo de espera
    Para atender primero los pedidos más antiguos o urgentes

    Scenario: Destacar pedidos con exceso de tiempo de espera
        Given que hay múltiples pedidos en cola
        When se superen ciertos tiempos de espera, el sistema debe resaltar el pedido en color de prioridad
        Then el personal podrá identificar fácilmente los pedidos más urgentes
        And atenderlos primero

    Scenario: Reorganización automática por prioridad
        Given que existen pedidos más nuevos y más antiguos
        When uno de los pedidos alcance un umbral crítico de tiempo
        Then la aplicación deberá moverlo automáticamente a las primeras posiciones de la lista
        And mantedrá la cola organizada según prioridad

      