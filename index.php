
<?php 
require_once __DIR__ . '/src/helpers/url.php'; 
require_once __DIR__ . '/src/helpers/view.php'; 
?>

  <?= view('partials/head', ['title' => 'Inicio']); ?>

  <div class="hero_area">
    <div class="bg-box">
      <img src="<?= resources('images/hero-bg.jpg') ?>" alt="">
    </div>
    <!-- header section strats -->
    <?= view('partials/header'); ?>
    <!-- end header section -->
  </div>

  <div id="loader" style="display:none; text-align:center; padding:2rem;">
    Cargando ... 
  </div>

  <div ng-view></div>
  
  <?= view('partials/footer'); ?>

