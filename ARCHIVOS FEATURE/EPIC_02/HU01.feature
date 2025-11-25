Feature: HU01 - Registro y visualización de pedidos en tiempo real
    Como barista o cajero
    Quiero visualizar en una pantalla los pedidos que ingresan en tiempo real
    Para prepararlos en el orden correcto, reducir errores y agilizar la atención durante las horas de mayor demanda

    Scenario: Registro correcto del pedido
        Given que el cliente ha confirmado su pedido en la aplicación 
        When el sistema registre la orden, debe mostrar automáticamente la hora de registro, el número de orden y su estado actual
        Then el personal podrá marcar el pedido como “en preparación” o “listo”
        And la aplicación actualizará el estado en tiempo real

    Scenario: Pedido no visible inmediatamente
        Given que el cliente ha confirmado su pedido correctamente
        When el sistema presente un retraso temporal por carga
        Then la pantalla del barista deberá mostrar un aviso de “Actualizando pedidos”
        And refrescar la lista automáticamente en menos de 5 segundos para visualizar el pedido pendiente

      