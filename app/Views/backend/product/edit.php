<?= $this->extend('backend/layouts/main') ?>

<?= $this->section('content') ?>
<div class="row clearfix">
    <div class="col-12">
        <form method="POST" action="" id="form-dang-tin">
            <input name="dangtin" value="1" type="hidden" />
            <section class="card card-fluid">
                <h5 class="card-header">
                    <div style="margin-left:auto">
                        <button type="submit" class="btn btn-sm btn-primary float-right">Save</button>
                    </div>
                </h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">Mã:<i class="text-danger">*</i></b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <input class="form-control form-control-sm" readonly type='text' name="code" required placeholder="Mã hàng" />
                                </div>
                                <b class="col-12 col-lg-2 col-form-label">Giá bán:<i class="text-danger">*</i></b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <input class="form-control form-control-sm price" type='text' name="pet_price" required placeholder="Giá bán" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">Xuất xứ:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <select name="origin_country_id" class="form-control form-control-sm">
                                        <?php foreach ($origin as $row) : ?>
                                            <option value="<?= $row->id ?>"><?= $row->name_vi ?> </option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                                <b class="col-12 col-lg-2 col-form-label">Bảo quản:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <select name="preservation_id" class="form-control form-control-sm">
                                        <?php foreach ($preservation as $row) : ?>
                                            <option value="<?= $row->id ?>"><?= $row->name_vi ?> </option>
                                        <?php endforeach ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">Vùng:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <select name="region[]" class="form-control form-control-sm chosen" multiple>
                                        <option value="N">Miền Nam</option>
                                        <option value="T">Miền Trung</option>
                                        <option value="B">Miền Bắc</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">Hiển thị:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <div class="switch-button switch-button-xs switch-button-success">
                                        <input type="hidden" class="input-tmp" checked="" name="is_pet" value="0">
                                        <input type="checkbox" checked="" id="switch2" name="is_pet" value="1">
                                        <span>
                                            <label for="switch2"></label>
                                        </span>
                                    </div>
                                </div>
                                <b class="col-12 col-lg-2 col-form-label">
                                    Sắp xếp:
                                    <a class="btn btn-sm btn-success text-white up_order">Up</a>

                                </b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <input class="form-control form-control-sm order" type='number' name="sort" />
                                </div>
                            </div>

                        </div>
                        <div class="col-md-4">
                            <div class="form-group row">
                                <div class="col-12 col-sm-8 col-lg-6 pt-1">
                                    <img src="http://simbaeshop.com<?= $tin->image_url ?> " class="img-responsive" width="200" />
                                    <input type="hidden" name="image_url" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Nav tabs -->
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
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu6">Đơn vị tính</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu7">Hình ảnh khác</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu5">Sản phẩm liên quan</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu3">Danh mục</a>
                                </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="menu0" class="tab-pane active">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:<i class="text-danger">*</i></b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_name_vi" required="" placeholder="Tên" />
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Qui cách:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_volume_vi" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tìm kiếm:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_search_vi" placeholder="Tìm kiếm nâng cao" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả sơ lược:</b>
                                        <div class="col-lg-12">
                                            <textarea class="form-control" name="pet_description_vi" placeholder="Mô tả"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả chi tiết:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_detail_vi" placeholder="Tiếng việt"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Thành phần nguyên liệu:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_element_vi" placeholder="Tiếng việt"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Hướng dẫn sử dụng:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_guide_vi" placeholder="Tiếng việt"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu1" class=" tab-pane fade">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_name_en" placeholder="Tên - Tiếng Anh" />
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Qui cách:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_volume_en" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tìm kiếm:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_search_en" placeholder="Tìm kiếm nâng cao" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả sơ lược:</b>
                                        <div class="col-lg-12">
                                            <textarea class="form-control" name="pet_description_en" placeholder="Mô tả - Tiếng Anh"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả chi tiết:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_detail_en" placeholder="Tiếng Anh"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Thành phần nguyên liệu:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_element_en" placeholder="Tiếng Anh"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Hướng dẫn sử dụng:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_guide_en" placeholder="Tiếng Anh"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu2" class=" tab-pane fade">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_name_jp" placeholder="Tên - Tiếng Nhật" />
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Qui cách:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_volume_jp" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tìm kiếm:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="pet_search_jp" placeholder="Tìm kiếm nâng cao" />
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả sơ lược:</b>
                                        <div class="col-lg-12">
                                            <textarea class="form-control" name="pet_description_jp" placeholder="Mô tả - Tiếng Nhật"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả chi tiết:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_detail_jp" placeholder="Tiếng nhật"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Thành phần nguyên liệu:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_element_jp" placeholder="Tiếng nhật"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Hướng dẫn sử dụng:</b>
                                        <div class="col-lg-12">
                                            <textarea class="edit" name="pet_guide_jp" placeholder="Tiếng nhật"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu3" class=" tab-pane fade">
                                    <div class="row">
                                        <div class="col-12">
                                            <label class="text-danger">Danh mục sản phẩm</label>
                                        </div>
                                        <?php foreach ($category as $row) : ?>
                                            <div class="col-12">
                                                <div class="custom-checkbox custom-control">
                                                    <input name="category_list[]" type="checkbox" id="eCheckbox<?= $row->id ?>" class="custom-control-input" value="<?= $row->id ?>">
                                                    <label class="custom-control-label" for="eCheckbox<?= $row->id ?>"><?= $row->name_vi ?> </label>
                                                </div>
                                            </div>
                                        <?php endforeach ?>

                                    </div>
                                </div>
                                <div id="menu5" class=" tab-pane fade">
                                    <div class="row">
                                        <div class="col-12">
                                            <label class="text-danger">Sản phẩm liên quan</label>
                                            <select class="chosen" name="related[]" style="width: 200px;" multiple>
                                                <?php foreach ($product as $row) : ?>
                                                    <option value="<?= $row->id ?> "><?= $row->code ?> - <?= $row->name_vi ?> </option>
                                                <?php endforeach ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu6" class=" tab-pane fade">
                                    <div class="row clearfix">
                                        <div class="col-12">
                                            <section class="card card-fluid">
                                                <h5 class="card-header drag-handle">
                                                    <a class="btn btn-success btn-sm text-white dvt_add" data-target="#dvt-modal" data-toggle="modal">Thêm</a>
                                                </h5>
                                                <div class="card-body">
                                                    <table id="quanly" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <th>Tiếng Việt</th>
                                                                <th>Tiếng Anh</th>
                                                                <th>Tiếng Nhật</th>
                                                                <th>Giá</th>
                                                                <th>Hành động</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu7" class=" tab-pane fade">
                                    <div class="row clearfix">
                                        <div class="col-12">
                                            <section class="card card-fluid">
                                                <h5 class="card-header drag-handle">
                                                    <a class="btn btn-success btn-sm text-white multiple_image">Thêm</a>
                                                </h5>
                                                <div class="card-body">
                                                    <table id="quanlyimage" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <tH>Hình ảnh</tH>
                                                                <th>Hành động</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </section>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
        </form>
    </div>
