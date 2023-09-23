-- Creat Database 
CREATE DATABASE binus_university;
USE binus_university;

-- Tabel Mahasiswa
CREATE TABLE mahasiswa (
	id_mahasiswa BIGINT PRIMARY KEY NOT NULL,
	nama_mahasiswa VARCHAR(50) NOT NULL,
	alamat_mahasiswa VARCHAR(100) NOT NULL,
	kota VARCHAR(50) NOT NULL,
	tgl_lahir DATE NOT NULL,
	usia INT NOT NULL,
	no_kontak VARCHAR(15) NOT NULL,
	email VARCHAR(50) NOT NULL,
	jurusan VARCHAR(25) NOT NULL,
	nama_wali VARCHAR(50) NOT NULL,
	tgl_terdaftar DATE NOT NULL,
	prestasi_1 VARCHAR(255) NULL,
	prestasi_2 VARCHAR(255) NULL
);

-- Tabel Mata Kuliah
CREATE TABLE mata_kuliah(
	id_mata_kuliah VARCHAR(25) PRIMARY KEY NOT NULL,
	nama_mata_kuliah VARCHAR(50) NOT NULL,
	jurusan VARCHAR(25) NOT NULL,
	kelas CHAR(4) NOT NULL,
	tahun_ajaran YEAR NOT NULL,
	semester INT NOT NULL,
	jenis CHAR(3) NOT NULL,
	kode_dosen VARCHAR(10) NOT NULL,
	nama_dosen VARCHAR(50) NOT NULL,
	kuota_maks INT NOT NULL,
	kuota_tersisa INT NOT NULL,
	model_perkuliahan VARCHAR(6) NOT NULL,
	status_kuota VARCHAR(10) NOT NULL,
	durasi INT NOT NULL,
	maks_sks INT NOT NULL
);

-- Tabel Transaksi
CREATE TABLE transaksi(
	id_transaksi BIGINT PRIMARY KEY NOT NULL,
	id_mahasiswa BIGINT NOT NULL,
	id_mata_kuliah VARCHAR(25) NOT NULL,
	jurusan VARCHAR(25) NOT NULL,
	timestamp_transaksi TIMESTAMP NOT NULL,
	jumlah_sks INT NOT NULL,
	total_biaya INT NOT NULL,
	virtual_account BIGINT NOT NULL,
	status_pembayaran VARCHAR(20) NOT NULL,
	jatuh_tempo DATE NOT NULL,
	potongan_biaya VARCHAR(5) NULL
);

-- Insert 3 Data Mahasiswa
INSERT INTO mahasiswa VALUES
	(2501123456,'Asep Maulana', 'Jl. Belitung no. 53', 'Bandung', '2003-03-15', 19, '08382256373', 'asep@binus.ac.id', 'IT', 'Josep Maulana', '2021-09-13', 'juara 1 lomba hackathon', NULL),
 	(2301862696, 'Marya Aulia', 'Jl. Sukaluyu no. 15', 'Bandung', '2001-04-30', 21, '081384037069', 'marya@binus.ac.id', 'DKV', 'Vina Muliani', '2019-09-10', NULL, NULL),
	(2401985645, 'Deri Sanusi', 'Jl. Kalidam no. 25', 'Cimahi', '2002-06-05', 20, '08572746511', 'deri@binus.ac.id', 'DI', 'Sito Sanusi', '2020-09-07', 'juara 1 lomba desain ruang', 'juara 2 3D design')
