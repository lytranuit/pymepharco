<?= $this->extend('backend/layouts/main') ?>


<?= $this->section('content') ?>
<div class="row clearfix">
    <div class="col-12">

        <form id="form_advanced_validation" method="POST" novalidate="novalidate">
            <?= csrf_field() ?>

            <section class="card card-fluid">
                <h5 class="card-header drag-handle">
                    Ngôn ngữ
                    <div style="margin-left:auto">
                        <button class="btn btn-primary btn-sm float-right" type="submit" id="Save">Cập nhật</button>
                    </div>
                </h5>
                <div class="card-body">
                    <table id="quanlytin" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Key</th>
                                <?php foreach ($supportedLocales as $lang) : ?>
                                    <th><?= $lang ?></th>
                                <?php endforeach ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 0 ?>
                            <?php foreach ($moduleData as $key => $row) : ?>

                                <?php $i++ ?>
                                <tr>
                                    <td><?= $i ?></td>
                                    <td class="key"><?= $key ?></td>
                                    <?php foreach ($supportedLocales as $lang) : ?>
                                        <td><input type='text' style="width:100%;" class="form-control <?= $lang ?>" value='<?= isset($row[$lang]) ? $row[$lang] : '' ?>' /></td>
                                    <?php endforeach ?>
                                </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                </div>
            </section>
        </form>
    </div>
</div>

<?= $this->endSection() ?>
<!-- Style --->
<?= $this->section("style") ?>

<link rel="stylesheet" href="<?= base_url("assets/lib/datatables/datatables.min.css") ?> " ?>
<?= $this->endSection() ?>

<!-- Script --->
<?= $this->section('script') ?>

<script src="<?= base_url('assets/lib/datatables/datatables.min.js') ?>"></script>
<script src="<?= base_url('assets/lib/datatables/jquery.highlight.js') ?>"></script>

<script type="text/javascript">
    let supportedLocales = <?= json_encode($supportedLocales) ?>;
    $(document).ready(function() {
        $.fn.dataTableExt.ofnSearch['html-input'] = function(value) {
            return $(value).val();
        };
        $('#quanlytin').DataTable({
            columnDefs: [{
                "type": "html-input",
                // "targets": [2, 3, 4]
            }],
            "lengthMenu": [
                [-1],
                ["All"]
            ]
        });
        $("#Save").click(function(e) {
            e.preventDefault();
            var data = {};
            for (let lang of supportedLocales) {
                data[lang] = {};
            }
            $("#quanlytin tbody tr").each(function() {
                var key = $(".key", $(this)).text();
                for (let lang of supportedLocales) {
                    let value = $("." + lang, $(this)).val();
                    data[lang][key] = value;
                }
            });
            //            console.log(data);
            //           return false;
            $.ajax({
                url: path + "admin/language/savelanguage",
                type: "POST",
                dataType: "JSON",
                data: {
                    data: JSON.stringify(data)
                },
                success: function(res) {
                    if (res == 1) {
                        alert("Success!");
                        location.reload();
                    }
                }
            })
        })
    });
</script>
<?= $this->endSection() ?>