</div>


<div aria-hidden="true" aria-labelledby="dvt-modalLabel" class="modal fade" id="dvt-modal" role="dialog" tabindex="-1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="comment-modalLabel">
                    Đơn vị tính
                </h4>
            </div>
            <div class="modal-body">
                <div class="main">
                    <!--<p>Sign up once and watch any of our free demos.</p>-->
                    <form id="form-dvt">
                        <input type="hidden" name="id" />
                        <div class="form-group">
                            <b class="form-label">Tiếng Việt:<i class="text-danger">*</i></b>
                            <div class="form-line">
                                <input name="name_vi" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <b class="form-label">Tiếng Anh</b>
                            <div class="form-line">
                                <input name="name_en" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <b class="form-label">Tiếng Nhật</b>
                            <div class="form-line">
                                <input name="name_jp" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <b class="form-label">Hệ số:<i class="text-danger">*</i></b>
                            <div class="form-line">
                                <input name="special_unit" type='number' class="form-control" placeholder="Hệ số">
                            </div>
                        </div>
                        <div class="form-group">
                            <b class="form-label">Giá:<i class="text-danger">*</i></b>
                            <div class="form-line">
                                <input name="price" type='text' required class="price form-control" placeholder="Giá">
                            </div>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-primary waves-effect" type="submit" name="cap_nhat">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?= $this->endSection() ?>