;
-- Insert 8 Data Mahasiswa (Tidak termasuk data di tabel)
INSERT INTO mahasiswa VALUES
	(2540125806, 'Valen Valerie', 'Jl. Poris no. 30', 'Tangerang', '2003-08-23', 19, '086382371124', 'valen@binus.ac.id', 'IBM', 'Marcel Surya', '2021-08-28', 'juara 1 lomba bisnis', NULL),
	(2309266452, 'Cindy Wijaya', 'Jl. Cendikia no. 48', 'Purwakarta', '2001-03-19', 22, '086382371124', 'cindy@binus.ac.id', 'DI', 'Johanes Wijaya', '2019-07-16', 'juara 2 lomba fotografi', NULL),   
	(2301284563, 'Anindya Dahayu', 'Jl. Maju no. 39', 'Jakarta', '2001-03-19', 22, '086382371124', 'anindya@binus.ac.id', 'IT', 'Andi Sedayu', '2019-10-01', 'juara 1 Hackathon', 'juara 2 lomba cyber security'),
	(2502552881, 'Gladys Anindya', 'Jl. Searah no. 67', 'Denpasar', '1997-07-12', 25, '081251395122', 'dladys@binus.ac.id', 'DI', 'Sebastian Diah', '2021-08-01', 'juara 2 lomba desing ruangan', NULL),   
	(2601826466, 'Niken Andhini', 'Jl. Sejuta no. 19', 'Bandung', '2002-02-01', 20, '082145352133', 'niken@binus.ac.id', 'IBM', 'Supri Adin', '2022-06-30', NULL, NULL),
	(2401244492, 'Budi Setiawan', 'Jl. Awan no. 36', 'Jakarta', '2000-04-05', 23, '081255235222', 'budi@binus.ac.id', 'IT', 'Doni Setiawan', '2020-11-21', 'juara 3 game development', NULL),
	(2409982773, 'Eka Puspita', 'Jl. Kebersamaan no. 26', 'Semarang', '1999-12-5', 23, '012523234294', 'eka@binus.ac.id', 'DKV', 'Timoty Puspita', '2020-12-18', NULL, NULL),
	(2602001992, 'Retna Wulandari', 'Jl. Rajawali no. 6', 'Yogyakarta', '1998-02-01', 25, '086478124619', 'retna@binus.ac.id', 'IBM', 'Wulawarman', '2022-04-22', 'juara 1 lomba debat', 'juara 2 konsep startup')
;   

-- Insert 3 Data Mata Kuliah
INSERT INTO mata_kuliah VALUES
	('COMP45434', 'Algorithm and Programming', 'IT', 'LA65', '2022', 1, 'LEC', 'D9000', 'Maria Auleria', 50, 32, 'Online', 'tersedia', 120, 2),
	('COMP684701', 'Database Technology', 'IT', 'BA75', '2022', 3, 'LAB', 'D6764', 'Vito Hafizh', 25, 25, 'Onsite', 'penuh', 90, 2),
	('ARTS602203', 'Photography', 'DKV', 'BG90', '2022', 5, 'LAB', 'D1472', 'Krisna Ahmad', 25, 15, 'Onsite', 'tersedia', 90, 1),
	('DSGN66960', '3-Dimension Layout', 'DI', 'LF45', '2022', 5, 'LEC', 'D6076', 'Anisa Putri', 45, 27, 'Online', 'tersedia', 120, 2),
	('COMP684702', 'Database Technology', 'IT', 'BB75', '2022', 3, 'LAB', 'D6274', 'Husni Iskandar Pohan', 26, 20, 'Onsite', 'tersedia', 90, 1)
;

-- Insert 8 Data Mata Kuliah (Tidak termasuk data di tabel)
INSERT INTO mata_kuliah VALUES
	('COMP684601', 'Program Design Methods', 'IT', 'LB75', '2022', 3, 'LEC', 'D6408', 'Rissa Rahmania', 53, 40, 'Onsite', 'tersedia', 90, 2),
	('DSGN32874', 'Architectural Design', 'DI', 'BC46', '2022', 3, 'LAB', 'D6155', 'Dany Eka', 20, 15, 'Onsite', 'tersedia', 90, 1),
	('MGMT601205', 'Operations Management', 'IBM', 'LA51', '2022', 1, 'LEC', 'D6635', 'Dony Saputra', 40, 40, 'Online', 'penuh', 120, 4),
	('MGMT629700', 'Human Resources Management', 'IBM', 'LA62', '2022', 3, 'LEC', 'D6125', 'Muhammad Calvin', 35, 19, 'Onsite', 'tersedia', 90, 2),
	('ARTS665600', 'Design Methods', 'DKV', 'LD10', '2022', 3, 'LEC', 'D5881', 'Dani Suandi', 35, 35, 'Onsite', 'penuh', 90, 2),
	('ARTS646021', 'Material and Colors in Visual Design', 'DKV', 'BE32', '2022', 1, 'LAB', 'D7681', 'Muhammad Widianto', 50, 36, 'Online', 'tersedia', 120, 4),
	('DSGN673400', 'Illustration Design', 'DI', 'BA18', '2022', 3, 'LAB', 'D6149', 'Alexander Tanuar', 40, 28, 'Onsite', 'tersedia', 90, 1),
	('COMP646803', 'Artificial Intelligence', 'IT', 'LB59', '2022', 5, 'LEC', 'D2844', 'Yasi Dani', 50, 34, 'Onsite', 'tersedia', 120, 4)
