<div class="content-wrapper">
  <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Masukan Judul Laporan PKL
            
          </h1>
          <ol class="breadcrumb">
            <li><a href="index.php"> Home</a></li>
            <li class="active">Judul</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
  <!-- Main row -->
          <div class="row">
            <div class="col-xs-12">

              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">Form Judul Laporan PKL</h3>
                 
                </div><!-- /.box-header -->
                <div class="box-body">
                 <?php 
                            include '../koneksi/koneksi.php';

                            $id=$_GET['id'];

                            if(isset($_POST['b1'])){

                            if(empty($_POST['jd'])){

                            echo '<div class="alert alert-warning alert-dismissible fade in" role="alert">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <span aria-hidden="true">×</span></button>
                                  <strong>Error!</strong> Data tidak boleh ada yang kosong.
                                  </div>';
                              }else{

                              

                              $sql=mysqli_query($koneksi,"UPDATE tb_mhs SET jd_lap_pkl='$_POST[jd]' WHERE nobp='$id'");
                                

                                 echo '<div class="alert alert-success alert-dismissible fade in" role="alert">
                                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                  <span aria-hidden="true">×</span></button>
                                  <strong>Sukses!</strong> Data berhasil diedit.
                                  </div>';
                            }
                            }
                            ?>
              <div class="col-lg-6">

                     <form id="contactForm" action="" method="post" enctype="multipart/form-data">
                    
                             <div class="row">
                                <div class="form-group">
                                <div class="col-lg-12 ">
                                <label>Perhatian :</label>
                                <br>
                                    <span><i>* Isikan Judul yang sudah di acc sama Pembimbing, karena pengimputan hanya boleh satu kali</i></span>
                                      </div>
                                     
                                </div>
                            </div>
                          <br>
                          <div class="row">
                                <div class="form-group">
                                <div class="col-lg-12 ">
                                <label>Judul Laporan PKL</label>
                                 <textarea name="jd" class="form-control"></textarea>
                                   
                                      </div>
                                     
                                </div>
                            </div>
                              <br>
                           <div class="row">
                                <div class="col-md-12">
                                    <button type="submit" name="b1" class="btn btn-primary"><i class="fa fa-save"></i> Simpan</button>
                                   
                                </div>
                            </div>
                        </form>
                  </div>

                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->

     </section><!-- /.content -->

   </div>
