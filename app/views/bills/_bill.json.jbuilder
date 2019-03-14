json.extract! bill, :id, :name, :bill_no, :date, :amount, :detail, :re_sph_dist, :re_sph_nr, :re_cyl_dist, :re_cyl_nr, :re_axis, :le_sph_dist, :le_sph_nr, :le_cyl_dist, :le_cyl_nr, :le_axis, :created_at, :updated_at
json.url bill_url(bill, format: :json)
