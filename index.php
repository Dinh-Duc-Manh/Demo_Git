<?php
$branch = null;
$commits = null;
if (is_dir(__DIR__ . '/.git')) {
    $branch = trim(@shell_exec('git -C ' . escapeshellarg(__DIR__) . ' rev-parse --abbrev-ref HEAD 2>/dev/null'));
    $commits = @shell_exec('git -C ' . escapeshellarg(__DIR__) . ' --no-pager log --oneline -n 5 2>/dev/null');
}
$name = $_POST['name'] ?? '';
?>
<!doctype html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Demo Git - Giao diện đơn giản</title>
  <link rel="stylesheet" href="assets/style.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <style> /* fallback small styles if CSS not loaded */
    html,body{height:100%;margin:0;font-family:Inter,Arial,Helvetica,sans-serif}
  </style>
</head>
<body>
  <div class="container">
    <h1>Demo Git</h1>
    <a name="" id="" class="btn btn-success" href="page2.php" role="button">Trang 2</a>
    <a name="" id="" class="btn btn-primary" href="page3.php" role="button">Trang 3</a>
    <p class="muted">Trang demo để trình bày commit, branch và phản hồi PHP.</p>

    <section class="card">
      <h2>Nhập tên (ví dụ demo PHP)</h2>
      <form method="post">
        <input name="name" placeholder="Tên của bạn" value="<?= htmlspecialchars($name) ?>">
        <button type="submit">Gửi</button>
      </form>
      <?php if ($name): ?>
        <p class="success">Xin chào, <?= htmlspecialchars($name) ?>! Đây là demo PHP.</p>
      <?php endif; ?>
    </section>

    <section class="card">
      <h2>Thông tin Git (nếu repository có .git)</h2>
      <?php if ($branch !== null && $branch !== ''): ?>
        <p><strong>Branch hiện tại:</strong> <?= htmlspecialchars($branch) ?></p>
      <?php else: ?>
        <p class="muted">Không tìm thấy Git trong thư mục này.</p>
      <?php endif; ?>

      <?php if ($commits): ?>
        <pre class="commits"><?= htmlspecialchars($commits) ?></pre>
      <?php endif; ?>
    </section>

    <footer>
      <small>Chạy server PHP: <code>php -S localhost:8000</code> và mở <a href="/index.php">index.php</a></small>
    </footer>
  </div>


  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
