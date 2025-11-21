Feature: HU08 - Registro de propinas y métodos de pago
    Como cajero
    Quiero registrar propinas y tipos de pago
    Para mantener un control financiero más exacto

    Scenario: Registro correcto de propina y método de pago
        Given que el cliente está realizando el pago de su pedido
        When el cajero selecciona el método de pago y añade el monto de propina correspondiente
        Then el sistema debe registrar ambos valores
        And reflejarlos correctamente en el historial financiero del día

    Scenario: Pago sin propina registrada
        Given que el cajero está procesando un pago
        When el cliente decida no dejar propina
        Then el sistema debe permitir completar la transacción sin monto adicional
        And registrar el valor de la propina en 0


        