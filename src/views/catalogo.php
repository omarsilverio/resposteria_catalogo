<section class="food_section layout_padding" ng-controller="catalogoController">
  <div class="container">
    <div class="heading_container heading_center">
      <h2>
        Catalogo
      </h2>
    </div>

    <ul class="filters_menu">
      <li class="active" data-filter="*">Todo</li>
      <li ng-repeat="filtro in filtros" data-filter=".{{filtro.descripcion}}">
        {{filtro.descripcion}}
      </li>
    </ul>

    <div class="filters-content">
      <div class="row grid">
        <div ng-repeat="postre in postres" class="col-sm-6 col-lg-4 all {{ postre.tipo }}">
          <div class="box">
            <div>
              <div class="img-box">
                <img src="src/resources/images/catalogo/{{ postre.nombre_imagen }}" alt="">
              </div>
              <div class="detail-box">
                <h5>
                  {{ postre.nombre_producto }}
                </h5>
                <p>
                  {{ postre.descripcion }}
                </p>
                <div class="options">
                  <h6>
                    $20
                  </h6>
                  <a>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>