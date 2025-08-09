<section class="addProduct_section">
<style>

  .form-control-placeholder {
    position: absolute;
    top: 0;
    padding: 7px 0 0 10px;
    transition: all 200ms;
    opacity: 0.5;
    color: #fff;
  }
  .form-control:focus + .form-control-placeholder,
  .form-control:valid + .form-control-placeholder {
    font-size: 69%;
    transform: translate3d(0, -100%, 0);
    opacity: 1;
    top:10px;
  }

  /* Estilo del input o textarea */
  .form-control {
      border: 0;
      outline: 0;
      border-bottom: 2px solid #eee;
      font-size: 16px;
      color: #ccc;
      background-color: transparent;
      width: 100%;  /* Asegura que el input/textarea tenga el ancho completo */
  }

  .form-control:focus {
      border: 0;
      color: #fff;
      background-color: transparent;
      border-color: #fff;
      outline: 0;
      border-bottom: 2px solid #fff;
      box-shadow: 0 0 0 0.2rem transparent;
  }  
  .form-floating {
    position: relative;
  }
  .form-floating textarea {
    padding-top: 1.5rem;
  }
  .form-floating label {
    position: absolute;
    top: 0.5rem;
    left: 0.75rem;
    font-size: 16px;
    color: #fff;
    transition: all 0.2s;
    opacity: 0.5;
  }
  .form-floating textarea:focus + label,
  .form-floating textarea:not(:placeholder-shown) + label {
    top: -0.5rem;
    left: 0.75rem;
    opacity: 1;
    font-size: 0.75rem;
    color: #fff;
  }


  .form-control-radio {
  font-size: 16px;
  line-height: 1.1;
  display: grid;
  grid-template-columns: 1em auto;
  gap: 0.5em;
}

.form-control-radio + .form-control-radio {
  margin-top: 1em;
}

.form-control-radio:focus-within {
  color:white;
}

input[type="radio"] {
  /* Add if not using autoprefixer */
  -webkit-appearance: none;
  /* Remove most all native input styles */
  appearance: none;
  /* For iOS < 15 */
  background-color: #fff;
  /* Not removed via appearance */
  margin: 0;

  font: inherit;
  color: currentColor;
  width: 1.15em;
  height: 1.15em;
  border: 0.15em solid currentColor;
  border-radius: 50%;
  transform: translateY(-0.075em);

  display: grid;
  place-content: center;
}

input[type="radio"]::before {
  content: "";
  width: 0.65em;
  height: 0.65em;
  border-radius: 50%;
  transform: scale(0);
  transition: 120ms transform ease-in-out;
  box-shadow: inset 1em 1em green;
}

input[type="radio"]:checked::before {
  transform: scale(1);
}

input[type="radio"]:focus {
  outline: max(2px, 0.15em) solid currentColor;
  outline-offset: max(2px, 0.15em);
}
</style>
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card text-white">
          <div class="card-body p-5">
            <div class="mb-md-5 mt-md-4 pb-5">
              <h2 class="text-white mb-5 text-uppercase subtitle">Agregar Producto</h2>
              
              <div class="container-fluid">

                <div class="row mb-2">
                  <div class="col-12">
                    <div class="form-group">
                      <input type="text" id="titulo" class="form-control" required>
                      <label class="form-control-placeholder" for="titulo">Nombre</label>
                    </div>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <div class="form-group form-floating">
                      <textarea class="form-control" id="descripcion" placeholder=" " rows="5"></textarea>
                      <label for="descripcion">Descripción</label>
                    </div>
                  </div>
                </div>
              

                <div class="row mb-2">
                  <div class="col-12">                    
                    <label for="exampleFormControlTextarea1">Es especialidad: </label>
                    <div class="row">
                      <div class="col-6">
                        <label class="form-control-radio">
                          <input type="radio" name="radio" />
                          Si
                        </label>

                      </div>
                      <div class="col-6">
                          <label class="form-control-radio">
                            <input type="radio" name="radio" checked />
                            No
                          </label> 
                      </div>

                    </div>
                     

                             
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <div class="form-group">
                      <input type="text" id="stock" class="form-control" required>
                      <label class="form-control-placeholder" for="stock">Stock</label>
                    </div>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <label for="pk_categorias">Categoria</label>
                    <select class="form-control" id="pk_categorias">
                      <option selected>Seleccione una opción</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <label for="fk_subcategorias">Subcategoria</label>
                    <select class="form-control" id="fk_subcategorias">
                      <option selected>Seleccione una opción</option>
                      <option value="1">One</option>
                      <option value="2">Two</option>
                      <option value="3">Three</option>
                    </select>
                  </div>                  
                </div>
                
                <div class="row mb-2">
                  <div class="col-12">
                    <div class="form-group">
                      <label for="exampleFormControlFile1">Seleccione un imagen</label>
                      <input type="file" class="form-control-file" id="exampleFormControlFile1">
                    </div>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <button class="btn btn-outline-light" type="button">Agregar Precio</button>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <div class="table-responsive">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Precio base</th>
                          <th scope="col">Medida</th>
                          <th scope="col">Porciones</th>
                          <th scope="col">Descuento</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row">1</th>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td>@mdo</td>
                          <td>@mdo</td>
                        </tr>
                      </tbody>
                    </table>
                    </div>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-12">
                    <button class="btn btn-outline-light btn-lg px-5" type="submit">Guardar</button>
                  </div>
                </div>

              </div>
              
              


            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</section>