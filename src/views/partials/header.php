 <!-- header section strats -->
<header class="header_section">
    <div class="container">
    <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="index.html">
        <span>
            Postres La Yeny
        </span>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"> </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav  mx-auto ">
            <li class="nav-item" ng-class="currentPath === '/' ? 'active' : ''">
                <a class="nav-link" href="/">Inicio <span class="sr-only">(current)</span> </a>
            </li>
            <li class="nav-item" ng-class="currentPath === '/catalogo' ? 'active' : ''">
                <a class="nav-link" href="/catalogo">Catalogo </a>
            </li>
            <li class="nav-item" ng-class="currentPath === '/contacto' ? 'active' : ''">
                <a class="nav-link" href="contacto">Contacto </a>
            </li>
        </ul>
        </div>
    </nav>
    </div>
</header>