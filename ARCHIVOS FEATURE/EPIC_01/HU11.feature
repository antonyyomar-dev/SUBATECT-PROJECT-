Feature: HU11 - Confirmación de stock al registrar pedidos
    Como mesero
    Quiero recibir una alerta si un producto está por agotarse antes de confirmar el pedido
    Para ofrecer una alternativa al cliente

    Scenario: Alerta de producto con stock limitado
        Given que el mesero está registrando un pedido
        When seleccionas un producto con stock limitado o agotado
        Then el sistema muestra una alerta visual o sonora
        And el sistema sugiere opciones múltiples

    Scenario: Seleccion de producto alternativo
        Given que el producto elegido no tiene stock suficiente
        When el mesero es notificado por la alerta
        Then podrás seleccionar un producto alternativo de la lista
        And el sistema actualizará el sistema correspondiente
