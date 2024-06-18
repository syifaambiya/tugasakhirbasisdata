CREATE VIEW vw_Data_Perusahaan AS
SELECT
    p.Kode_Pegawai,
    p.Nama_Pegawai,
    p.Alamat_Pegawai,
    d.Kode_Divisi,
    d.Nama_Divisi,
    pr.Kode_Proyek,
    pr.Nama_Proyek,
    pr.Anggaran_Proyek
FROM Pegawai p
JOIN Bekerja_di b ON p.Kode_Pegawai = b.Kode_Pegawai
JOIN Divisi d ON b.Kode_Divisi = d.Kode_Divisi
JOIN Proyek pr ON d.Kode_Divisi = pr.Kode_Divisi;