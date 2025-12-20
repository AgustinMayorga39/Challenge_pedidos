# The name of this view in Looker is "Pedidos"
view: pedidos {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_academy.Pedidos` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Beneficio" in Explore.

  dimension: beneficio {
    type: number
    sql: ${TABLE}.Beneficio ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.Cantidad ;;
  }

  dimension: costo_envio {
    type: number
    sql: ${TABLE}.Costo_envio ;;
    label: "costo de envio"
  }

  dimension: descuento {
    type: number
    sql: ${TABLE}.Descuento ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_envio {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_envio ;;
    label: "fecha del envio"
  }

  dimension_group: fecha_pedido {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_pedido ;;
    label: "fecha de pedido"
  }

  dimension: id_cliente {
    type: string
    sql: ${TABLE}.ID_cliente ;;
    label: "id del cliente"
  }

  dimension: id_fila {
    type: number
    sql: ${TABLE}.ID_fila ;;
    label: "id de fila"
  }

  dimension: id_mercado {
    type: string
    sql: ${TABLE}.Id_Mercado ;;
    label: "id del mercado"
  }

  dimension: id_pedido {
    type: string
    sql: ${TABLE}.ID_pedido ;;
    label: "id del pedido"
  }

  dimension: id_producto {
    type: string
    sql: ${TABLE}.ID_producto ;;
    label: "id del producto"
  }

  dimension: modo_envio {
    type: string
    sql: ${TABLE}.Modo_envio ;;
    label: "modo de envio"
  }

  dimension: prioridad_pedido {
    type: string
    sql: ${TABLE}.Prioridad_pedido ;;
    label: "prioridad de pedido"
  }

  dimension: ventas {
    type: number
    sql: ${TABLE}.Ventas ;;
  }
  measure: count {
    type: count
  }
}