;

-- Insert 3 Data Transaksi
INSERT INTO transaksi VALUES
	(15060001, 2401985645, 'DSGN66960', 'DI', '2022-12-24 07:00:00', 2, 500000, 7623523425, 'belum lunas', '2023-01-15', NULL),
	(17060002, 2501123456, 'COMP684702', 'IT', '2022-12-27 22:00:00', 1, 250000, 7623878979, 'lunas', '2023-01-16', '10%'),
	(17060003, 2301862696, 'ARTS602203', 'DKV', '2022-12-30 01:00:00', 1, 250000, 7623974678, 'lunas', '2023-01-15', NULL)
;

-- Insert 8 Data Transaksi (Tidak termasuk data di tabel)
INSERT INTO transaksi VALUES
	(17060004, 2540125806, 'MGMT629700', 'IBM', '2022-12-26 09:00:00', 2, 500000, 7623941852, 'lunas', '2023-01-20', '25%'),
	(15060005, 2309266452, 'DSGN32874', 'DI', '2022-12-15 23:00:00', 1, 250000, 7623152796, 'belum lunas', '2023-01-17', NULL),
	(17060006, 2301284563, 'COMP684601', 'IT', '2022-11-25 03:00:00', 2, 500000, 7623265891, 'lunas', '2023-02-01', NULL),
	(15060007, 2601826466, 'MGMT629700', 'IBM', '2022-11-24 08:00:00', 2, 500000, 7623871295, 'belum lunas', '2023-01-25', NULL),
	(17060008, 2502552881, 'DSGN673400', 'DI', '2022-12-14 18:00:00', 1, 250000, 7623915726, 'lunas', '2023-01-16', '30%'),
	(15060009, 2401244492, 'COMP646803', 'IT', '2022-12-29 10:00:00', 4, 1000000, 7623541298, 'belum lunas', '2023-01-10', NULL),
	(17060010, 2602001992, 'MGMT629700', 'IBM', '2022-12-30 15:00:00', 2, 500000, 7623698521, 'lunas', '2023-01-16', '10%'),
	(15060011, 2409982773, 'ARTS646021', 'DKV', '2022-12-14 20:00:00', 4, 1000000, 7623182753, 'lunas', '2023-01-16', '15%')
;

-- Where And Or
SELECT * FROM binus_university.mahasiswa
	WHERE (usia > 19) AND (kota = 'Jakarta' OR kota = 'Bandung');

SELECT id_transaksi, total_biaya, virtual_account, status_pembayaran FROM binus_university.transaksi
	WHERE (jumlah_sks > 1) AND (jurusan = 'IT' OR jurusan = 'IBM');

-- Where Not Like
SELECT * FROM binus_university.mahasiswa
	WHERE NOT (nama_mahasiswa LIKE 'a%');

SELECT id_mata_kuliah, jurusan, nama_dosen, kuota_tersisa FROM binus_university.mata_kuliah
	WHERE !(id_mata_kuliah LIKE 'COMP%');

-- Where Like And In
SELECT * FROM binus_university.mahasiswa
	WHERE (nama_mahasiswa LIKE '%a%') AND (jurusan IN ('IT', 'IBM'));

