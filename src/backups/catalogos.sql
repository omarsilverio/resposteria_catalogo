-- roles
INSERT INTO roles (rol) VALUES ('admin');

-- categoria y subcategorías para Pasteles
INSERT INTO categorias (categoria) VALUES ('Pasteles');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Esponjosos', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Mantequilla', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Merengue', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Aceite', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Fermentados', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Humedos', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Semi-humedos', 1);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Secos', 1);

-- Insertar tipos de Helados (no sabores)
INSERT INTO categorias (categoria) VALUES ('Helados');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Artesanal', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Crema', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Soft', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Paleta', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Cono', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Barra', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Taza', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegano', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Lactosa', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Yogurt', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Leche', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Agua', 2);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sorbete', 2);

-- Insertar tipos de Galletas (no sabores)
INSERT INTO categorias (categoria) VALUES ('Galletas');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Dulces', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Decoradas', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Rellenas', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sandwich', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Saladas', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Mantequilla', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Chocolate', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Avena', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De Temporada', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De Aventura', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Jengibre', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Estampada', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Cortada', 3);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Extruida', 3);

-- Insertar tipos de Brownies (no sabores)
INSERT INTO categorias (categoria) VALUES ('Brownies');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásico', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De Textura Suave', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De Textura Densa', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Relleno', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Con Frutos Secos', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegano', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Gluten', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('En Miniatura', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Con Cobertura de Chocolate', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Con Cobertura de Chocolate Blanco', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De menta', 4);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De caramelo', 4);

-- Insertar tipos de Cupcakes
INSERT INTO categorias (categoria) VALUES ('Cupcakes');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásico', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Decorado', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Relleno', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Mini Cupcake', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegano', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Gluten', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Azúcar', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Temporada', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Colores', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Fondant', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Tres leches', 5);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Red Velvet', 5);

-- Insertar tipos de Donas (no sabores)
INSERT INTO categorias (categoria) VALUES ('Donas');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásicas', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Rellenas', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Glaseadas', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Chocolate', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Hornear', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Veganas', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Bañado en Azúcar', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('De Pastelito', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Miniatura', 6);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Decoración Especial', 6);

-- Insertar tipos de Tartas (no sabores)
INSERT INTO categorias (categoria) VALUES ('Tartas');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásica', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Relleno de Frutas', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Chocolate', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Mermelada', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Queso', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Limón', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Manzana', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegana', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Gluten', 7);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Crema Pastelera', 7);

-- Insertar tipos de Pudines (no sabores)
INSERT INTO categorias (categoria) VALUES ('Pudines');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásico', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Vainilla', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Chocolate', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Arroz', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Coco', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Caramelo', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Café', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegano', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Gluten', 8);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Chía', 8);

-- Insertar tipos de (no sabores)
INSERT INTO categorias (categoria) VALUES ('Cheesecake');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásico', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Hornear', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Horneado', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Tarta', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Miniatura', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegano', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Gluten', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Base de Galleta', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('en Vasito', 9);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Edición Especial', 9);

-- Insertar tipos de Gelatinas
INSERT INTO categorias (categoria) VALUES ('Gelatinas');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásica', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Frutas', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Yogur', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('con Leche', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('en Vasito', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Sin Azúcar', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegana', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Colores', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('en Capas', 10);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Flores', 10);

-- Insertar tipos de Flanes
INSERT INTO categorias (categoria) VALUES ('Flanes');
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Clásico', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Queso', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Vainilla', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Coco', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Chocolate', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Caramelo', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('Vegano', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Leche Condensada', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Café', 11);
INSERT INTO subcategorias (subcategoria, fk_categorias) VALUES ('de Huevo', 11);