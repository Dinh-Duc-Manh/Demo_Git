<?php
$current_page = basename($_SERVER['PHP_SELF']);
?>
<header class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="index.php">Demo Git</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link <?= ($current_page === 'index.php') ? 'active' : '' ?>" href="index.php">Trang chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= ($current_page === 'page2.php') ? 'active' : '' ?>" href="page2.php">Trang 2</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= ($current_page === 'page3.php') ? 'active' : '' ?>" href="page3.php">Trang 3</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= ($current_page === 'contact.php') ? 'active' : '' ?>" href="contact.php">Liên hệ</a>
        </li>
      </ul>
    </div>
  </div>
</header>
