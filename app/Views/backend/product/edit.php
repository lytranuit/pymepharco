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
                        <div class="col-lg-8">
                            <!-- <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">Mã:<i class="text-danger">*</i></b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <input class="form-control form-control-sm" type="text" name="code" required="" placeholder="Mã hàng" aria-required="true">
                                </div>
                                <b class="col-12 col-lg-2 col-form-label">Giá bán:<i class="text-danger">*</i></b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <input class="form-control form-control-sm price" type="text" name="price" required="" placeholder="Giá bán" im-insert="true" aria-required="true">
                                </div>
                            </div> -->
                            <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">SEO URL:</b>
                                <div class="col-12 col-lg-10 pt-1">
                                    <input class="form-control form-control-sm" type="text" name="slug">
                                </div>
                            </div>
                            <div class="form-group row">
                                <b class="col-12 col-lg-2 col-form-label">Code:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <input class="form-control form-control-sm" type="text" name="code">
                                </div>
                                <b class="col-12 col-lg-2 col-form-label">RX:</b>
                                <div class="col-12 col-lg-4 pt-1">
                                    <div class="switch-button switch-button-success">
                                        <input type="hidden" name="is_rx" value="0" class="input-tmp">
                                        <input type="checkbox" checked="" name="is_rx" id="switch19" value="1">
                                        <span>
                                            <label for="switch19"></label>
                                        </span>
                                    </div>
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
                                    <a class="nav-link" data-toggle="tab" href="#menu4">Hình ảnh khác</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#menu2">Hướng dẫn sử dụng</a>
                                </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="menu0" class="tab-pane active">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:<i class="text-danger">*</i></b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="name_vi" required="" placeholder="Tiếng Việt" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Thành phần:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="tp_vi">
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Quy cách:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="qc_vi">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Hạn dùng:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="hd_vi">
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Bảo quản:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="bq_vi">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="edit" name="description_vi"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu1" class=" tab-pane fade">
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Tên:<i class="text-danger">*</i></b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type='text' name="name_en" placeholder="Tiếng Anh" />
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Thành phần:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="tp_en">
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Quy cách:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="qc_en">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Hạn dùng:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="hd_en">
                                        </div>
                                        <b class="col-12 col-lg-2 col-form-label">Bảo quản:</b>
                                        <div class="col-12 col-lg-4 pt-1">
                                            <input class="form-control form-control-sm" type="text" name="bq_en">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <b class="col-12 col-lg-2 col-form-label">Mô tả:<i class="text-danger">*</i></b>
                                        <div class="col-12">
                                            <textarea class="edit" name="description_en"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div id="menu2" class=" tab-pane fade">

                                    <div id="hdsd">

                                    </div>
                                    <button class="btn btn-success add_hdsd mt-2">Thêm</button>

                                </div>
                                <div id="menu4" class=" tab-pane fade">
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

                        <div class="col-md-4">
                            <div class="form-group row">
                                <div class="col-12 pt-1">
                                    <div class="card">
                                        <div class="card-header">
                                            Ảnh đại diện
                                        </div>
                                        <div class="card-body">
                                            <div class="image_ft text-center"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-12 pt-1">
                                    <div class="card">
                                        <div class="card-header">
                                            Danh mục
                                        </div>
                                        <div class="card-body">
                                            <?php foreach ($category as $row) : ?>
                                                <div class="col-12">
                                                    <div class="custom-checkbox custom-control">
                                                        <input name="category_list[]" type="checkbox" id="eCheckbox<?= $row->id ?>" class="custom-control-input" value="<?= $row->id ?>">
                                                        <label class="custom-control-label" for="eCheckbox<?= $row->id ?>"><?= $row->name_vi ?></label>
                                                    </div>
                                                </div>
                                            <?php endforeach ?>
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


<template class="item">
    <div class="mt-2 hdsh_box hdsh_box_{{stt}}" style="position: relative;">

        <div class="icon-delete" style="position: absolute;
    right:0;
    font-size: 20px; cursor: pointer;">
            <i class="far fa-times-circle"></i>
        </div>

        <input class="hdsd_id" name="hdsd[{{stt}}][id]" value="{{id}}" type="hidden" />
        <input name="hdsd[{{stt}}][product_id]" value="{{product_id}}" type="hidden" />
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link show active" data-toggle="all" href=".menu-vi">Tiếng Việt</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="all" href=".menu-en">Tiếng Anh</a>
            </li>
        </ul>
        <div class="tab-content">
            <div id="menu-vi-{{stt}}" class="tab-pane active menu-vi">
                <div class="form-group row">
                    <b class="col-12 col-lg-2 col-form-label">Tiêu đề:</b>
                    <div class="col-12 col-lg-4 pt-1">
                        <input class="form-control form-control-sm" type='text' name="hdsd[{{stt}}][title_vi]" placeholder="" value="{{title_vi}}" />
                    </div>
                </div>
                <div class="form-group row">
                    <b class="col-12 col-lg-2 col-form-label">Nội dung:</b>
                    <div class="col-12">
                        <textarea class="edit" name="hdsd[{{stt}}][content_vi]">{{content_vi}}</textarea>
                    </div>
                </div>
            </div>
            <div id="menu-en-{{stt}}" class="tab-pane fade menu-en">
                <div class="form-group row">
                    <b class="col-12 col-lg-2 col-form-label">Tiêu đề:</b>
                    <div class="col-12 col-lg-4 pt-1">
                        <input class="form-control form-control-sm" type='text' name="hdsd[{{stt}}][title_en]" placeholder="" value="{{title_en}}" />
                    </div>
                </div>
                <div class="form-group row">
                    <b class="col-12 col-lg-2 col-form-label">Nội dung:</b>
                    <div class="col-12">
                        <textarea class="edit" name="hdsd[{{stt}}][content_en]">{{content_en}}</textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</template>
