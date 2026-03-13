<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
      #page3Carousel .carousel-item img {
        width: 700px !important;
        height: 350px !important;
        object-fit: cover !important;
        margin: 0 auto;
      }
      @media (max-width: 768px) {
        #page3Carousel .carousel-item img {
          width: 100% !important;
          height: auto !important;
        }
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Trang 3</h1>
      <p class="muted">Đây là trang 3, bạn có thể quay lại.</p>

      <div class="row">
        <div class="col-md-8">
          <div class="card mb-3">
            <div id="page3Carousel" class="carousel slide card-img-top" data-ride="carousel" data-interval="3000">
              <ol class="carousel-indicators">
                <li data-target="#page3Carousel" data-slide-to="0" class="active"></li>
                <li data-target="#page3Carousel" data-slide-to="1"></li>
                <li data-target="#page3Carousel" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="assets/img/hinh1.jpg" class="d-block w-100" alt="Ảnh 1">
                </div>
                <div class="carousel-item">
                  <img src="assets/img/hinh2.jpg" class="d-block w-100" alt="Ảnh 2">
                </div>
                <div class="carousel-item">
                  <img src="assets/img/hinh3.jpg" class="d-block w-100" alt="Ảnh 3">
                </div>
              </div>
              <a class="carousel-control-prev" href="#page3Carousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#page3Carousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
            <div class="card-body">
              <h5 class="card-title">Chào mừng đến Trang 3</h5>
              <p class="card-text">Welcome to page3</p>
              <a href="page2.php" class="btn btn-outline-secondary">Xem Trang 2</a>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="list-group mb-3">
            <a href="index.php" class="list-group-item list-group-item-action">Trang 1</a>
            <a href="page2.php" class="list-group-item list-group-item-action">Trang 2</a>
            <a href="#" class="list-group-item list-group-item-action disabled">Liên hệ (tạm)</a>
          </div>
          <div class="card">
            <div class="card-body p-2">
              <small class="text-muted">Ghi chú: đây là nội dung ví dụ.</small>
            </div>
          </div>
        </div>
      </div>

      <div class="mt-3">
        <a class="btn btn-primary" href="index.php" role="button">Quay lại Trang 1</a>
      </div>

      <footer class="mt-4 text-center text-muted">© 2026 Demo</footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>