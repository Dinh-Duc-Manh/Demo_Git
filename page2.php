<?php
$error = $_POST['error'] ?? '';
$username = $_POST['username'] ?? '';
?>
<!doctype html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Trang 2 — Đăng nhập</title>
  <link rel="stylesheet" href="assets/style.css">
  <style>html,body{height:100%;margin:0;font-family:Inter,Arial,Helvetica,sans-serif}</style>
</head>
<body>
  <div class="container">
    <h1>Đăng nhập</h1>
    <form method="post" action="page2.php">
      <label>Tên đăng nhập</label>
      <input name="username" placeholder="Tên đăng nhập" value="<?= htmlspecialchars($username) ?>">
      <label>Mật khẩu</label>
      <input name="password" type="password" placeholder="Mật khẩu">
      <button type="submit">Đăng nhập</button>
    </form>
    <p><a href="index.php">Quay lại trang chính</a></p>
  </div>
</body>
</html>
