<?php
session_start();

$error = '';
$success = '';
$service = $_POST['service'] ?? '';
$name = $_POST['name'] ?? '';
$phone = $_POST['phone'] ?? '';
$email = $_POST['email'] ?? '';
$company = $_POST['company'] ?? '';
$message = $_POST['message'] ?? '';
$honeypot = $_POST['website'] ?? '';

if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(16));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'] ?? '')) {
        $error = 'Yêu cầu không hợp lệ.';
    } elseif ($honeypot !== '') {
        $error = 'Yêu cầu không hợp lệ.';
    } else {
        $name = trim($name);
        $email = trim($email);
        $phone = trim($phone);
        $company = trim($company);
        $message = trim($message);

        if ($name === '' || $email === '' || $message === '' || $service === '' || $company === '') {
            $error = 'Vui lòng điền đầy đủ các trường bắt buộc (*)';
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $error = 'Email không hợp lệ.';
        } else {
            $success = 'Cảm ơn bạn! Chúng tôi đã nhận được tin nhắn và sẽ liên hệ sớm.';
            $name = $email = $phone = $company = $service = $message = '';
            $_SESSION['csrf_token'] = bin2hex(random_bytes(16));
        }
    }
}
?>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Liên hệ — Demo</title>
    <link rel="stylesheet" href="assets/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
    <style>
    body{font-family:Inter,Arial,Helvetica,sans-serif;background:linear-gradient(135deg,#f5f7fa 0%,#e6eef8 100%);min-height:100vh;margin:0;padding:3rem 0}
    .contact-wrap{max-width:1100px;margin:0 auto;position:relative}
    .card-contact{border-radius:12px;box-shadow:0 10px 30px rgba(20,30,60,.12);overflow:visible;display:flex;flex-direction:column}
    .info {background:linear-gradient(180deg,#fff 0,#f8fbff);padding:2rem;flex:1;display:flex;flex-direction:column}
    .info h3{margin-top:0}
    .meta-item{display:flex;align-items:flex-start;margin-bottom:1rem}
    .meta-item svg{width:28px;height:28px;margin-right:.75rem;flex:0 0 28px}
    .map {height:300px;border-radius:8px;overflow:hidden;margin-top:1rem}
    .form-wrap{padding:2rem;background:#fff;flex:0 0 auto}
    .required{color:#d9534f}
    .social a{margin-right:.5rem;text-decoration:none}
    form{display:block}
    form .form-group{margin-bottom:1.25rem;display:block;width:100%}
    form .form-row{display:flex;gap:1rem;margin-bottom:1.25rem}
    form .form-row .form-group{flex:1;margin-bottom:0}
    form .form-control{width:100%}
    </style>
</head>
<body>
<div class="container contact-wrap">
    <div class="card card-contact">
        <div class="row no-gutters">
            <!-- form trên cùng (full width) -->
            <div class="form-wrap w-100 mb-4">
                <a class="btn btn-primary" href="index.php" role="button">Home</a>
                <h4 class="mt-3">Gửi thông tin liên hệ</h4>
                <p class="text-muted">Vui lòng điền thông tin; chúng tôi sẽ phản hồi trong vòng 24-48 giờ.</p>

                <?php if ($error): ?>
                    <div class="alert alert-danger"><?= htmlspecialchars($error, ENT_QUOTES, 'UTF-8') ?></div>
                <?php endif; ?>

                <?php if ($success): ?>
                    <div class="alert alert-success"><?= htmlspecialchars($success, ENT_QUOTES, 'UTF-8') ?></div>
                <?php endif; ?>

                <form method="post" action="<?= htmlspecialchars($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>">
                    <input type="hidden" name="csrf_token" value="<?= htmlspecialchars($_SESSION['csrf_token'], ENT_QUOTES, 'UTF-8') ?>">
                    <input type="hidden" name="website" value="">

                    <!-- Loại tư vấn -->
                    <div class="form-group">
                        <label for="service">Loại tư vấn <span class="required">*</span></label>
                        <select id="service" name="service" class="form-control" required>
                            <option value="">Chọn dịch vụ</option>
                            <option value="web" <?= $service === 'web' ? 'selected' : '' ?>>Phát triển web</option>
                            <option value="mobile" <?= $service === 'mobile' ? 'selected' : '' ?>>Phát triển di động</option>
                            <option value="salesforce" <?= $service === 'salesforce' ? 'selected' : '' ?>>Phát triển Salesforce</option>
                            <option value="offshore" <?= $service === 'offshore' ? 'selected' : '' ?>>Phát triển Offshore</option>
                            <option value="testing" <?= $service === 'testing' ? 'selected' : '' ?>>QC & Kiểm thử</option>
                            <option value="consulting" <?= $service === 'consulting' ? 'selected' : '' ?>>Tư vấn CNTT</option>
                        </select>
                    </div>

                    <!-- Họ & tên + Số điện thoại -->
                    <div class="form-row">
                        <div class="form-group">
                            <label for="name">Họ & tên <span class="required">*</span></label>
                            <input id="name" name="name" class="form-control" placeholder="Nhập tên của bạn" required value="<?= htmlspecialchars($name, ENT_QUOTES, 'UTF-8') ?>">
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại <span class="required">*</span></label>
                            <input id="phone" name="phone" class="form-control" placeholder="Nhập số điện thoại" required value="<?= htmlspecialchars($phone, ENT_QUOTES, 'UTF-8') ?>">
                        </div>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <label for="email">Email <span class="required">*</span></label>
                        <input id="email" name="email" type="email" class="form-control" placeholder="Nhập email của bạn" required value="<?= htmlspecialchars($email, ENT_QUOTES, 'UTF-8') ?>">
                    </div>

                    <!-- Công ty -->
                    <div class="form-group">
                        <label for="company">Công ty <span class="required">*</span></label>
                        <input id="company" name="company" class="form-control" placeholder="Tên công ty của bạn" required value="<?= htmlspecialchars($company, ENT_QUOTES, 'UTF-8') ?>">
                    </div>

                    <!-- Nội dung -->
                    <div class="form-group">
                        <label for="message">Nội dung <span class="required">*</span></label>
                        <textarea id="message" name="message" rows="5" class="form-control" placeholder="Nhập thông tin chi tiết..." required><?= htmlspecialchars($message, ENT_QUOTES, 'UTF-8') ?></textarea>
                    </div>

                    <!-- Checkbox -->
                    <div class="form-group">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="privacy" name="privacy" required>
                            <label class="custom-control-label" for="privacy">
                                Tôi đồng ý với <a href="#" class="text-primary">chính sách bảo mật</a>
                            </label>
                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <button type="submit" class="btn btn-lg btn-gradient">
                            Xác nhận thông tin
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" style="margin-left:0.5rem;vertical-align:middle">
                                <polyline points="13 17 20 10 13 3"></polyline>
                                <polyline points="20 10 0 10"></polyline>
                            </svg>
                        </button>
                    </div>
                </form>
            </div>

            <!-- Thông tin liên hệ -->
            <div class="info w-100">
                <h3>Liên hệ với chúng tôi</h3>
                <p class="text-muted">Nếu bạn cần hỗ trợ, báo giá hoặc hợp tác, vui lòng liên hệ trực tiếp.</p>

                <div class="meta-item">
                    <svg viewBox="0 0 24 24" fill="none" aria-hidden="true"><path d="M12 2a7 7 0 017 7c0 5-7 13-7 13S5 14 5 9a7 7 0 017-7z" stroke="#2b6cb0" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                    <div>
                        <strong>Văn phòng</strong><br>
                        123 Đường Demo, Quận ABC, Thành phố XYZ
                    </div>
                </div>

                <div class="meta-item">
                    <svg viewBox="0 0 24 24" fill="none" aria-hidden="true"><path d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07 19.5 19.5 0 01-6-6 19.79 19.79 0 01-3.07-8.63A2 2 0 014.11 2h3a2 2 0 012 1.72c.12.99.36 1.95.71 2.85a2 2 0 01-.45 2.11L9.7 9.7a16 16 0 006 6l1.01-1.01a2 2 0 012.11-.45c.9.35 1.86.59 2.85.71A2 2 0 0122 16.92z" stroke="#2b6cb0" stroke-width="1.4" stroke-linecap="round" stroke-linejoin="round"/></svg>
                    <div>
                        <strong>Điện thoại</strong><br>
                        +84 123 456 789
                    </div>
                </div>

                <div class="meta-item">
                    <svg viewBox="0 0 24 24" fill="none" aria-hidden="true"><path d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8" stroke="#2b6cb0" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><rect x="2" y="4" width="20" height="16" rx="2" stroke="#2b6cb0" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                    <div>
                        <strong>Email</strong><br>
                        <a href="mailto:info@example.com">info@example.com</a>
                    </div>
                </div>

                <div class="map">
                    <iframe src="https://www.google.com/maps?q=Hanoi+Vietnam&output=embed" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>

                <div class="mt-3">
                    <strong>Giờ làm việc</strong>
                    <div class="text-muted">T2 - T6: 08:30 - 17:30</div>
                </div>

                <div class="mt-3 social">
                    <strong>Mạng xã hội</strong><br>
                    <a href="#" aria-label="facebook">Facebook</a>
                    <a href="#" aria-label="linkedin">LinkedIn</a>
                    <a href="#" aria-label="twitter">Twitter</a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include 'footer.php'; ?>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>