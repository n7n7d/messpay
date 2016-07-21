json.extract! bill, :id, :from_date, :to_date, :exipry_date, :amount, :payment_mode, :is_paid, :paid_amount, :resident_id, :created_at, :updated_at
json.url bill_url(bill, format: :json)