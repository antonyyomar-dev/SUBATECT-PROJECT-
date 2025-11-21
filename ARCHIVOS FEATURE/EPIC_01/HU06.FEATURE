Feature: HU06 - Visualización de la disponibilidad de cada producto
    Como mesero de cafetería
    Quiero que la app permita visualizar la disponibilidad de cada producto en tiempo real
    Para poder informar al cliente y evitar registrar un producto no disponible en el pedido

    Scenario: Consulta de disponibilidad antes del registro del pedido
        Given que el cliente solicita un producto
        When el mesero visualice en la app la disponibilidad del producto antes de registrar el pedido
        Then se evitará ofrecer y registrar pedidos de productos que no estén disponibles

    Scenario: Actualización automática de stock en tiempo real
        Given que un producto ha sido vendido y su stock disminuye
        When el sistema detecte que el inventario llegó a un límite mínimo
        Then deberá actualizar la disponibilidad en la app para todo el personal
        And mostrará el producto como "poco stock" o "no disponible"


        