<?= $this->endSection() ?>

<!-- Style --->
<?= $this->section("style") ?>

<link rel="stylesheet" href="<?= base_url("assets/lib/datatables/datatables.min.css") ?> " ?>
<?= $this->endSection() ?>

<!-- Script --->
<?= $this->section('script') ?>


<script src="<?= base_url('assets/lib/datatables/datatables.min.js') ?>"></script>
<script src="<?= base_url('assets/lib/datatables/jquery.highlight.js') ?>"></script>

<script src="<?= base_url("assets/lib/mustache/mustache.min.js") ?>"></script>
<script src="<?= base_url("assets/lib/image_feature/jquery.image.js") ?>"></script>

<!--<script src="https://cdn.ckeditor.com/ckeditor5/12.3.1/classic/ckeditor.js"></script>-->
<script src="<?= base_url("assets/lib/ckfinder/ckfinder.js") ?>"></script>
<script src="<?= base_url("assets/lib/ckeditor/ckeditor.js") ?>"></script>
<script type='text/javascript'>
    $(document).ready(function() {
        var stt = 0;
        var list_fix = <?= json_encode($list_fix) ?>;

        function add_item(i = {}) {
            var template = $(".item").html();
            // console.log(template);

            let item = {
                stt: stt,
                product_id: tin.id
            };
            item = {
                ...item,
                ...i
            };
            // console.log(i);
            // if (!$.isEmptyObject(i)) {
            //     item["id"] = i.id;
            //     item["content_vi"] = i.content_vi;
            //     item["content_en"] = i.content_en;
            //     item["title_vi"] = i.title_vi;
            //     item["title_en"] = i.title_en;
            // }
            // console.log(item);
            var rendered = Mustache.render(template, item);
            $("#hdsd").append(rendered);
            var allEditors = $("#hdsd .hdsh_box_" + stt + " .edit");
            for (var i = 0; i < allEditors.length; ++i) {
                CKEDITOR.replace(allEditors[i]);
            }
            stt++;
        }
        var tin = <?= json_encode($tin) ?>;
        fillForm($("#form-dang-tin"), tin);
        var allEditors = document.querySelectorAll('.edit');
        for (var i = 0; i < allEditors.length; ++i) {
            CKEDITOR.replace(allEditors[i]);
        }
        for (let row of list_fix) {
            add_item({
                'title_vi': row
            });
        }

        if (tin.ext) {
            for (let hdsd of tin.ext) {
                add_item(hdsd);
            }
        }
        $(".image_ft").imageFeature();
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

        if (tin.image_other) {
            for (let i = 0; i < tin.image_other.length; i++) {
                let row = tin.image_other[i];
                let src = row['image_url'];
                row['image'] = '<img src="' + src + '" width="200"/>';
                row['src'] = src;
                row['action'] = '<a href="#" class="btn btn-danger btn-sm image_remove"><i class="far fa-trash-alt"></i></a>';

                $('#quanlyimage').dataTable().fnAddData(row);
            }
        }

        $(document).on("click", ".image_remove", function() {
            let parent = $(this).parents("tr").get(0);
            $('#quanlyimage').dataTable().fnDeleteRow($('#quanlyimage').dataTable().fnGetPosition(parent));
        })
        $.validator.setDefaults({
            debug: true,
            success: "valid"
        });

        if (tin.image_url) {
            $(".image_ft").imageFeature("set_image", tin.image_url);
        }
        $("#form-dang-tin").validate({
            highlight: function(input) {
                $(input).parents('.form-line').addClass('error');
            },
            unhighlight: function(input) {
                $(input).parents('.form-line').removeClass('error');
            },
            errorPlacement: function(error, detail) {
                $(detail).parents('.form-group').append(error);
            },
            submitHandler: function(form) {
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
        $(".add_hdsd").click(function(e) {
            e.preventDefault();
            add_item();
        });
        $(document).on("click", ".icon-delete", function() {
            let parent = $(this).parents(".hdsh_box");
            let id = $(".hdsd_id", parent).val();
            if (id > 0) {
                $("#hdsd").append("<input type='hidden' name='hdsd_delete[]' value='" + id + "' />");
            }
            parent.remove();
        });
        $(document).on("click", "[data-toggle='all']", function(e) {
            e.preventDefault();
            var href = $(this).attr("href");
            $(".tab-pane", $("#hdsd")).removeClass("active show");
            $(href, $("#hdsd")).addClass("active show");

            $(".nav-link", $("#hdsd")).removeClass("active show");
            $("[href='" + href + "']", $("#hdsd")).addClass("active show");
        })
    });
</script>

<?= $this->endSection() ?>