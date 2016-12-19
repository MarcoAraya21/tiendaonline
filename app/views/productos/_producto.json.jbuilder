json.extract! producto, :id, :category_id, :Nombre, :Descripcion, :Modelo, :Precio, :Stock, :Imagen, :created_at, :updated_at
json.url producto_url(producto, format: :json)