<?= $this->extend('backend/layouts/main') ?>


<?= $this->section('content') ?>
<div class="row clearfix">
    <div class="col-12">
        <form method="POST" action="" id="form-dang-tin">
            <?= csrf_field() ?>
            <section class="card card-fluid">
                <h5 class="card-header">
                    <div class="d-inline-block w-100">
                        <button type="submit" name="dangtin" class="btn btn-sm btn-primary float-right">Save</button>
                    </div>
                </h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group row">
                                <b class="col-12 col-lg-3 col-form-label">Hiển thị ở trang chủ:</b>
                                <div class="col-12 col-lg-3 pt-1">
                                    <div class="switch-button switch-button-xs switch-button-success">
                                        <input type="hidden" class="input-tmp" name="is_home" value="0">
                                        <input type="checkbox" id="switch3" name="is_home" value="1">
                                        <span>
                                            <label for="switch3"></label>
                                        </span>
                                    </div>
                                </div>
                                <b class="col-12 col-lg-2 col-form-label">Loại:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <select name="type" class="form-control form-control-sm">
                                        <option value="1">Loại 1</option>
                                        <option value="2">Loại 2</option>
                                    </select>
                                </div>
                            </div>
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#menu0">Tiếng Việt</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu1">Tiếng Anh</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2">Tiếng Nhật</a>
                                </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="menu0" class="tab-pane active">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:<i class="text-danger">*</i></b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="name_vi" required="" placeholder="Tên" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="form-control" name="description_vi"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Nội dung:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="edit" name="content_vi"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu1" class="tab-pane fade">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:<i class="text-danger">*</i></b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="name_en" placeholder="Tên" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="form-control" name="description_en"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Nội dung:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="edit" name="content_en"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu2" class="tab-pane fade">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:<i class="text-danger">*</i></b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="name_jp" placeholder="Tên" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="form-control" name="description_jp"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Nội dung:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="edit" name="content_jp"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group row">
                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                    <div class="image_ft"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </div>
</div>

<?= $this->endSection() ?>


<!-- Script --->
<?= $this->section('script') ?>

<script src="<?= base_url("assets/lib/mustache/mustache.min.js") ?>"></script>
<script src="<?= base_url("assets/lib/image_feature/jquery.image.js") ?>"></script>
<script src="<?= base_url("assets/lib/ckfinder/ckfinder.js") ?>"></script>
<script src="<?= base_url("assets/lib/ckeditor/ckeditor.js") ?>"></script>

<script type='text/javascript'>
    var allEditors = document.querySelectorAll('.edit');
    for (var i = 0; i < allEditors.length; ++i) {
        CKEDITOR.replace(allEditors[i]);
    }
    $(document).ready(function() {
        $(".image_ft").imageFeature();
        //$('.edit').froalaEditor({
        //    heightMin: 200,
        //    heightMax: 500, // Set the image upload URL.
        //    imageUploadURL: '<?= base_url() ?>admin/uploadimage',
        //    // Set request type.
        //    imageUploadMethod: 'POST',
        //    // Set max image size to 5MB.
        //    imageMaxSize: 5 * 1024 * 1024,
        //    // Allow to upload PNG and JPG.
        //    imageAllowedTypes: ['jpeg', 'jpg', 'png', 'gif'],
        //    htmlRemoveTags: [],
        //});
        $.validator.setDefaults({
            debug: true,
            success: "valid"
        });
        $("#form-dang-tin").validate({
            highlight: function(input) {
                $(input).parents('.form-line').addClass('error');
            },
            unhighlight: function(input) {
                $(input).parents('.form-line').removeClass('error');
            },
            errorPlacement: function(error, element) {
                $(element).parents('.form-group').append(error);
            },
            submitHandler: function(form) {
                form.submit();
                return false;
            }
        });
    });
</script>

<?= $this->endSection() ?>