SELECT id_mata_kuliah, jenis, maks_sks, kuota_tersisa FROM binus_university.mata_kuliah
	WHERE (jenis LIKE '%b') AND (maks_sks IN (2, 4));

-- Where Not And In
SELECT * FROM binus_university.mata_kuliah
	WHERE NOT (jenis = 'LAB') OR (jurusan IN ('IT', 'DI', 'IBM'));

SELECT id_mahasiswa, id_mata_kuliah, jurusan, total_biaya, status_pembayaran FROM binus_university.transaksi
	WHERE !(total_biaya = 500000) OR (potongan_biaya IN ('10%', '15%'));

-- Tabel Pegawai
CREATE TABLE pegawai (
	id_pegawai VARCHAR(10) PRIMARY KEY NOT NULL,
	nama_pegawai VARCHAR (100) NOT NULL,
	pemberian_pelaporan_kepada VARCHAR(10) NULL,
	jabatan VARCHAR(15) NOT NULL
);

-- Insert 5 Data Pegawai
INSERT INTO pegawai VALUES
	('P0022', 'Heri Jumawan', NULL, 'Manager'),
    ('P2412', 'Agus Rizaldi', 'P0022', 'Staff'),
    ('P0195', 'Dewi Anggita', NULL, 'Manager'),
    ('P4612', 'Lina Rosita', 'P0022', 'Staff'),
    ('P5903', 'Fahmi Angelica', 'P0195', 'Staff')
;

# Inner Join
SELECT mahasiswa.id_mahasiswa,  mahasiswa.nama_mahasiswa,  mahasiswa.jurusan, mahasiswa.nama_wali, transaksi.status_pembayaran, transaksi.jatuh_tempo
	FROM mahasiswa
	JOIN transaksi
		ON mahasiswa.id_mahasiswa = transaksi.id_mahasiswa;

# Left Join
SELECT mata_kuliah.id_mata_kuliah,  mata_kuliah.nama_mata_kuliah,  mata_kuliah.kelas, mata_kuliah.nama_dosen, mata_kuliah.maks_sks, transaksi.id_mahasiswa, transaksi.status_pembayaran
	FROM mata_kuliah
	LEFT JOIN transaksi
		ON mata_kuliah.id_mata_kuliah = transaksi.id_mata_kuliah;

# Right Join
SELECT mahasiswa.id_mahasiswa,  mahasiswa.nama_mahasiswa,  transaksi.id_mata_kuliah, transaksi.jurusan, transaksi.jumlah_sks, transaksi.potongan_biaya
	FROM transaksi
	RIGHT JOIN mahasiswa
		ON transaksi.id_mahasiswa = mahasiswa.id_mahasiswa;

# Full Outer
SELECT mahasiswa.id_mahasiswa,  mahasiswa.nama_mahasiswa,  mahasiswa.jurusan, mahasiswa.nama_wali, mahasiswa.alamat_mahasiswa, transaksi.status_pembayaran, transaksi.jatuh_tempo
	FROM mahasiswa
	LEFT JOIN transaksi
		ON Mahasiswa.id_mahasiswa = transaksi.id_mahasiswa
UNION
SELECT mahasiswa.id_mahasiswa,  mahasiswa.nama_mahasiswa,  mahasiswa.jurusan, mahasiswa.nama_wali, mahasiswa.alamat_mahasiswa, transaksi.status_pembayaran, transaksi.jatuh_tempo
	FROM transaksi
	RIGHT JOIN mahasiswa
		ON  transaksi.id_mahasiswa = Mahasiswa.id_mahasiswa ;

# Self Join 
SELECT tabel1.id_pegawai, tabel1.nama_pegawai, tabel2.jabatan, tabel2.pemberian_pelaporan_kepada
	FROM pegawai AS tabel1
	JOIN pegawai AS tabel2
		ON tabel1.id_pegawai = tabel2. id_pegawai
	WHERE tabel1.nama_pegawai = 'Fahmi Angelica';

