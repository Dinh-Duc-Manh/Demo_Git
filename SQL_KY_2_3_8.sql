use master;
go
Drop DATABASE KY_2;
go
CREATE DATABASE KY_2;
GO
USE KY_2;
GO
CREATE TABLE Categories
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(100) NOT NULL UNIQUE
)
go
insert into Categories values (N'Light Novel'),
(N'Giáo Khoa - Tham Khảo'),
(N'Văn Học'),
(N'Tâm Lý - Kỹ Năng Sống'),
(N'Manga - Comic'),
(N'Kinh Tế')
GO
select * from Categories
go
CREATE TABLE Products
(
	Id int PRIMARY KEY IDENTITY,
	Name nvarchar(120) NOT NULL,
	Author nvarchar(60) NOT NULL,
	Nha_cung_cap nvarchar(60) NOT NULL,
    Nha_xuat_ban nvarchar(500) NOT NULL,
	Sets nvarchar(500) NULL,
	Category_id int,
    FOREIGN KEY (Category_id) REFERENCES Categories(Id),
	Price float NOT NULL,
    Sale_price float NULL,
    Content nvarchar(4000) NOT NULL,
	Thong_tin nvarchar(2000) NOT NULL,
	Ngay_xuat_ban datetime,
    Status tinyint DEFAULT '0',
	Img nvarchar(500) NOT NULL
)
go
insert into Products values 

