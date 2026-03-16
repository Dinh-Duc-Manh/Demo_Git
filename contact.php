<?php
session_start();

$error = '';
$success = '';
$name = $_POST['name'] ?? '';
$email = $_POST['email'] ?? '';
$phone = $_POST['phone'] ?? '';
$subject = $_POST['subject'] ?? '';
$message = $_POST['message'] ?? '';
$honeypot = $_POST['website'] ?? '';

if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(16));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // basic security checks
    if (!hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'] ?? '')) {
        $error = 'Yêu cầu không hợp lệ.';
    } elseif ($honeypot !== '') {
        // bot likely
        $error = 'Yêu cầu không hợp lệ.';
    } else {
        $name = trim($name);
        $email = trim($email);
        $phone = trim($phone);
        $subject = trim($subject);
        $message = trim($message);

        if ($name === '' || $email === '' || $message === '' || $subject === '') {
            $error = 'Vui lòng điền đầy đủ các trường bắt buộc (*)';
        } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $error = 'Email không hợp lệ.';
        } else {
            // demo: gửi mail hoặc lưu vào DB
            // $to = 'you@domain.com';
            // $headers = "From: {$name} <{$email}>\r\nReply-To: {$email}";
            // mail($to, $subject, $message . "\n\nSĐT: $phone", $headers);

            $success = 'Cảm ơn bạn! Chúng tôi đã nhận được tin nhắn và sẽ liên hệ sớm.';
            // reset form
            $name = $email = $phone = $subject = $message = '';
            // refresh CSRF
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
    </style>
</head>
<body>
<div class="container contact-wrap">
    <div class="card card-contact">
        <div class="row no-gutters">
            <!-- form trên cùng (full width), bỏ col-lg- -->
            <div class="form-wrap w-100 mb-4">
                <h4>Gửi thông tin liên hệ</h4>
                <p class="text-muted">Vui lòng điền thông tin; chúng tôi sẽ phản hồi trong vòng 24-48 giờ.</p>

                <?php if ($error): ?>
                    <div class="alert alert-danger"><?= htmlspecialchars($error, ENT_QUOTES, 'UTF-8') ?></div>
                <?php endif; ?>

                <?php if ($success): ?>
                    <div class="alert alert-success"><?= htmlspecialchars($success, ENT_QUOTES, 'UTF-8') ?></div>
                <?php endif; ?>

                <form method="post" action="<?= htmlspecialchars($_SERVER['PHP_SELF'], ENT_QUOTES, 'UTF-8') ?>">
                    <input type="hidden" name="csrf_token" value="<?= htmlspecialchars($_SESSION['csrf_token'], ENT_QUOTES, 'UTF-8') ?>">
                    <input type="hidden" name="website" value=""> <!-- honeypot -->

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="name">Họ & tên <span class="required">*</span></label>
                            <input id="name" name="name" class="form-control" required value="<?= htmlspecialchars($name, ENT_QUOTES, 'UTF-8') ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="email">Email <span class="required">*</span></label>
                            <input id="email" name="email" type="email" class="form-control" required value="<?= htmlspecialchars($email, ENT_QUOTES, 'UTF-8') ?>">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="phone">Số điện thoại</label>
                            <input id="phone" name="phone" class="form-control" value="<?= htmlspecialchars($phone, ENT_QUOTES, 'UTF-8') ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="subject">Chủ đề <span class="required">*</span></label>
                            <input id="subject" name="subject" class="form-control" required value="<?= htmlspecialchars($subject, ENT_QUOTES, 'UTF-8') ?>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="message">Nội dung <span class="required">*</span></label>
                        <textarea id="message" name="message" rows="6" class="form-control" required><?= htmlspecialchars($message, ENT_QUOTES, 'UTF-8') ?></textarea>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                        <div class="text-muted small">Bằng việc gửi, bạn đồng ý với chính sách bảo mật.</div>
                        <div>
                            <button type="submit" class="btn btn-primary">Gửi liên hệ</button>
                            <a class="btn btn-link" href="index.php">Quay lại</a>
                        </div>
                    </div>
                </form>
            </div>

            <!-- thông tin liên hệ bên dưới (full width), bỏ col-lg- -->
            <div class="info w-100">
                <h3>Liên hệ với chúng tôi</h3>
                <p class="text-muted">Mô tả ngắn: nếu bạn cần hỗ trợ, báo giá hoặc hợp tác, vui lòng gửi thông tin bên dưới.</p>

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

                <div class="map mt-3 mb-2">
                    <!-- public map embed, thay địa chỉ nếu cần -->
                    <iframe src="https://www.google.com/maps?q=Hanoi+Vietnam&output=embed" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>

                <div class="mt-3">
                    <strong>Giờ làm việc</strong>
                    <div class="text-muted">T2 - T6: 08:30 - 17:30 · T7: 09:00 - 12:00</div>
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