<!-- Style --->
<?= $this->section("style") ?>
<link rel="stylesheet" href="<?= base_url("assets/lib/chosen/chosen.min.css") ?> " ?>

<link rel="stylesheet" href="<?= base_url("assets/lib/datatables/datatables.min.css") ?> " ?>
<?= $this->endSection() ?>

<!-- Script --->
<?= $this->section('script') ?>


<script src="<?= base_url("assets/lib/chosen/chosen.jquery.js") ?>"></script>
<script src="<?= base_url('assets/lib/datatables/datatables.min.js') ?>"></script>
<script src="<?= base_url('assets/lib/datatables/jquery.highlight.js') ?>"></script>

<script src="<?= base_url("assets/lib/mustache/mustache.min.js") ?>"></script>
<script src="<?= base_url("assets/lib/image_feature/jquery.image.js") ?>"></script>

<!--<script src="https://cdn.ckeditor.com/ckeditor5/12.3.1/classic/ckeditor.js"></script>-->
<script src="<?= base_url("assets/lib/ckfinder/ckfinder.js") ?>"></script>
<script src="<?= base_url("assets/lib/ckeditor/ckeditor.js") ?>"></script>

<script type='text/javascript'>
    $(document).ready(function() {
        var max = <?= $max_order ?>;
        var tin = <?= json_encode($tin) ?>;
        fillForm($("#form-dang-tin"), tin);
        var allEditors = document.querySelectorAll('.edit');
        for (var i = 0; i < allEditors.length; ++i) {
            CKEDITOR.replace(allEditors[i]);
        }
        $(".multiple_image").imageFeature({
            multiple: true,
            id: 'multi'
        }).on("done", function(event, ...data) {
            for (let i = 0; i < data.length; i++) {
                row = [];
                row['image'] = '<img src="' + data[i] + '" width="200"/>';
                row['src'] = data[i];
                row['action'] = '<a href="#" class="btn btn-danger btn-sm image_remove"><i class="far fa-trash-alt"></i></a>';

                $('#quanlyimage').dataTable().fnAddData(row);
            }

        });
        $('#quanly').DataTable({
            "lengthMenu": [
                [-1],
                ["All"]
            ],
            "columns": [{
                    "data": "name_vi"
                },
                {
                    "data": "name_en"
                },
                {
                    "data": "name_jp"
                },
                {
                    "data": "price_format"
                },
                {
                    "data": "action"
                }
            ]
        });

        $('#quanlyimage').DataTable({
            "lengthMenu": [
                [-1],
                ["All"]
            ],
            "columns": [{
                    "data": "image"
                },
                {
                    "data": "action"
                }
            ]
        })
        if (tin.units) {
            for (let i = 0; i < tin.units.length; i++) {
                let data = tin.units[i];
                data['action'] = '<a href="#" class="btn btn-warning btn-sm dvt_edit mr-2" data-target="#dvt-modal" data-toggle="modal" data-id="' + data['id'] + '"><i class="fas fa-pencil-alt"></i></a><a href="#" class="btn btn-danger btn-sm dvt_remove" data-id="' + data['id'] + '"><i class="far fa-trash-alt"></i></a>';
                data['price_format'] = number_format(data['price'], 0, ",", ".") + " VND";
                $('#quanly').dataTable().fnAddData(data);
            }
        }

        if (tin.image_other) {
            console.log(tin.image_other)
            for (let i = 0; i < tin.image_other.length; i++) {
                let row = tin.image_other[i];
                let src = row['image_url'];
                row['image'] = '<img src="' + path + src + '" width="200"/>';
                row['src'] = src;
                row['action'] = '<a href="#" class="btn btn-danger btn-sm image_remove"><i class="far fa-trash-alt"></i></a>';

                $('#quanlyimage').dataTable().fnAddData(row);
            }
        }
        $(".chosen").chosen({
            width: "100%"
        });
        $(".up_order").click(function() {
            $(".order").val(max);
        })
        $('.price').inputmask("numeric", {
            radixPoint: ".",
            groupSeparator: ",",
            autoGroup: true,
            suffix: ' VND', //No Space, this will truncate the first character
            rightAlign: false
        });
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
            submitHandler: async function(form) {
                let code = $("[name='code']").val();
                let product_id = tin['id'];

                let data_dvt = $('#quanly').dataTable().fnGetData();
                let append = "";
                for (let i = 0; i < data_dvt.length; i++) {
                    let id = data_dvt[i].id;
                    append += "<input type='hidden' name='dvt[]' value='" + id + "' />";
                }
                $(form).append(append);


                let data_image = $('#quanlyimage').dataTable().fnGetData();
                // console.log(data_image);
                // return;
                append = "";
                for (let i = 0; i < data_image.length; i++) {
                    let id = data_image[i].src;
                    append += "<input type='hidden' name='image_other[]' value='" + id + "' />";
                }
                $(form).append(append);
                form.submit();
                return false;
            }
        });

        $("#form-dvt").validate({
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
                let data = $(form).serialize();
                $('#dvt-modal').trigger('click');
                save_dvt(data);
                return false;
            }
        });

        $(document).on("click", ".dvt_add", function() {
            $("#form-dvt")[0].reset();
            $("#form-dvt [name=id]").val(0);
        });
        $(document).on("click", ".dvt_edit", function() {
            let id = $(this).data("id");
            let data_dvt = $('#quanly').dataTable().fnGetData();
            let data = null;
            for (let i = 0; i < data_dvt.length; i++) {
                if (data_dvt[i]['id'] == id) {
                    data = data_dvt[i];
                    break;
                }
            }
            fillForm($("#form-dvt"), data);
        });

        $(document).on("click", ".dvt_remove", function() {
            let parent = $(this).parents("tr").get(0);
            $('#quanly').dataTable().fnDeleteRow($('#quanly').dataTable().fnGetPosition(parent));
            let id = $(this).data("id");
            $.ajax({
                url: path + "product/save_dvt",
                data: {
                    id: id,
                    product_id: 0,
                    cap_nhat: true
                },
                dataType: "JSON",
                type: "POST"
            });
        })


        $(document).on("click", ".image_remove", function() {
            let parent = $(this).parents("tr").get(0);
            $('#quanlyimage').dataTable().fnDeleteRow($('#quanlyimage').dataTable().fnGetPosition(parent));
        })
    });

    function save_dvt(data_up) {
        $.ajax({
            url: path + "admin/product/save_dvt",
            data: data_up,
            dataType: "JSON",
            type: "POST",
            success: function(data) {
                data['action'] = '<a href="#" class="btn btn-warning btn-sm dvt_edit mr-2" data-target="#dvt-modal" data-toggle="modal" data-id="' + data['id'] + '"><i class="fas fa-pencil-alt"></i></a><a href="#" class="btn btn-danger btn-sm dvt_remove" data-id="' + data['id'] + '"><i class="far fa-trash-alt"></i></a>';
                data['price_format'] = number_format(data['price'], 0, ",", ".") + " VND";

                if ($("[name=id]").val() > 0) {
                    let data_dvt = $('#quanly').dataTable().fnGetData();
                    for (let i = 0; i < data_dvt.length; i++) {
                        if (data_dvt[i]['id'] == data['id']) {
                            $('#quanly').dataTable().fnUpdate(data, i);
                            break;
                        }
                    }

                } else {
                    $('#quanly').dataTable().fnAddData(data);
                }
                $("#form-dvt")[0].reset();
                $("[name=id]").val(0);
                // $("#quanly tbody").append(rendered);
            }
        });
    }
</script>
<?= $this->endSection() ?>