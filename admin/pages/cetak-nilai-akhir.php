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
            <h3><b>POLITEKNIK NEGERI MALANG</b></h3>
          <h4>Polinema adalah institusi pendidikan tinggi vokasi yang terletak di kota Malang.</h4>
          <p>Jl. Soekarno Hatta No.9, Jatimulyo, Kec. Lowokwaru Kota Malang, Jawa Timur 65141 Telp. (0341) 404424 - Fax. (0341)404420</p>
          <p><span>Website : https://www.polinema.ac.id/</span>  <span>E-mail : upt.humas@polinema.ac.id</span> </p>
        </center>
        </td>
         
        </tr>
    </table>

  <div style="width:100%;float: left;">
 <div style="border-bottom: 2px solid #555;padding:10px 0;margin-bottom: 20px;"></div>
  <center><b>NILAI AKHIR MAHASISWA</b></center>
  <center><b>PRAKTEK KERJA LAPANGAN (PKL)</b></center>
 <br>
  </div>
   <?php
                   include '../../koneksi/koneksi.php'; 
                      $sql=mysqli_query($koneksi,"SELECT * FROM tb_mhs,tb_penempatan,tb_dosen where tb_dosen.nidn=tb_mhs.nidn_pembimbing and tb_penempatan.nobp=tb_mhs.nobp and tb_mhs.nobp='$_GET[nobp]'");
                    
                     $q=mysqli_fetch_array($sql);
                     

                        $nobp=$q['nobp'];

                         $q1=mysqli_fetch_array(mysqli_query($koneksi,"SELECT * FROM tb_nilai_dosen where nobp='$nobp'"));

                    $total1=$q1['penguasaan_bahasa']+$q1['kemampuan_pengembangan']+$q1['penguasaan_kaidah']+$q1['kelengkapan_laporan'];
                    $ndos=$total1/4;

                    $q2=mysqli_fetch_array(mysqli_query($koneksi,"SELECT * FROM tb_nilai_instansi where nobp='$nobp'"));

                    $total2=$q2['disiplin']+$q2['jujur']+$q2['sosialisasi']+$q2['k_manajerial']+$q2['komunikasi']+$q2['k_komputer']+$q2['k_tim']+$q2['p_ilmu_penunjang']+$q2['kwa_hasil_kerja']+$q2['motivasi_hal_baru'];
                    $nins=$total2/10;

                    $nakhir=$ndos*0.50+$nins*0.50;
                     ?>
  <div style="width: 100%;float: left;margin-bottom: 35px;margin-top: 30px;">
    <table>
      <tr>
        <td>NAMA MATAKULIAH</td>
        <td>: </td>
        <td style="padding-left: 5px;"> PRAKTEK KERJA LAPANGAN</td>
      </tr>
       <tr>
        <td>KODE</td>
        <td>:</td>
        <td style="padding-left: 5px;"> MKB38</td>
      </tr>
       <tr>
        <td>SEMESTER/TA</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['periode']); ?></td>
      </tr>
    
      <tr>
        <td>NAMA DOSEN PEMBIMBING</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['nm_dosen']); ?></td>
      </tr>
      <tr>
        <td>NIDN DOSEN PEMBIMBING</td>
        <td>:</td>
        <td style="padding-left: 5px;"> <?php echo strtoupper($q['nidn_pembimbing']); ?></td>
      </tr>
    </table>
    <br>
    <p><br></p>
                      
                     <table class="table table-bordered table-striped">
                        <tr>
                        <td><b><center>No</center></b></td>
                        <td><b><center>Nama Mahasiswa</center></b></td>
                        <td><b><center>NIM</center></b></td>
                        <td><b><center>Nilai Supervisor</center></b></td>
                        <td><b><center>Nilai Dosen Pembimbing</center></b></td>
                        <td><b><center>Nilai Akhir</center></b></td>
                      </tr>
                     <tr>
                        <td>1</td>
                        <td><?php echo strtoupper($q['nama']); ?></td>
                        <td><?php echo strtoupper($q['nobp']); ?></td>
                        <td><?php echo $nins; ?></td>
                        <td><?php echo $ndos; ?></td>
                        <td><?php echo round($nakhir); ?></td>
                      </tr>
                  </table>
                  <br>
                  <p>Catatan : -</p>
                  <p>Nilai Akhir PKL = <i>Nilai Supervisor x 50% + Nilai Dosen Pembimbing x 50%</i></p>
  </div>
  <p></p>
  <div class="ttd" style="float: left;">
  Diketahui,<br>
  Sek Prodi Manajemen Informatika
 <br>
  <br>
  <br>
  <br>
<div style="border-bottom: 1px solid #555">(..........................................)</div>
NIDN : 
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
