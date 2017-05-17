defmodule Conekta.CustomerDeleteResponse do
  defstruct id: nil, name: nil, email: nil, phone: nil, livemode: nil, object: nil, created_at: nil, corporate: nil, delete: nil
end

defmodule Conekta.CustomerFindResponse do
  defstruct id: nil, name: nil, phone: nil, email: nil, livemode: nil, corporate: nil, created_at: nil, object: nil
end

defmodule Conekta.Customer do
  defstruct id: nil, name: nil, phone: nil, email: nil, plan_id: nil,
  payment_sources: [%{token_id: nil, type: nil}], corporate: nil,
  shipping_contacts: [], suscriptions: []
end

defmodule Conekta.CustomersResponse do
  defstruct has_more: nil, total: nil, object: nil, data: [%{
    livemode: nil,
    name: nil,
    email: nil,
    id: nil,
    object: nil,
    customer: nil,
    parent_id: nil,
    default: nil
  }]
end

defmodule Conekta.ErrorResponse do
  defstruct details: [%{
    debug_message: nil,
    message: nil,
    code: nil
  }],
  object: nil,
  type: nil
end

defmodule Conekta.Order do
  defstruct currency: nil,
    customer_info: %{customer_id: nil},
    line_items: [%{
    name: nil,
    unit_price: nil,
    quantity: nil
    }],
    charges: [%{
      payment_method: %{
        type: nil
      }
    }]
end

defmodule Conekta.OrdersResponse do
  defstruct has_more: nil, total: nil, object: nil, data: [%{
      livemode: nil, amount: nil, currency: nil, payment_status: nil, amount_refunded: nil, customer_info: %{
        email: nil, name: nil, corporate: nil, customer_id: nil, object: nil
      }, object: nil, id: nil, metadata: %{}, created_at: nil, updated_at: nil, line_items: %{
        object: nil, has_more: nil, total: nil, data: [%{
            name: nil, unit_price: nil, quantity: nil, object: nil, id: nil, parent_id: nil, metadata: %{}, antifraud_info: %{}
        }]
      }, charges: %{
        object: nil, has_more: nil, total: nil, data: [%{
            id: nil, livemode: nil, created_at: nil, currency: nil, device_finguerprint: nil, payment_method: %{
              name: nil, exp_month: nil, exp_year: nil, auth_code: nil, object: nil, type: nil, last4: nil, brand: nil, issuer: nil, account_type: nil, country: nil, fraud_score: nil, fraud_indicators: nil
            }, object: nil, description: nil, status: nil, amount: nil, paid_at: nil, fee: nil, customer_id: nil, order_id: nil
        }]
      }
  }]
end