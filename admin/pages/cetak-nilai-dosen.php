<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <link rel="shortcut icon" href="../../images/logopolinema.png"/>
   <link rel="stylesheet" href="../../css/bootstrap.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cetak</title>
</head>

<style type="text/css" media="print">

    .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 5px;
    line-height: 0.9;

}
</style>
<style type="text/css" media="screen">
    .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 5px;
    line-height: 0.9;


}
h4,p {
    margin: 0 0 0px;
}
</style>

<body onload="window.print();">
     <table style="width: 100%">
        <tr>
           <td width="10%">
          <img src="../../images/logopolinema.png" alt="" style="width:100px;height:70px;float: right;">
          </td>
          <td width="90%"> 
            <center>
            <h3><b>POLTEKNIK NEGERI MALANG</b></h3>
          <h4>Polinema adalah institusi pendidikan tinggi vokasi yang terletak di kota Malang.</h4>
          <p>Jl. Soekarno Hatta No.9, Jatimulyo, Kec. Lowokwaru Kota Malang, Jawa Timur 65141 Telp. (0341) 404424 - Fax. (0341)404420</p>
          <p><span>Website : https://www.polinema.ac.id/</span>  <span>E-mail : upt.humas@polinema.ac.id</span> </p>
        </center>
        </td>
         
        </tr>
    </table>

  <div style="width:100%;float: left;">
 <div style="border-bottom: 2px solid #555;padding:10px 0;margin-bottom: 20px;"></div>
  <center><b>FORM NILAI PEMBIMBING</b></center>
  <center><b>PRAKTEK KERJA LAPANGAN (PKL)</b></center>
 <br>
  </div>
  <?php
                       include '../../koneksi/koneksi.php'; 
                 
                    $q=mysqli_fetch_array(mysqli_query($koneksi,"SELECT tb_mhs.*,tb_nilai_dosen.*,tb_instansi.nm_instansi,tb_dosen.nm_dosen,tb_penempatan.posisi FROM tb_nilai_dosen,tb_mhs,tb_instansi,tb_dosen,tb_penempatan where tb_instansi.kd_instansi=tb_penempatan.kd_instansi and tb_mhs.nobp=tb_penempatan.nobp and tb_dosen.nidn=tb_mhs.nidn_pembimbing and tb_mhs.nobp=tb_nilai_dosen.nobp and tb_mhs.nobp='$_GET[nobp]'"));

                    $total=$q['penguasaan_bahasa']+$q['kemampuan_pengembangan']+$q['penguasaan_kaidah']+$q['kelengkapan_laporan'];
                    $nilai=$total/4;
                    ?> 
  <div style="width: 100%;float: left">
    <table>
      <tr>
        <td>NAMA MAHASISWA</td>
        <td>: </td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['nama']); ?></td>
      </tr>
       <tr>
        <td>NIM</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['nobp']); ?></td>
      </tr>
       <tr>
        <td>NAMA INSTANSI</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['nm_instansi']); ?></td>
      </tr>
       <tr>
        <td>TEMPAT BAGIAN PKL</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['posisi']); ?></td>
      </tr>
       <tr>
        <td>JUDUL LAPORAN</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['jd_lap_pkl']); ?></td>
      </tr>
      <tr>
        <td>NAMA DOSEN PEMBIMBING</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['nm_dosen']); ?></td>
      </tr>
    </table>
    <br>
                      
                     <table class="table table-bordered table-striped">
                        <tr>
                        <td><b><center>NO</center></b></td>
                        <td><b><center>Aspek Yang Dinilai</center></b></td>
                        <td><b><center>Nilai</center></b></td>
                      </tr>
                      <tr>
                        <td>1.</td>
                        <td> Penguasaan Bahasa Dalam Menuangkan ide, Gagasan Dalam Laporan PKL</td>
                        <td><?php echo $q['penguasaan_bahasa']; ?></td>
                      </tr>
                      <tr>
                        <td>2.</td>
                        <td>Kemampuan Mengembangkan dan Mempertahankan ide Selama Bimbingan </td>
                        <td><?php echo $q['kemampuan_pengembangan']; ?></td>
                      </tr>
                      <tr>
                        <td>3.</td>
                        <td>Penguasaan Kaidah Penulisan Laporan PKL</td>
                        <td><?php echo $q['penguasaan_kaidah']; ?></td>
                      </tr>
                      <tr>
                        <td>4.</td>
                        <td>Kelengkapan Laporan PKL (Isi, Lampiran, Dll)</td>
                        <td><?php echo $q['kelengkapan_laporan']; ?></td>
                      </tr>
                     
                        <td colspan="2"><b>Total Score</b></td>
                        <td><b><?php echo $total; ?></b></td>
                      </tr>
                      <tr>
                        <td colspan="2"><b>Nilai Dosen Pembimbing</b></td>
                        <td><b><?php echo $nilai; ?></b></td>
                      </tr>
                  </table>
  </div>
<div class="ttd" style="float: right;">
  Malang, <?php echo date("d F Y"); ?><br>
Dosen Pembimbing
  <br>
  <br>
  <br>
  <br>
<div style="border-bottom: 1px solid #555"><?php echo $q['nm_dosen'] ?></div>
NIDN : <?php echo $q['nidn'] ?>
</div>
</body>
</html>
