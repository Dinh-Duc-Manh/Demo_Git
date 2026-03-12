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
  <style> /* fallback small styles if CSS not loaded */
    html,body{height:100%;margin:0;font-family:Inter,Arial,Helvetica,sans-serif}
  </style>
</head>
<body>
  <div class="container">
    <h1>Demo Git — Giao diện PHP đơn giản</h1>
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
</body>
</html>