# Multiple Join
SELECT mahasiswa.id_mahasiswa, mahasiswa.nama_mahasiswa, mahasiswa.jurusan, transaksi.id_mata_kuliah, mata_kuliah.kelas, mata_kuliah.nama_dosen, transaksi.jumlah_sks, transaksi.status_pembayaran, transaksi.jatuh_tempo
	FROM transaksi
	JOIN mahasiswa
		ON transaksi.id_mahasiswa = mahasiswa.id_mahasiswa
	JOIN mata_kuliah
		ON transaksi.id_mata_kuliah = mata_kuliah.id_mata_kuliah
	ORDER BY mahasiswa.id_mahasiswa ASC;
	
# Mengubah nama 1 tabel. Apabila telah mengubah ke nama baru, maka silahkan mengubah kembali ke nama tabel semula. 
ALTER TABLE mahasiswa RENAME pelajar;
ALTER TABLE pelajar RENAME mahasiswa;

ALTER TABLE pegawai RENAME pekerja;
ALTER TABLE pekerja RENAME pegawai;

# Mengubah tipe data pada 1 kolom dari suatu tabel
ALTER TABLE mahasiswa MODIFY jurusan VARCHAR(50);
ALTER TABLE mata_kuliah MODIFY tahun_ajaran INT;

# Mengubah nama dari 1 kolom dari suatu tabel
ALTER TABLE transaksi CHANGE virtual_account no_va BIGINT;
ALTER TABLE mata_kuliah CHANGE nama_mata_kuliah nama_matkul VARCHAR(50);

# Mengubah posisi 1 kolom dari suatu tabel
ALTER TABLE mata_kuliah MODIFY kuota_tersisa INT AFTER status_kuota;
ALTER TABLE mahasiswa MODIFY jurusan varchar(25) AFTER nama_mahasiswa;

# Menambahkan 1 kolom baru pada suatu tabel
ALTER TABLE pegawai ADD alamat VARCHAR(100);
ALTER TABLE mahasiswa ADD no_wali VARCHAR(15);

# Menghapus 1 kolom baru tersebut dari suatu tabel
ALTER TABLE pegawai DROP COLUMN alamat;
ALTER TABLE mahasiswa DROP COLUMN no_wali;

-- Foreign Key
ALTER TABLE transaksi
ADD CONSTRAINT fk_id_mahasiswa
	FOREIGN KEY (id_mahasiswa)
	REFERENCES mahasiswa(id_mahasiswa);

ALTER TABLE transaksi
ADD CONSTRAINT fk_id_mata_kuliah
	FOREIGN KEY (id_mata_kuliah)
	REFERENCES mata_kuliah(id_mata_kuliah);

-- Transaction 
START TRANSACTION;
	INSERT INTO transaksi VALUES
		(17060012, 2401985645, 'DSGN673400', 'DI', '2022-12-17 16:00:00', 1, 250000, 7623523425, 'belum lunas', '2023-01-26', '10%');
	UPDATE mata_kuliah SET kuota_tersisa = kuota_tersisa - 1 WHERE id_mata_kuliah = (SELECT id_mata_kuliah FROM transaksi WHERE id_transaksi = 17060012);
COMMIT;

START TRANSACTION;	
	INSERT INTO transaksi VALUES
		(17060013, 2301284563, 'COMP45434', 'IT', '2022-12-16 16:00:00',  2, 500000, 7623265891, 'belum lunas', '2023-02-15', NULL);
	UPDATE mata_kuliah SET kuota_tersisa = kuota_tersisa - 1 WHERE id_mata_kuliah = (SELECT id_mata_kuliah FROM transaksi WHERE id_transaksi = 17060013);
COMMIT;

-- INDEX
Alter Table transaksi ADD Index index_transaksi (id_transaksi, id_mahasiswa, id_mata_kuliah);
SHOW Create Table transaksi; 

Alter Table mahasiswa ADD Index index_mhs (id_mahasiswa, nama_mahasiswa, jurusan);
SHOW Create Table mahasiswa;