(N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 13',N'Tappei Nagatsuki',N'IPM',N'Hồng Đức',
N'Re:zero',1,120000,96000,N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 13

Tập 13 là tập kết thúc arc Thánh vực. Kết thúc này được lột tả bằng hai điểm đặc trưng: một là rất nhiều cảnh hành động, hai là hội thoại rất buồn cười.

Cảnh hành động trải dài từ các sàn đấu lớn đến các sàn đấu nhỏ, từ đấu tay đôi đến liên minh. 
Hội thoại đầy vị buồn cười với sự góp công lớn lao của nhân vật chính kiêm hoạt náo viên Subaru, chủ yếu trình chiếu qua màn tương tác giữa cậu với cô thủ thư phòng sách cấm, đại tinh linh Beatrice.

Xen kẽ giữa hai điểm ấy là các thử thách còn lại của Emilia trong phần mộ, cùng rất nhiều tua ngược về các cảnh trong quá khứ không tồn tại lẫn tua đi trong tương lai chưa xảy ra.

Cuối cùng khép lại bằng một cái kết nhốn nháo, bất ngờ, làm rõ một vài bí ẩn nhưng lại đan cài thêm vài chục bí ẩn nữa.',
N'Mã hàng : 8935250709330
Dự Kiến Có Hàng	: 22/07/2023
Ngày Dự Kiến Phát Hành	: 22/07/2023
Tên Nhà Cung Cấp : IPM
Tác giả	: Tappei Nagatsuki, Shinichirou Otsuka
Người Dịch	: Bi
NXB	: Hồng Đức
Năm XB : 2023
Ngôn Ngữ :Tiếng Việt
Trọng lượng (gr) : 300
Kích Thước Bao Bì :18 x 13 x 2 cm
Số trang :418
Hình thức	:Bìa Mềm
Sản phẩm bán chạy nhất	Top 100 sản phẩm Light Novel bán chạy của tháng','2023-07-22',1,N'bia_1_-_re_13_1.jpg'),

(N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 14',N'Tappei Nagatsuki',N'IPM',N'Hồng Đức',
N'Re:zero',1,120000,96000,N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 14

Tập 14 là tập kết thúc arc Thánh vực. Kết thúc này được lột tả bằng hai điểm đặc trưng: một là rất nhiều cảnh hành động, hai là hội thoại rất buồn cười.

Cảnh hành động trải dài từ các sàn đấu lớn đến các sàn đấu nhỏ, từ đấu tay đôi đến liên minh. 
Hội thoại đầy vị buồn cười với sự góp công lớn lao của nhân vật chính kiêm hoạt náo viên Subaru, chủ yếu trình chiếu qua màn tương tác giữa cậu với cô thủ thư phòng sách cấm, đại tinh linh Beatrice.

Xen kẽ giữa hai điểm ấy là các thử thách còn lại của Emilia trong phần mộ, cùng rất nhiều tua ngược về các cảnh trong quá khứ không tồn tại lẫn tua đi trong tương lai chưa xảy ra.

Cuối cùng khép lại bằng một cái kết nhốn nháo, bất ngờ, làm rõ một vài bí ẩn nhưng lại đan cài thêm vài chục bí ẩn nữa.',
N'Mã hàng : 8935250709330
Dự Kiến Có Hàng	: 22/07/2023
Ngày Dự Kiến Phát Hành	: 22/07/2023
Tên Nhà Cung Cấp : IPM
Tác giả	: Tappei Nagatsuki, Shinichirou Otsuka
Người Dịch	: Bi
NXB	: Hồng Đức
Năm XB : 2023
Ngôn Ngữ :Tiếng Việt
Trọng lượng (gr) : 300
Kích Thước Bao Bì :18 x 13 x 2 cm
Số trang :418
Hình thức	:Bìa Mềm
Sản phẩm bán chạy nhất	Top 100 sản phẩm Light Novel bán chạy của tháng','2023-07-22',1,N'b_a_1-re_14.jpg'),

(N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 15',N'Tappei Nagatsuki',N'IPM',N'Hồng Đức',
N'Re:zero',1,120000,102000,N'Re:Zero - Bắt Đầu Lại Ở Thế Giới Khác - Tập 15

Tập 15 là tập kết thúc arc Thánh vực. Kết thúc này được lột tả bằng hai điểm đặc trưng: một là rất nhiều cảnh hành động, hai là hội thoại rất buồn cười.

Cảnh hành động trải dài từ các sàn đấu lớn đến các sàn đấu nhỏ, từ đấu tay đôi đến liên minh. 
Hội thoại đầy vị buồn cười với sự góp công lớn lao của nhân vật chính kiêm hoạt náo viên Subaru, chủ yếu trình chiếu qua màn tương tác giữa cậu với cô thủ thư phòng sách cấm, đại tinh linh Beatrice.

Xen kẽ giữa hai điểm ấy là các thử thách còn lại của Emilia trong phần mộ, cùng rất nhiều tua ngược về các cảnh trong quá khứ không tồn tại lẫn tua đi trong tương lai chưa xảy ra.

Cuối cùng khép lại bằng một cái kết nhốn nháo, bất ngờ, làm rõ một vài bí ẩn nhưng lại đan cài thêm vài chục bí ẩn nữa.',
N'Mã hàng : 8935250709330
Dự Kiến Có Hàng	: 22/08/2023
Ngày Dự Kiến Phát Hành	: 22/08/2023
Tên Nhà Cung Cấp : IPM
Tác giả	: Tappei Nagatsuki, Shinichirou Otsuka
Người Dịch	: Bi
NXB	: Hồng Đức
Năm XB : 2023
Ngôn Ngữ :Tiếng Việt
Trọng lượng (gr) : 300
Kích Thước Bao Bì :18 x 13 x 2 cm
Số trang :418
Hình thức	:Bìa Mềm
Sản phẩm bán chạy nhất	Top 100 sản phẩm Light Novel bán chạy của tháng','2023-08-22',2,N'ReZero_T15_01.jpg'),



(N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 3',N'Kinugasa Syougo',N'IPM',N'Hồng Đức',
N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực',1,120000,96000,N'Hè đến. Sau khi vượt qua kì thi cuối kì và bước vào kì nghỉ hè, 
nhóm Kiyotaka được tham gia chuyến du lịch hai tuần trên du thuyền hạng sang do trường Trung học Phổ thông Đào tạo Nâng cao tổ chức. Ai nấy đều mừng rỡ.

Tuy nhiên, ngôi trường đề cao thực lực không xây dựng kế hoạch cho một chuyến nghỉ dưỡng đơn thuần. Du thuyền cập bến đảo không người. 
Đây là địa điểm tổ chức bài kiểm tra đặc biệt đầu tiên của năm học này - sinh tồn trên hoang đảo. 
Học sinh có thể dùng điểm được cấp trong bài kiểm tra để mua vật dụng sinh hoạt, nhưng số điểm còn dư sau khi bài kiểm tra kết thúc lại được cộng vào điểm lớp ở học kì II.

Đặt mục tiêu rút ngắn cách biệt với các lớp hạng trên, lớp D hạng bét định lên kế hoạch sinh tồn mà không dùng điểm. Song bài kiểm tra đặc biệt nào có đơn giản thế...

Bộ đôi tác giả - họa sĩ minh họa trứ danh đã cho ra lò tập thứ ba trong bộ “Khải Huyền” mới của thể loại học đường!',
N'Mã hàng : 8935250710251Tên Nhà Cung Cấp	IPM
Tác giả	Kinugasa Syougo, Tomoseshunsaku
Người Dịch	Ngọc Trâm
NXB	Hà Nội
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	370
Kích Thước Bao Bì	18 x 13 x 1.7 cm
Số trang	356
Hình thức	Bìa Mềm','2022-07-22',1,N'chao_mung_den_lop_hoc_3_-_bia_1_1.jpg'),

(N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 4',N'Kinugasa Syougo',N'IPM',N'Hồng Đức',
N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực',1,120000,96000,N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 4

Đón chờ lớp D sau kì nghỉ hè dài là đại hội thể thao. 
Nhưng trước giờ các sự kiện của trường Trung học Phổ thông Đào tạo Nâng cao nào có đơn giản. 
Lần này học sinh các khối phải chia thành hai đội Đỏ và Trắng, quyết đấu phân thắng bại. Lớp D và A chung đội, thi đấu với liên minh hai lớp B và C. 
Học sinh được xếp hạng ở toàn bộ các môn thi và dựa vào thứ hạng để nhận điểm thưởng. Vốn luôn ngáng chân cả lớp, Sudo bỗng hóa át chủ bài của lớp D và có được sự công nhận của nhóm học sinh giỏi thể thao. 
Trong khi đó, thói cố chấp của Horikita khiến cô bất hòa với những người xung quanh. Kẻ phản bội giấu mặt trong lớp D và Ryuen - thủ lĩnh lớp C đâu dễ bỏ qua sơ hở đó…

Đại hội thể thao - nơi so tài của những kẻ có thực lực đỉnh cao - chính thức khai màn!

Bộ sách “Khải Huyền” mới của thể loại học đường đã bước sang tập thứ năm!',
N'Mã hàng : 8935250710251Tên Nhà Cung Cấp	IPM
Tác giả	Kinugasa Syougo, Tomoseshunsaku
Người Dịch	Ngọc Trâm
NXB	Hà Nội
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	370
Kích Thước Bao Bì	18 x 13 x 1.7 cm
Số trang	356
Hình thức	Bìa Mềm','2023-07-22',1,N'chao_mung_den_lop_hoc_4_-_bia_1_1.jpg'),
(N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 5',N'Kinugasa Syougo',N'IPM',N'Hồng Đức',
N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực',1,120000,96000,N'Chào Mừng Đến Lớp Học Đề Cao Thực Lực - Tập 5

Đón chờ lớp D sau kì nghỉ hè dài là đại hội thể thao. Nhưng trước giờ các sự kiện của trường Trung học Phổ thông Đào tạo Nâng cao nào có đơn giản. 
Lần này học sinh các khối phải chia thành hai đội Đỏ và Trắng, quyết đấu phân thắng bại. Lớp D và A chung đội, thi đấu với liên minh hai lớp B và C.
Học sinh được xếp hạng ở toàn bộ các môn thi và dựa vào thứ hạng để nhận điểm thưởng. Vốn luôn ngáng chân cả lớp, Sudo bỗng hóa át chủ bài của lớp D và có được sự công nhận của nhóm học sinh giỏi thể thao. 
Trong khi đó, thói cố chấp của Horikita khiến cô bất hòa với những người xung quanh. Kẻ phản bội giấu mặt trong lớp D và Ryuen - thủ lĩnh lớp C đâu dễ bỏ qua sơ hở đó…

Đại hội thể thao - nơi so tài của những kẻ có thực lực đỉnh cao - chính thức khai màn!

Bộ sách “Khải Huyền” mới của thể loại học đường đã bước sang tập thứ năm!',
N'Mã hàng : 8935250710251Tên Nhà Cung Cấp	IPM
Tác giả	Kinugasa Syougo, Tomoseshunsaku
Người Dịch	Ngọc Trâm
NXB	Hà Nội
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	370
Kích Thước Bao Bì	18 x 13 x 1.7 cm
Số trang	356
Hình thức	Bìa Mềm','2023-07-22',1,N'210723-3.jpg'),



(N'Bứt Phá 9+ Lớp 10 Môn Tiếng Anh',N'Trịnh Quang Minh',N'CÔNG TY CỔ PHẦN ĐẦU TƯ DỊCH VỤ GIÁO DỤC',N'Đại Học Quốc Gia Hà Nội',
N'sgk',2,200000,170000,N'Cùng với sự thay đổi trong chương trình giáo dục phổ thông và tỷ lệ xét tuyển hồ sơ học bạ THPT của các trường ĐH - CĐ, kết quả thành phần các bài kiểm tra trong quá trình học lớp 10 ảnh hưởng rất lớn tới hình thức xét tuyển này.

Cuốn sách bao gồm 3 chuyên đề lớn: Ngữ âm, Từ vựng và Ngữ pháp

Trong mỗi chuyên đề lớn sẽ được chia thành các chủ đề bao gồm:

- Các kiến thức trọng tâm.

- Các ví dụ và phân tích rõ ràng giúp học sinh hình dung được cách sử dụng và từ đó có thể vận dụng vào làm các dạng bài tập.

- Các dạng bài tập thường gặp: được thiết kế đa dạng với nhiều dạng bài phổ biến, bám sát kiến thức của từng chủ đề kiến thức.

- Cung cấp đầy đủ đáp án và hướng dẫn giải tham khảo đảm bảo bứt phá điểm 9, 10.

- Ngoài ra cuốn sách còn cung cấp hệ thống video hỗ trợ ôn tập, sử dụng các dạng bài trọng tâm.

Với sách Bứt phá 9+ lớp 10, các em sẽ được:

- Hệ thống kiến thức và dạng bài từ dễ đến khó

- Phương pháp giải nhanh, dễ hiểu

- Bài tập theo chuyên đề, full hướng dẫn giải chi tiết

- Tặng 30 video chữa dạng bài + Đề kiểm tra 15p, 45p, đề thi học kì',
N'Mã hàng	9786043792690
Tên Nhà Cung Cấp	CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ DỊCH VỤ GIÁO DỤC
Tác giả	Trịnh Quang Minh, Nguyễn Quyết, Diễn Lê, Bùi Thế Phương
NXB	Đại Học Quốc Gia Hà Nội
Năm XB	2022
Trọng lượng (gr)	710
Kích Thước Bao Bì	27 x 19 x 1.9 cm
Số trang	396
Hình thức	Bìa Mềm','2015-06-12',1,N'2023_03_29_09_54_15_1-390x510.jpg'),


(N'Bứt Phá 9+ Lớp 10 Môn Toán ',N'Trịnh Quang Minh',N'CÔNG TY CỔ PHẦN ĐẦU TƯ DỊCH VỤ GIÁO DỤC',N'Đại Học Quốc Gia Hà Nội',
N'sgk',2,200000,170000,N'Cùng với sự thay đổi trong chương trình giáo dục phổ thông và tỷ lệ xét tuyển hồ sơ học bạ THPT của các trường ĐH - CĐ, kết quả thành phần các bài kiểm tra trong quá trình học lớp 10 ảnh hưởng rất lớn tới hình thức xét tuyển này.

Cuốn sách bao gồm 3 chuyên đề lớn: Ngữ âm, Từ vựng và Ngữ pháp

Trong mỗi chuyên đề lớn sẽ được chia thành các chủ đề bao gồm:

- Các kiến thức trọng tâm.

- Các ví dụ và phân tích rõ ràng giúp học sinh hình dung được cách sử dụng và từ đó có thể vận dụng vào làm các dạng bài tập.

- Các dạng bài tập thường gặp: được thiết kế đa dạng với nhiều dạng bài phổ biến, bám sát kiến thức của từng chủ đề kiến thức.

- Cung cấp đầy đủ đáp án và hướng dẫn giải tham khảo đảm bảo bứt phá điểm 9, 10.

- Ngoài ra cuốn sách còn cung cấp hệ thống video hỗ trợ ôn tập, sử dụng các dạng bài trọng tâm.

Với sách Bứt phá 9+ lớp 10, các em sẽ được:

- Hệ thống kiến thức và dạng bài từ dễ đến khó

- Phương pháp giải nhanh, dễ hiểu

- Bài tập theo chuyên đề, full hướng dẫn giải chi tiết

- Tặng 30 video chữa dạng bài + Đề kiểm tra 15p, 45p, đề thi học kì',
N'Mã hàng	9786043792690
Tên Nhà Cung Cấp	CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ DỊCH VỤ GIÁO DỤC
Tác giả	Trịnh Quang Minh, Nguyễn Quyết, Diễn Lê, Bùi Thế Phương
NXB	Đại Học Quốc Gia Hà Nội
Năm XB	2022
Trọng lượng (gr)	710
Kích Thước Bao Bì	27 x 19 x 1.9 cm
Số trang	396
Hình thức	Bìa Mềm','2015-06-12',1,N'2023_03_29_09_53_56_1-390x510.jpg'),

(N'Bứt Phá 9+ Lớp 10 Môn Môn Hóa',N'Trịnh Quang Minh',N'CÔNG TY CỔ PHẦN ĐẦU TƯ DỊCH VỤ GIÁO DỤC',N'Đại Học Quốc Gia Hà Nội',
N'sgk',2,200000,170000,N'Cùng với sự thay đổi trong chương trình giáo dục phổ thông và tỷ lệ xét tuyển hồ sơ học bạ THPT của các trường ĐH - CĐ, kết quả thành phần các bài kiểm tra trong quá trình học lớp 10 ảnh hưởng rất lớn tới hình thức xét tuyển này.

Cuốn sách bao gồm 3 chuyên đề lớn: Ngữ âm, Từ vựng và Ngữ pháp

Trong mỗi chuyên đề lớn sẽ được chia thành các chủ đề bao gồm:

- Các kiến thức trọng tâm.

- Các ví dụ và phân tích rõ ràng giúp học sinh hình dung được cách sử dụng và từ đó có thể vận dụng vào làm các dạng bài tập.

- Các dạng bài tập thường gặp: được thiết kế đa dạng với nhiều dạng bài phổ biến, bám sát kiến thức của từng chủ đề kiến thức.

- Cung cấp đầy đủ đáp án và hướng dẫn giải tham khảo đảm bảo bứt phá điểm 9, 10.

- Ngoài ra cuốn sách còn cung cấp hệ thống video hỗ trợ ôn tập, sử dụng các dạng bài trọng tâm.

Với sách Bứt phá 9+ lớp 10, các em sẽ được:

- Hệ thống kiến thức và dạng bài từ dễ đến khó

- Phương pháp giải nhanh, dễ hiểu

- Bài tập theo chuyên đề, full hướng dẫn giải chi tiết

- Tặng 30 video chữa dạng bài + Đề kiểm tra 15p, 45p, đề thi học kì',
N'Mã hàng	9786043792690
Tên Nhà Cung Cấp	CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ DỊCH VỤ GIÁO DỤC
Tác giả	Trịnh Quang Minh, Nguyễn Quyết, Diễn Lê, Bùi Thế Phương
NXB	Đại Học Quốc Gia Hà Nội
Năm XB	2022
Trọng lượng (gr)	710
Kích Thước Bao Bì	27 x 19 x 1.9 cm
Số trang	396
Hình thức	Bìa Mềm','2015-06-12',1,N'2023_03_29_09_54_30_1-390x510.jpg'),

(N'Xuân Qua Hạ Đến',N'Kim Ae Ran',N'AZ Việt Nam',N'Thanh Niên',
N'',3,125000,106000,
N'Xuân Qua Hạ Đến

Xuân qua hạ đến - Bảy kiệt tác được tạo nên bởi Kim Ae-ran, người nghệ sĩ không ngừng đổi mới bản thân trong suốt 15 năm cuộc đời hoạt động nghệ thuật của mình.

Kim Ae-Ran là nhà văn trẻ nhất trong lịch sử văn học Hàn Quốc nhận Giải thưởng Văn học Hankook Ilbo lần thứ 38 khi mới 25 tuổi. 
Cô cũng là chủ nhân của nhiều giải thưởng văn học Hàn Quốc danh giá như giải Lee Hyo-seok, giải Shin Dong-yeop, giải Lee Sang… 

“Xuân qua hạ đến” bao gồm bảy truyện ngắn xuất sắc nhất đã được xuất bản của tác giả, 
trong đó tác phẩm “Tương lai của sự im lặng” đã giúp tác giả đoạt Giải thưởng Văn học Lee Sang lần thứ 37 và “Người muốn đi đâu” đoạt giải thưởng Nhà văn trẻ lần thứ 8. 

Cuốn sách mang đến những câu chuyện với những nhân vật khác nhau, ẩn sâu trong mỗi con người đều có những nỗi buồn thầm kín, 
những nỗi khắc khoải mà không phải ai cũng có thể hiểu và đồng cảm được. Mỗi người đều phải trải qua những mùa dài đằng đẵng của một đời người, 
để rồi phải tự gặm nhấm và chữa lành những vết thương của chính bản thân mình. Họ không biết mình nên đi đâu, về đâu sau khi đánh mất một thứ gì đó.

Nếu bạn cảm thấy rằng mình đang thiếu một cái gì đó trong cuộc sống, thiếu một cái gì đó bên trong tâm hồn mình thì hy vọng đến với cuốn sách này, 
bạn sẽ có thể tìm thấy được những linh hồn đồng điệu với câu chuyện cuộc đời mình.',
N'Mã hàng	8935325007125
Tên Nhà Cung Cấp	AZ Việt Nam
Tác giả	Kim Ae Ran
Người Dịch	Hương Anh
NXB	Thanh Niên
Năm XB	2022
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	300
Kích Thước Bao Bì	20.5 x 14.5 cm
Số trang	256
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
AZ Việt Nam
AZ Việt Nam - Truyện Ngắn - Tản Văn',
'2015-06-12',1,N'b_a-tr_c---xu_n-h_.jpg'),

(N'Người Tập Lớn',N'Chà',N'AZ Việt Nam',N'Thanh Niên',
N'',3,105000,92000,
N'“NGƯỜI TẬP LỚN” - NƠI SỰ TỬ TẾ LẤP LÁNH SAU LỚP ÁO BÌNH DỊ!

“Tui nghĩ cuộc đời này tất nhiên cần những điều lớn lao. Những ước mơ cả đời. Những kế hoạch 10 năm. 
Những mong muốn xa xôi. Cần chứ. Nhưng nó đều được xây từ những việc vụn vặt hàng ngày cả.”

Cuộc đời rộng lớn còn chúng ta thì nhỏ bé nhưng những gì to tát đều được xây nên từ mấy điều bé xíu.
Chúng ta mỗi ngày đều cố tìm kiếm niềm vui lớn lao ở tít xa xôi mà quên mất những điều gần gũi xung quanh. 
Những lắng lo, sợ hãi trước những xù xì, gai góc của hành trình “tập làm người lớn” khiến chúng ta đôi khi lỡ mất điều xinh đẹp ở ngay cạnh mình.

Cuốn sách “Người tập lớn” với những mẩu chuyện ngắn nhưng lại vẽ dài thêm sự dễ thương cho cuộc đời này. 
Chà - tác giả của “Người tập lớn” mang đến một góc nhìn mới về cuộc sống quanh ta. Chà kể về tụi nhân viên gen Z đôi lúc ngáo ngơ nhưng cực kỳ chân thành và nhiệt huyết; 
kể chuyện anh “síp bơ” cục mịch nhưng hiền lành, tốt tính,... 
Những con người trong thế giới của “Người tập lớn” có thể khác nhau về giới tính, độ tuổi, nghề nghiệp nhưng đều rất dễ mến và tử tế. 
Thế giới ấy chân thực, gần gũi tới mức bạn sẽ phải thốt lên rằng, hóa ra lâu nay mình mải vội vã mà không biết cuộc đời này đáng yêu như vậy.

Thế giới trong “Người tập lớn” như những tia nắng đầu xuân, mang sự ấm áp rót đầy tim bạn.
Nếu có đang vội vã dịch chuyển giữa xô bồ cuộc sống thì dừng lại một chút, để cảm nhận những điều tử tế mà “Người tập lớn” dành tặng bạn nha.',
N'Mã hàng	8935325007125
Tên Nhà Cung Cấp	AZ Việt Nam
Tác giả	Kim Ae Ran
Người Dịch	Hương Anh
NXB	Thanh Niên
Năm XB	2022
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	300
Kích Thước Bao Bì	20.5 x 14.5 cm
Số trang	256
Hình thức	Bìa Mềm
Sản phẩm hiển thị trong	
AZ Việt Nam
AZ Việt Nam - Truyện Ngắn - Tản Văn',
'2015-06-12',1,N'2023_03_06_16_37_20_1-390x510.png'),


(N'Làm Tới Đi Mặc Kệ Đời',N'Gary John Bishop',N'1980 Books',N'NXB Lao Động',
N'',4,99000,84000,
N'Làm tới đi mặc kệ đời” là một cuốn sách bổ trợ cho cuốn bestseller Unfu*k Yourself (tựa Việt: Nghĩ làm chi hãy sống đi) của Gary John Bishop. 
Nếu Unfu*k Yourself là cuốn sách truyền cảm hứng để bạn phá bỏ giới hạn của bản thân thì “Làm tới đi mặc kệ đời” đưa bạn đi từ cảm hứng tới hành động,
buộc bạn phải bắt tay làm điều gì đó ngay bây giờ để tạo ra cuộc sống mà bạn vẫn hằng mong muốn.

Nội dung cuốn sách hướng dẫn xoay quanh ba phần chính: Bản thân, Mọi người, Mục đích. 
Bằng cách đưa ra những kiến thức mới mẻ, những gợi ý chi tiết cùng câu hỏi cụ thể, cuốn sách “Làm tới đi mặc kệ đời” vừa để bạn có thời gian chiêm nghiệm, 
nhìn sâu và thấu hiểu bản thân, vừa mạnh mẽ thúc giục bạn viết câu trả lời xuống những trang giấy có sẵn trong sách. Qua quá trình tự vấn,
bạn có thể xác định điểm yếu của bản thân và từ đó khắc phục kịp thời bằng cách nỗ lực hành động.

Bạn sẽ nhận ra điều gì đang kìm hãm bạn lại, điều gì là quan trọng nhất với bản thân, điều gì sẽ tạo ra sự khác biệt lớn nhất nếu bạn thay đổi. 
Sau cùng, bạn sẽ nhận thấy chẳng phải ai hay một thế lực nào đang khiến bạn trì trệ, chính bạn và những rào cản tâm lý bạn tạo ra cho mình mới thực sự là nguyên do sâu xa.

Mọi thành công vang dội trong tương lai đều xuất phát từ những thay đổi nhỏ ngày hôm nay. Không ai khác, chỉ bạn mới thay đổi được vận mệnh của mình. Hãy bắt đầu hành động ngay thôi!',
N'Mã hàng	8936066688185
Tên Nhà Cung Cấp	1980 Books
Tác giả	Gary John Bishop
Người Dịch	Thúy Vy
NXB	NXB Lao Động
Năm XB	2020
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	200
Kích Thước Bao Bì	19 x 13 cm
Số trang	188
Hình thức	Bìa Mềm',
'2015-06-12',1,N'l_m-t_i-_i-m_c-k_-_i---b_a-1....jpg'),

(N'365 Ngày Liên Tục Tiến Về Phía Trước',N'Bizbooks',N'1980 Books',N'NXB Lao Động',
N'',4,175000,0,
N'Có người hỏi rằng: Ngày nào tôi cũng rất cố gắng, nhưng sao cảm giác lại chẳng khác những người lười biếng là bao?

Mỗi ngày chúng ta tiến bộ một chút chính là 1 + 0,01; còn mỗi ngày giật lùi một chút sẽ là 1 – 0,01. 
Nếu tính tích luỹ qua từng ngày thì cách biệt giữa “tiến bộ một chút” và “giật lùi một chút” sau một năm là hơn 1000 lần.
Vì vậy, đừng bao giờ nói những câu như không thể tiếp tục kiên trì được nữa hay là cảm thấy mọi thứ mình làm thật vô ích trong quá trình nỗ lực của bạn, bởi khi đó, hẳn là bạn chưa đi tới tận cùng mà thôi.

Chính những phẩm chất nội tại mới khiến một người thực sự không thể bị vượt qua. 
Bất cứ việc gì bạn làm trên đời này đều là để khiến bản thân trở nên tốt đẹp hơn và tất cả trải nghiệm đều thuộc về bản thân bạn, là một quá trình tích luỹ năng lượng.

Hãy nhớ rằng, danh tiếng của bạn được tạo nên bởi những người khác, nhưng tính cách của bạn được tạo nên bởi chính bạn!

Chẳng ai trở nên hoàn hảo và tốt đẹp mà chưa từng mắc lỗi lầm nào cả. 
Rất nhiều người do lo sợ thất bại mà không dám bắt tay hành động, và ngược lại, cũng có những người chẳng ngại thất bại vì họ nghĩ đó mới là điều giúp họ chạm tới thành công. 

Thế giới này sẽ tốt đẹp biết bao nếu mọi người sống và theo đuổi những giấc mơ, hoài bão của chính mình. 
Nếu lúc nào cũng để cho sự thất vọng và chán nản làm chi phối thì có thể bạn sẽ bị những khó khăn hạ gục. 
Bạn cần phải nhớ rằng, thất bại và khó khăn là thứ không ai có thể tránh được, quan trọng là thái độ khi bạn đối mặt với chúng.

Bất kì ai muốn bản thân trở nên tốt đẹp hơn về mọi mặt đều có thể đọc cuốn sách này bởi qua từng trang sách, 
tác giả Đỗ Hương chia sẻ rất kĩ càng những công thức để giúp bạn sống có mục đích hơn, loại bỏ những thói quen trì hoãn, biết suy ngẫm về bản thân và nâng tầm cuộc sống của bạn!',
N'Mã hàng	8935246936023
Tên Nhà Cung Cấp	MCBooks
Tác giả	Bizbooks
NXB	Hồng Đức
Năm XB	2022
Trọng lượng (gr)	260
Kích Thước Bao Bì	15 x 10 x 2.1 cm
Số trang	453
Hình thức	Bìa Mềm',
'2015-06-12',1,N'2023_02_13_16_44_26_1-390x510.jpg'),

(N'Shin Cậu Bé Bút Chì - Tập 1',N'Yoshito Usui, UY Studio',N'NXB Kim Đồng',N'NXB Kim Đồng',
N'Shin - Cậu Bé Bút Chì',5,20000,0,
N'Crayon Shin-chan (tên tiếng Việt: Shin-cậu bé bút chì) của tác giả Yoshito Usui là một trong những bộ manga nổi tiếng của Nhật Bản. 
Sau khi tập 50 được xuất bản tại Nhật vào năm 2010, tác giả tiếp tục đăng tải những mẩu truyện ngắn đầy thú vị xoay quanh nhân vật chính, 
cậu bé Shin tinh nghịch đáng yêu, lên nguyệt san Town Manga. Và cuốn Shin đặc biệt này tập hợp 21 mẩu truyện ngắn đã được đăng trong 2 năm đó.

Vậy Shin - Cậu bé bút chì đặc biệt này có gì khác so với bộ thường mà nhà xuất bản đang gửi tới bạn đọc?

Điều đầu tiên, chắc các bạn cũng biết, đó là bộ đặc biệt này sẽ được phát hành đồng thời với bên Nhật. 
Tức là không phải chờ lâu mới được cầm trên tay cuốn truyện hài hước mà các bạn đang mong chờ, các otaku (fan truyện tranh) bên Nhật được cầm trên tay cuốn đặc biệt lúc nào, 
các bạn cũng được sở hữu nó ngay lúc đó.

Điều thứ hai, mỗi chương trong tác phẩm này là một câu chuyện riêng biệt, với chiều dài từ 4 đến 5 trang. 
Vô cùng ngắn gọn mà hài hước, mỗi câu chuyện lại mang đến cho ta những tràng cười, cũng như những bài học thú vị khác nhau.

Tiếp tục đáp ứng nhu cầu của độc giả yêu thích bộ truyện, nhà xuất bản xin gửi tới các bạn tập đầu tiên trong bộ Shin-cậu bé bút chì đặc biệt này. 
Hi vọng rằng các bạn sẽ ủng hộ cuốn truyện nhiệt tình như với bộ Shin thường kì cũng như phần nào hiểu được ý nghĩa nhân văn và thông điệp mà nhà xuất bản gửi gắm tới các bạn độc giả thân yêu.',
N'Mã hàng	8935244824544
Tên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng
Tác giả	Yoshito Usui, UY Studio
NXB	NXB Kim Đồng
Năm XB	2019
Trọng lượng (gr)	120
Kích Thước Bao Bì	14.5 x 20.5 x 0.6
Số trang	108
Hình thức	Bìa Mềm',
'2015-06-12',1,N'8935244824544.jpg'),

(N'Shin Cậu Bé Bút Chì - Tập 2',N'Yoshito Usui, UY Studio',N'NXB Kim Đồng',N'NXB Kim Đồng',
N'Shin - Cậu Bé Bút Chì',5,20000,0,
N'Crayon Shin-chan (tên tiếng Việt: Shin-cậu bé bút chì) của tác giả Yoshito Usui là một trong những bộ manga nổi tiếng của Nhật Bản. 
Sau khi tập 50 được xuất bản tại Nhật vào năm 2010, tác giả tiếp tục đăng tải những mẩu truyện ngắn đầy thú vị xoay quanh nhân vật chính, 
cậu bé Shin tinh nghịch đáng yêu, lên nguyệt san Town Manga. Và cuốn Shin đặc biệt này tập hợp 21 mẩu truyện ngắn đã được đăng trong 2 năm đó.

Vậy Shin - Cậu bé bút chì đặc biệt này có gì khác so với bộ thường mà nhà xuất bản đang gửi tới bạn đọc?

Điều đầu tiên, chắc các bạn cũng biết, đó là bộ đặc biệt này sẽ được phát hành đồng thời với bên Nhật. 
Tức là không phải chờ lâu mới được cầm trên tay cuốn truyện hài hước mà các bạn đang mong chờ, các otaku (fan truyện tranh) bên Nhật được cầm trên tay cuốn đặc biệt lúc nào, 
các bạn cũng được sở hữu nó ngay lúc đó.

Điều thứ hai, mỗi chương trong tác phẩm này là một câu chuyện riêng biệt, với chiều dài từ 4 đến 5 trang. 
Vô cùng ngắn gọn mà hài hước, mỗi câu chuyện lại mang đến cho ta những tràng cười, cũng như những bài học thú vị khác nhau.

Tiếp tục đáp ứng nhu cầu của độc giả yêu thích bộ truyện, nhà xuất bản xin gửi tới các bạn tập đầu tiên trong bộ Shin-cậu bé bút chì đặc biệt này. 
Hi vọng rằng các bạn sẽ ủng hộ cuốn truyện nhiệt tình như với bộ Shin thường kì cũng như phần nào hiểu được ý nghĩa nhân văn và thông điệp mà nhà xuất bản gửi gắm tới các bạn độc giả thân yêu.',
N'Mã hàng	8935244824544
Tên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng
Tác giả	Yoshito Usui, UY Studio
NXB	NXB Kim Đồng
Năm XB	2019
Trọng lượng (gr)	120
Kích Thước Bao Bì	14.5 x 20.5 x 0.6
Số trang	108
Hình thức	Bìa Mềm',
'2015-06-12',1,N'8935244824551.jpg'),

(N'Shin Cậu Bé Bút Chì - Tập 3',N'Yoshito Usui, UY Studio',N'NXB Kim Đồng',N'NXB Kim Đồng',
N'Shin - Cậu Bé Bút Chì',5,20000,0,
N'Crayon Shin-chan (tên tiếng Việt: Shin-cậu bé bút chì) của tác giả Yoshito Usui là một trong những bộ manga nổi tiếng của Nhật Bản. 
Sau khi tập 50 được xuất bản tại Nhật vào năm 2010, tác giả tiếp tục đăng tải những mẩu truyện ngắn đầy thú vị xoay quanh nhân vật chính, 
cậu bé Shin tinh nghịch đáng yêu, lên nguyệt san Town Manga. Và cuốn Shin đặc biệt này tập hợp 21 mẩu truyện ngắn đã được đăng trong 2 năm đó.

Vậy Shin - Cậu bé bút chì đặc biệt này có gì khác so với bộ thường mà nhà xuất bản đang gửi tới bạn đọc?

Điều đầu tiên, chắc các bạn cũng biết, đó là bộ đặc biệt này sẽ được phát hành đồng thời với bên Nhật. 
Tức là không phải chờ lâu mới được cầm trên tay cuốn truyện hài hước mà các bạn đang mong chờ, các otaku (fan truyện tranh) bên Nhật được cầm trên tay cuốn đặc biệt lúc nào, 
các bạn cũng được sở hữu nó ngay lúc đó.

Điều thứ hai, mỗi chương trong tác phẩm này là một câu chuyện riêng biệt, với chiều dài từ 4 đến 5 trang. 
Vô cùng ngắn gọn mà hài hước, mỗi câu chuyện lại mang đến cho ta những tràng cười, cũng như những bài học thú vị khác nhau.

Tiếp tục đáp ứng nhu cầu của độc giả yêu thích bộ truyện, nhà xuất bản xin gửi tới các bạn tập đầu tiên trong bộ Shin-cậu bé bút chì đặc biệt này. 
Hi vọng rằng các bạn sẽ ủng hộ cuốn truyện nhiệt tình như với bộ Shin thường kì cũng như phần nào hiểu được ý nghĩa nhân văn và thông điệp mà nhà xuất bản gửi gắm tới các bạn độc giả thân yêu.',
N'Mã hàng	8935244824544
Tên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng
Tác giả	Yoshito Usui, UY Studio
NXB	NXB Kim Đồng
Năm XB	2019
Trọng lượng (gr)	120
Kích Thước Bao Bì	14.5 x 20.5 x 0.6
Số trang	108
Hình thức	Bìa Mềm',
'2015-06-12',1,N'shin-cau-be-but-chi_dac-biet_tap-3_tb-2023.jpg'),

(N'Thám Tử Lừng Danh Conan - Tập 99',N'Gosho Aoyama',N'NXB Kim Đồng',N'NXB Kim Đồng',
N'Thám Tử Lừng Danh Conan',5,22000,0,
N'Chào các bạn, tôi là Aoyama!

Hồi vẽ series “FBI vs Tổ chức Áo đen” trong tập này, tôi đã đội mưa tới “Công viên Umikaze” – hình mẫu của “Công viên Namikaze” – để lấy tư liệu đó!

Tựa người vào lan can, cầm ô như súng trường, hướng mũi ô về phía “đảo Saru” – hình mẫu của “đảo Umizaru” 
tôi phấn khích hét lên với biên tập viên: “Ngắm bắn từ đây mà trúng được! Akai siêu thật!!” rồi hứng trọn những ánh mắt hình viên đạn của các cần thủ xung quanh…

Đã mất công như vậy nên tôi đưa chi tiết cần thủ vào truyện luôn (Ha ha).',
N'Mã hàng	8935244885903
Tên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng
Tác giả	Gosho Aoyama
Người Dịch	Hương Giang
NXB	Kim Đồng
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	200
Kích Thước Bao Bì	17.6 x 11.3 x 1 cm
Số trang	184
Hình thức	Bìa Mềm',
'2015-06-12',1,N'tham-tu-lung-danh-conan-_-tap-99_2.jpg'),

(N'Thám Tử Lừng Danh Conan - Tập 100',N'Gosho Aoyama',N'NXB Kim Đồng',N'NXB Kim Đồng',
N'Thám Tử Lừng Danh Conan',5,22000,0,
N'Chào các bạn, tôi là Aoyama!

Hồi vẽ series “FBI vs Tổ chức Áo đen” trong tập này, tôi đã đội mưa tới “Công viên Umikaze” – hình mẫu của “Công viên Namikaze” – để lấy tư liệu đó!

Tựa người vào lan can, cầm ô như súng trường, hướng mũi ô về phía “đảo Saru” – hình mẫu của “đảo Umizaru” 
tôi phấn khích hét lên với biên tập viên: “Ngắm bắn từ đây mà trúng được! Akai siêu thật!!” rồi hứng trọn những ánh mắt hình viên đạn của các cần thủ xung quanh…

Đã mất công như vậy nên tôi đưa chi tiết cần thủ vào truyện luôn (Ha ha).',
N'Mã hàng	8935244885903
Tên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng
Tác giả	Gosho Aoyama
Người Dịch	Hương Giang
NXB	Kim Đồng
Năm XB	2023
Ngôn Ngữ	Tiếng Việt
Trọng lượng (gr)	200
Kích Thước Bao Bì	17.6 x 11.3 x 1 cm
Số trang	184
Hình thức	Bìa Mềm',
'2015-06-12',1,N'tham-tu-lung-danh-conan---tap-100---ban-thuong_3.jpg'),


(N'Kinh Tế Nhật Bản: Giai Đoạn Phát Triển Thần Kỳ ',N'Trần Văn Thọ',N'Phanbook',N'NXB Đà Nẵng',
N'',6,220000,190000,
N'Trong lịch sử Nhật Bản, giai đoạn 1955-1973 rất đặc biệt. Giai đoạn đó làm nên một thời đại, thời đại phát triển thần kỳ. 
Trung bình mỗi năm tăng trưởng 10%, kéo dài gần 20 năm, rất hiệu suất và đạt toàn dụng lao động. 
Giai đoạn này đã đưa Nhật Bản vươn lên thành một cường quốc công nghiệp, theo kịp các nước tiên tiến phương Tây, thực hiện giấc mơ và mục tiêu của lãnh đạo thời Minh Trị Duy tân.

 Xoay quanh hai từ khóa nhà nước kiến tạo phát triển và năng lực xã hội, cuốn sách này phân tích những yếu tố làm nên giai đoạn phát triển thần kỳ ấy.
 Ngoài khung phân tích kinh tế học phát triển để khảo sát chiến lược, chính sách về đầu tư, hội nhập, giáo dục đào tạo, du nhập và sử dụng công nghệ,
 cuốn sách còn đặt vấn đề từ một cái nhìn rộng hơn, khảo sát tư tưởng và hành động của các chủ thể như lãnh đạo chính trị, quan chức, 
 lãnh đạo doanh nghiệp, Sách kể nhiều mẩu chuyện kèm theo hình ảnh của những chính trị gia, quan chức, học giả, nhà doanh nghiệp tiêu biểu thời hậu chiến Nhật Bản,
 những người đã làm nên giai đoạn thần kỳ này. 
 Cuốn sách có thêm hai phụ chương để giúp các độc giả muốn biết về kinh tế Nhật sau giai đoạn phát triển thần kỳ (1974-2020).',
N'Mã hàng	8936144201510
Tên Nhà Cung Cấp	Phanbook
Tác giả	Trần Văn Thọ
NXB	NXB Đà Nẵng
Năm XB	2022
Trọng lượng (gr)	300
Kích Thước Bao Bì	23.5 x 16 cm
Số trang	292
Hình thức	Bìa Mềm',
'2015-06-12',1,N'8936144201510.jpg'),

(N'Hệ Thống Ngân Hàng Hoa Kỳ',N'Center For Financial Training',N'Cengage',N'NXB Hồng Đức',
N'',6,400000,330000,
N'Mặc dù sự cạnh tranh ảnh hưởng của các trung tâm tài chính trên phạm vi toàn thế giới ngày càng trở nên khốc liệt, tuy nhiên, với vị trí là nền kinh tế số một thế giới, 
hoạt động trong lĩnh vực dịch vụ tài chính của Hoa Kỳ vẫn thu hút được sự chú ý của giới học thuật cũng như quản trị tại các tổ chức cung cấp dịch vụ tài chính và cơ quan quản lý nhà nước đối với dịch vụ tài chính trên phạm vi toàn cầu.

Cuốn sách "Hệ thống ngân hàng Hoa Kỳ" do Trung tâm Đào tạo Tài chính phát hành nhằm cung cấp những nguyên tắc và thông lệ trong hoạt động ngân hàng và tín dụng tại Hoa Kỳ,
thông qua đó giúp cho người đọc hiểu và nắm được những vấn đề cơ bản trong hoạt động ngân hàng ở quốc gia đang dẫn đầu thế giới trong lĩnh vực tài chính nói chung và ngân hàng nói riêng.

Ngoài ra, cuốn sách cũng đề cập tới những vấn đề được quan tâm trong quá trình vận hành hoạt động ngân hàng như an toàn, gian lận và đạo đức;
marketing ngân hàng và các cơ hội nghề nghiệp trong lĩnh vực ngân hàng tại Hoa Kỳ. Đặc biệt, 
sách có đính kèm tài khoản học trực tuyến Mindtap- giải pháp học Blended Learning nhằm tối ưu hóa việc giảng dạy cho các giảng viên, 
cung cấp công cụ học tập trực tuyến hiệu quả cho sinh viên, và tạo sự gắn kết hơn giữa giảng viên với sinh viên',
N'Mã hàng	9786048975661
Tên Nhà Cung Cấp	Cengage
Tác giả	Center For Financial Training
Người Dịch	PGS TS Trịnh Quốc Trung, ThS Nguyễn Thị Diễm Hiền
NXB	NXB Hồng Đức
Năm XB	2019
Trọng lượng (gr)	800
Hình thức	Bìa Mềm',
'2015-06-12',1,N'b2_3.jpg')
go
select *  from Products
go
CREATE TABLE [Role](
Id int IDENTITY(1,1) NOT NULL primary key,
Name nvarchar(50) NULL,
)
GO
CREATE TABLE Account (
Id int IDENTITY(1,1) NOT NULL primary key,
Username nvarchar(45) not Null,
Email nvarchar(50) not Null,
[Password] nvarchar(100) not Null,
Phone nvarchar(50) not Null,
Fullname nvarchar(100) not Null,
Gender bit not Null,
[Address] nvarchar(100) not Null,
Status bit DEFAULT 'true',
)
GO
CREATE TABLE Follow
(	
	Id int PRIMARY KEY IDENTITY,
    ProID int FOREIGN KEY REFERENCES Products(Id),
	AccId int foreign key references Account(Id)
)
go
select * from Follow 
go
CREATE TABLE Account_roles(
Id int IDENTITY(1,1) NOT NULL primary key,
UserId int NULL foreign key references Account(Id),
RoleId int NULL foreign key references [Role](Id),
)
GO
CREATE TABLE Orders
(
    Id int PRIMARY KEY IDENTITY,
	FullName nvarchar(100) NULL,
	AcId int , 
	FOREIGN KEY (AcId) REFERENCES Account(Id),
	OrderDate datetime DEFAULT GETDATE(),
	[Address] nvarchar(100) NULL,
	Phone nvarchar(50) not null,
	Email nvarchar(50) not Null,
	TotalPrice Float,
	Note nvarchar(500),
	Status tinyint DEFAULT '0'
)
-- go
-- 	ALTER TABLE Orders ADD Status tinyint DEFAULT '0';
go
CREATE TABLE OrderDetail
(
    OrderDetailId int PRIMARY KEY IDENTITY,
	ProdId int Null foreign key references Products(Id),
	OrderId int NULL foreign key references Orders(Id),
	Quantity int,
	Price Float,
	Status tinyint DEFAULT '0'
)
go
select * from Orders
select * from OrderDetail
GO
INSERT [Role] VALUES (N'ROLE_ADMIN')
GO
INSERT [Role] VALUES (N'ROLE_USER')
GO
INSERT Account(UserName ,Email ,[Password],Phone ,Fullname ,Gender, [Address]  ) VALUES (N'admin',N'admin@gmail.com',  N'$2a$12$bNjM5EhLIXq.ocFErtoZk.XszY60vrEa0Nf3B.pnzqQJaOraZVtnq',N'123456789','Nguyen',1,'Ha Noi - Viet Nam')
GO
INSERT Account(UserName ,Email ,[Password] ,Phone,Fullname ,Gender,[Address] ) VALUES (N'user',N'user@gmail.com', N'$2a$12$bNjM5EhLIXq.ocFErtoZk.XszY60vrEa0Nf3B.pnzqQJaOraZVtnq',N'1234567','Hoa',1,'TP HCM - Viet Nam')
go

GO
INSERT Account_roles (UserId, RoleId) VALUES (1, 1)
GO
INSERT Account_roles (UserId, RoleId) VALUES (1, 2)
GO
INSERT Account_roles (UserId, RoleId) VALUES (2, 2)

select * from Account
select * from Account_roles
GO
