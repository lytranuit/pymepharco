<?php if (!session("agree_product")) : ?>
    <div id="hidden-content2" style="width:500px;color:gray;display:none">
        <p>
            Vui lòng xác nhận bạn là dược sĩ, bác sĩ, chuyên viên y khoa... có nhu cầu tìm hiểu về sản phẩm
        </p>
        <p>
            Thông tin mô tả tại đây chỉ mang tính chất tham khảo. Vui lòng xem chi tiết thông tin trong toa thuốc đính kèm.
        </p>
        <div class="cookieButtons">
            <input type="submit" name="cookiesInstance$btnPrihvati" value="Đồng ý" id="cookiesInstance_btnPrihvati" class="cookiesButton orangeButton buttonAgree2">
            <input type="submit" name="cookiesInstance$btnOdustani" value="Bỏ qua" id="cookiesInstance_btnOdustani" class="cookiesButton buttonCancle2">
            <div class="cleaner"></div>
        </div>
    </div>
<?php endif ?>