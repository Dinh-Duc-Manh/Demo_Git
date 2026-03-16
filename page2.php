<?php
// ...existing code...
?>
<!doctype html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Trang 2 — Đăng nhập</title>
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
    html, body {
        height: 100%;
        margin: 0;
        font-family: Inter, Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        position: relative;
        overflow-x: hidden;
    }

    /* decorative background blobs */
    .bg-blob {
        position: absolute;
        z-index: 0;
        width: 48vmax;
        height: 48vmax;
        opacity: 0.16;
        filter: blur(36px);
        pointer-events: none;
    }
    .blob1 { top: -10%; left: -12%; transform: rotate(15deg); }
    .blob2 { bottom: -14%; right: -10%; transform: rotate(-10deg); }

    .login-container {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 2rem;
        position: relative;
        z-index: 1;
    }

    .login-card {
        width: 100%;
        max-width: 560px;
        padding: 2rem;
        border-radius: 12px;
        box-shadow: 0 8px 30px rgba(20, 30, 60, 0.12);
        background: #ffffff;
    }

    .login-card h2 {
        margin-bottom: 0.25rem;
        font-weight: 600;
    }

    .login-card .muted {
        color: #6c757d;
        margin-bottom: 1.25rem;
    }

    .form-control:focus {
        box-shadow: 0 0 0 0.2rem rgba(0,123,255,0.12);
        border-color: #80bdff;
    }

    .btn-primary {
        min-width: 120px;
    }

    .btn-secondary-link {
        color: #6c757d;
        text-decoration: none;
        padding: 0.38rem 0.6rem;
        border-radius: 4px;
    }

    .btn-secondary-link:hover {
        text-decoration: underline;
        color: #495057;
    }

    @media (max-width: 480px) {
        .login-card {
            padding: 1.25rem;
            border-radius: 10px;
        }
    }
    </style>
</head>

<body>
    <!-- decorative SVG backgrounds -->
    <svg class="bg-blob blob1" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
        <defs>
            <linearGradient id="g1" x1="0" x2="1" y1="0" y2="1">
                <stop offset="0" stop-color="#FFB199"/>
                <stop offset="1" stop-color="#FFDA7B"/>
            </linearGradient>
        </defs>
        <path fill="url(#g1)" d="M421.6,106.8C459.6,164.4,401,243.1,351.7,297.7C302.4,352.3,227.9,388.2,169,360.7C110.1,333.2,77.8,242.2,96.5,172.8C115.3,103.5,183.7,52.5,246.9,39.8C310.1,27.2,383.6,49.2,421.6,106.8Z"/>
    </svg>

    <svg class="bg-blob blob2" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
        <defs>
            <linearGradient id="g2" x1="0" x2="1" y1="0" y2="1">
                <stop offset="0" stop-color="#8FD3FF"/>
                <stop offset="1" stop-color="#88F7D7"/>
            </linearGradient>
        </defs>
        <path fill="url(#g2)" d="M456.5,382.2C486.6,448.9,456.9,523.4,397,548.3C337,573.2,268.9,558.1,210.4,528.9C151.9,499.6,111.6,456.2,88.8,398.3C65.9,340.4,60.6,276.1,94.2,224.9C127.9,173.6,206.6,141.3,270.1,123.8C333.7,106.3,426.4,315.5,456.5,382.2Z"/>
    </svg>

    <!-- raster background image (SVG) -->
    <svg class="bg-blob" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" style="right:6%;top:6%;width:36vmax;height:36vmax;">
        <image href="https://cdn-media.sforum.vn/storage/app/media/ctv_seo3/mau-background-dep-5.jpg" x="0" y="0" width="600" height="600" preserveAspectRatio="xMidYMid slice" />
    </svg>

    <div class="container login-container">
        <section class="card login-card">
            <h2>Đăng nhập</h2>
            <p class="muted">Nhập thông tin để tiếp tục.</p>

            <?php if ($error): ?>
                <div class="alert alert-danger" role="alert"><?= htmlspecialchars($error, ENT_QUOTES, 'UTF-8') ?></div>
            <?php endif; ?>

            <?php if ($_SERVER['REQUEST_METHOD'] === 'POST' && $error === ''): ?>
                <div class="alert alert-success">Đăng nhập thành công (demo). Xin chào, <?= htmlspecialchars($username, ENT_QUOTES, 'UTF-8') ?>.</div>
                <div class="mt-3">
                    <a class="btn btn-outline-primary" href="index.php">Về trang chủ</a>
                </div>
            <?php else: ?>
                <form method="post" action="<?= htmlspecialchars($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>">
                    <div class="form-group">
                        <label for="username">Tên đăng nhập</label>
                        <input id="username" name="username" class="form-control" placeholder="Tên đăng nhập" value="<?= htmlspecialchars($username, ENT_QUOTES, 'UTF-8') ?>" autofocus required>
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu</label>
                        <input id="password" name="password" type="password" class="form-control" placeholder="Mật khẩu" required>
                    </div>

                    <div class="d-flex justify-content-between align-items-center mt-3">
                        <button type="submit" class="btn btn-primary">Đăng nhập</button>
                        <a class="btn-secondary-link" href="index.php">Quay lại</a>
                    </div>
                </form>
            <?php endif; ?>
        </section>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>

</body>

</html>