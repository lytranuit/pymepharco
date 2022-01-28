var simplemaps_countrymap_mapdata = {
  main_settings: {
    //General settings
    width: "responsive", //or 'responsive'
    background_color: "#FFFFFF",
    background_transparent: "yes",
    border_color: "#ffffff",
    pop_ups: "detect",

    //State defaults
    state_description: "",
    state_color: "#88A4BC",
    state_hover_color: "#3B729F",
    state_url: "",
    border_size: 1.5,
    all_states_inactive: "no",
    all_states_zoomable: "yes",

    //Location defaults
    location_description: "",
    location_url: "",
    location_color: "#FF0067",
    location_opacity: 0.8,
    location_hover_opacity: 1,
    location_size: 25,
    location_type: "square",
    location_image_source: "frog.png",
    location_border_color: "#FFFFFF",
    location_border: 2,
    location_hover_border: 2.5,
    all_locations_inactive: "no",
    all_locations_hidden: "no",

    //Label defaults
    label_color: "#d5ddec",
    label_hover_color: "#d5ddec",
    label_size: 22,
    label_font: "Arial",
    hide_labels: "no",
    hide_eastern_labels: "no",

    //Zoom settings
    zoom: "no",
    manual_zoom: "no",
    back_image: "no",
    initial_back: "no",
    initial_zoom: "-1",
    initial_zoom_solo: "no",
    region_opacity: 1,
    region_hover_opacity: 0.6,
    zoom_out_incrementally: "yes",
    zoom_percentage: 0.99,
    zoom_time: 0.5,

    //Popup settings
    popup_color: "white",
    popup_opacity: 0.9,
    popup_shadow: 1,
    popup_corners: 5,
    popup_font: "12px/1.5 Verdana, Arial, Helvetica, sans-serif",
    popup_nocss: "no",

    //Advanced settings
    div: "map",
    auto_load: "yes",
    url_new_tab: "no",
    images_directory: "default",
    fade_time: 0.1,
    link_text: "View Website",
  },
  state_specific: {
    VNM462: {
      name: "CHI NHÁNH HÀ NỘI",
      description:
        "<div style='text-align:left'>Lô 5 – TT 24 khu Nhà ở Báo Nhân Dân, Phường Xuân Phương, Q.Nam Từ Liêm, Tp.Hà Nội.<br>" +
        "ĐT:&nbsp;&nbsp; (84 024)&nbsp; 32011536<br>" +
        "Fax:&nbsp; (84 024) 32010182<br>" +
        "Email:&nbsp;<a href='mailto:cnhn@pymepharco.com'>cnhn@pymepharco.com</a></div>",

      color: "green",
    },
    VNM4600: {
      name: "CHI NHÁNH HẢI PHÒNG",
      description:
        "<div style='text-align:left'>Lô 30 No-04 đường Hồng Phúc, Khu đô thị Cựu Viên, phường Bắc Sơn, Quận Kiến An, Tp.Hải Phòng.<br>" +
        "Điện Thoại:<br>" +
        "Fax :<br>" +
        "Email: <a href='mailto:cnhp@pymepharco.com'>cnhp@pymepharco.com</a></div>",
      color: "green",
    },

    VNM429: {
      name: "Quảng Ninh",
      description: "alo",
      color: "default",
      hover_color: "default",
      url: "default",
    },
    VNM444: {
      name: "CHI NHÁNH TÂY NINH",
      description:
        "<div style='text-align:left'>225 Nguyễn Trọng Cát, Phường Hiệp Ninh, Tp.Tây Ninh, Tỉnh Tây Ninh.<br>" +
        "ĐT:&nbsp;&nbsp; (84 0266) 3631 741<br>" +
        "Fax:&nbsp; (84 0266) 3631 741<br>" +
        "Email:&nbsp;<a href='mailto:cntn@pymepharco.com'>cntn@pymepharco.com</a></div>",

      color: "green",
    },
    VNM450: {
      name: "Điện Biên",
    },
    VNM451: {
      name: "Đông Bắc",
    },
    VNM452: {
      name: "CHI NHÁNH THÁI NGUYÊN",
      description:
        "<div style='text-align:left'>Số 3 Tổ 11, Phường Túc Duyên, Thành phố Thái Nguyên, tỉnh Thái Nguyên.<br>" +
        "Điện Thoại: (+84 0208) 6562468<br>" +
        "Fax : (+84 0208) 6562468<br>" +
        "Email: <a href='mailto:cnthainguyen@pymepharco.com'>cnthainguyen@pymepharco.com</a></div>",
      color: "green",
    },
    VNM453: {
      name: "Lai Chau",
    },
    VNM454: {
      name: "Lạng Sơn",
    },
    VNM455: {
      name: "Son La",
    },
    VNM456: {
      name: "CHI NHÁNH THANH HÓA",
      description:
        "<div style='text-align:left'>Lô 03 MBQH530/UBND –QLĐT- P.Đông Vệ- Tp.Thanh Hóa – tỉnh Thanh Hóa.<br>" +
        "Điện Thoại: 0237.3995668<br>" +
        "Fax : 0237.3995668<br>" +
        "Email: <a href='mailto:cnth@pymepharco.com'>cnth@pymepharco.com</a></div>",
      color: "green",
    },
    VNM457: {
      name: "Tuyên Quang",
    },
    VNM458: {
      name: "Yên Bái",
    },
    VNM459: {
      name: "Hòa Bình",
    },
    VNM460: {
      name: "Hải Dương",
    },
    VNM463: {
      name: "Bắc Ninh",
    },
    VNM464: {
      name: "Vĩnh Phúc",
    },
    VNM466: {
      name: "Ninh Bình",
    },
    VNM467: {
      name: "Hà Nam",
    },
    VNM468: {
      name: "Nam Định",
    },
    VNM469: {
      name: "CHI NHÁNH PHÚ THỌ",
      description:
        "<div style='text-align:left;'>Số 622-624 Khu 7, Phố Thanh Bình – Phường Thanh Miếu – Tp.Việt Trì – tỉnh Phú Thọ<br>" +
        "Điện Thoại: 0210.3912898<br>" +
        "Fax : 0210.3912898<br>" +
        "Email: <a href='mailto:cnpt@pymepharco.com'>cnpt@pymepharco.com</a></div>",
      color: "green",
    },
    VNM470: {
      name: "Bắc Giang",
    },
    VNM471: {
      name: "CHI NHÁNH THÁI BÌNH",
      description:
        "<div style='text-align:left;'>Lô 267 Khu Đô Thị Kỳ Bá ,Phường Kỳ Bá ,Tp.Thái Bình , Tỉnh Thái Bình<br>" +
        "Điện Thoại: 02363.735266<br>" +
        "Fax &nbsp; &nbsp; &nbsp; :<br>" +
        "Email:<a href='mailto:cntb@pymepharco.com'>cntb@pymepharco.com</a></div>",
      color: "green",
    },
    VNM474: {
      name: "Ha Tinh",
    },
    VNM475: {
      name: "CHI NHÁNH NGHỆ AN",
      description:
        "<div style='text-align:left;'>Lô 01-BT05*, thuộc Dự án khu nhà ở chung cư phía đông Đại lộ Lê Nin, Xóm 20 Nghi Phú, Thành Phố Vinh, tỉnh Nghệ An.<br>" +
        "Điện Thoại: 02388.688868<br>" +
        "Fax &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 0238.3834731<br>" +
        "Email:&nbsp;<a href='mailto:cnna@pymepharco.com'>cnna@pymepharco.com</a></div>",
      color: "green",
    },
    VNM476: {
      name: "Quảng Bình",
    },
    VNM477: {
      name: "Dak Lak",
    },
    VNM478: {
      name: "CHI NHÁNH GIA LAI",
      description:
        "<div style='text-align:left;'>138 Lê Lợi, Phường Hoa Lư, Tp.Pleiku, Tỉnh Gia Lai<br>" +
        "Điện Thoại:&nbsp;(0259) 3868368<br>" +
        "Fax &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :(0259) 3868368<br>" +
        "Email:&nbsp;<a href='mailto:cngl@pymepharco.com'>cngl@pymepharco.com</a></div>",
      color: "green",
    },
    VNM479: {
      name: "CHI NHÁNH NHA TRANG",
      description:
        "<div style='text-align:left;'>117-119 Ngô Gia Tự – Phường Tân Lập -TP.Nha Trang-Tỉnh Khánh Hòa.<br>" +
        "ĐT:&nbsp; (84-0258). 3514 668<br>" +
        "Fax:(84-0258). 3514 668<br>" +
        "Email:&nbsp;<a href='mailto:cnnt@pymepharco.com'>cnnt@pymepharco.com</a>",
      color: "green",
    },
    VNM480: {
      name: "CHI NHÁNH LÂM ĐỒNG",
      description:
        "<div style='text-align:left;'>Lô C49 Phạm Ngọc Thạch, Phường 6, Tp.Đà Lạt, Tỉnh Lâm Đồng.<br>" +
        "ĐT:&nbsp;&nbsp; (84 0263) 3 818 364<br>" +
        "Fax:&nbsp; (84 0263) 3 818 364<br>" +
        "Email:&nbsp;<a href='mailto:cnld@pymepharco.com'>cnld@pymepharco.com",
      color: "green",
    },
    VNM481: {
      name: "Ninh Thuận",
    },
    VNM482: {
      name: "Trụ sở chính",
      description:
        "<div style='text-align:left;'>166 – 170 Nguyễn Huệ, Tuy Hòa, Phú Yên <br>" +
        "ĐT:   (84 0257) 3 823 228 – 3 829 165<br>" +
        "Fax:  (84 0257) 3 824 717<br>" +
        "Email: <a href='mailto:hcns@pymepharco.com'>hcns@pymepharco.com</a></div>",
      color: "red",
    },
    VNM483: {
      name: "CHI NHÁNH BÌNH DƯƠNG",
      description:
        "<div style='text-align:left;'>Số 49 D5 KDC Phú Hòa 1 , P.Phú Hòa ,Tp.Thủ Dầu Một, Tỉnh Bình Dương.<br>" +
        "ĐT:&nbsp;&nbsp; (84 0274) 379 6033<br>" +
        "Fax:&nbsp; (84 0274) 379 6033<br>" +
        "Email:&nbsp;<a href='mailto:chbinhduong@pymepharco.com'>chbinhduong@pymepharco.com</a></div>",
      color: "green",
    },
    VNM4834: {
      name: "CHI NHÁNH TIỀN GIANG",
      description:
        "<div style='text-align:left;'>11/11 Phan Thanh Giản, Phường 3, TP. Mỹ Tho, Tiền Giang.<br>" +
        "Điện Thoại:&nbsp;(0273) 3972 776<br>" +
        "Fax &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:(0273) 3972 776<br>" +
        "Email:&nbsp;<a href='mailto:cntg@pymepharco.com'>cntg@pymepharco.com</a></div>",
      color: "green",
    },
    VNM4835: {
      name: "CTY CP DƯỢC – VTYT ĐAKNONG",
      description:
        "<div style='text-align:left;'>345 Quốc lộ 141, Xã Tâm Thắng, Huyện Cujut, Tỉnh ĐakNông.<br>" +
        "ĐT:&nbsp;&nbsp; (84 02501) 3 683 529<br>" +
        "Fax:&nbsp; (84 02501) 3 683 529<br>" +
        "Email:&nbsp;<a href='mailto:daknong@pymepharco.com'>daknong@pymepharco.com</a></div>",
      color: "green",
    },
    VNM484: {
      name: "Bình Phước",
    },
    VNM485: {
      name: "CHI NHÁNH BÌNH ĐỊNH",
      description:
        "<div style='text-align:left;'>319 Đống Đa, P.Thị Nại, Tp.Quy Nhơn, Tỉnh Bình Định.<br>" +
        "Điện Thoại: 02563.819888<br>" +
        "Fax : 02563.819888<br>" +
        "Email: <a href='mailto:cnbd@pymepharco.com'>cnbd@pymepharco.com</a></div>",
      color: "green",
    },
    VNM486: {
      name: "Kon Tum",
    },
    VNM487: {
      name: "Quàng Nam",
    },
    VNM488: {
      name: "CHI NHÁNH QUẢNG NGÃI",
      description:
        "<div style='text-align:left;'>433 Lê Lợi, Tp.Quảng Ngãi, Tỉnh Quảng Ngãi.<br>" +
        "ĐT: 0255- 3714303<br>" +
        "Fax: 0255- 3714303<br>" +
        "Email:&nbsp;<a href='mailto:hcns@pymepharco.com'>cnqn@pymepharco.com</a></div>",
      color: "green",
    },
    VNM489: {
      name: "Quảng Trị",
    },
    VNM490: {
      name: "CHI NHÁNH HUẾ",
      description:
        "<div style='text-align:left;'>54 Trường Chinh, Phường Xuân Phú, Tp.Huế, Tỉnh Thừa Thiên Huế.<br>" +
        "Điện Thoại: 0234.3686889<br>" +
        "Fax : 0234.3686889<br>" +
        "Email: <a href='mailto:cnhue@pymepharco.com'>cnhue@pymepharco.com</a></div>",
      color: "green",
    },
    VNM491: {
      name: "CHI NHÁNH ĐÀ NẴNG",
      description:
        "<div style='text-align:left;'>88 Nguyễn Hữu Thọ, Phường Thuận Hòa Tây, Quận Hải Châu, Tp.Đà Nẵng.<br>" +
        "ĐT:&nbsp;&nbsp; (84 02511) 3 530 986<br>" +
        "Fax:&nbsp; (84 02511) 3 530 986<br>" +
        "Email:&nbsp;<a href='mailto:cndng@pymepharco.com'>cndng@pymepharco.com</a></div>",
      color: "green",
    },
    VNM495: {
      name: "CỬA HÀNG BÀ RỊA VŨNG TÀU",
      description:
        "<div style='text-align:left;'>78 Yên Thế – Phường 4 – Tp. Vũng Tàu, Tỉnh Bà Rịa- Vũng Tàu.<br>" +
        "ĐT:&nbsp;&nbsp; (84 0264) 3 542 533<br>" +
        "Fax:&nbsp; (84 0264) 3 542 533<br>" +
        "Email:&nbsp;<a href='mailto:chvt@pymepharco.com'>chvt@pymepharco.com</a></div>",
      color: "green",
    },
    VNM496: {
      name: "CHI NHÁNH BÌNH THUẬN",
      description:
        "<div style='text-align:left;'>89 Nguyễn Hội, Phường Phú Tài, Tp.Phan Thiết, Tỉnh Bình Thuận.<br>" +
        "Điện Thoại: (02623) 830 310<br>" +
        "Fax &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: (02623) 830 310<br>" +
        "Email:&nbsp;<a href='mailto:cnbt@pymepharco.com'>cnbt@pymepharco.com</a></div>",
      color: "green",
    },
    VNM497: {
      name: "CHI NHÁNH ĐỒNG NAI",
      description:
        "<div style='text-align:left;'>483 Huỳnh Văn Nghệ, Khu Phố 3, Phường Bửu Long, TP. Biên Hòa, Tỉnh Đồng Nai<br>" +
        "ĐT:&nbsp;&nbsp; (84 0261) 3952 682<br>" +
        "Fax:&nbsp; (84 0261) 3952 682<br>" +
        "Email:&nbsp;<a href='mailto:cndn@pymepharco.com'>cndn@pymepharco.com</a></div>",
      color: "green",
    },
    VNM498: {
      name: "CHI NHÁNH AN GIANG",
      description:
        "<div style='text-align:left;'>483 Huỳnh Văn Nghệ, Khu Phố 3, Phường Bửu Long, TP. Biên Hòa, Tỉnh Đồng Nai<br>" +
        "ĐT:&nbsp;&nbsp; (84 0261) 3952 682<br>" +
        "Fax:&nbsp; (84 0261) 3952 682<br>" +
        "Email:&nbsp;<a href='mailto:cndn@pymepharco.com'>cndn@pymepharco.com</a></div>",
      color: "green",
    },
    VNM499: {
      name: "CHI NHÁNH CẦN THƠ",
      description:
        "<div style='text-align:left;'>E2-08 Đường số 6,Khu Nhà Nam Long,Phường Hưng Thạnh , Quận Cái Răng, Tp.Cần Thơ.<br>" +
        "ĐT:   (84 02710) 3 760 171<br>" +
        "Fax:  (84 02710) 3 733 171<br>" +
        "Email:&nbsp;<a href='mailto:cnct@pymepharco.com'>cnct@pymepharco.com</a></div>",
      color: "green",
    },
    VNM500: {
      name: "Ð?ng Tháp",
    },
    VNM501: {
      name: "CHI NHÁNH TP.HCM",
      description:
        "<div style='text-align:left;'><b>44 Đồng Nai, P.15, Q.10, TP.HCM</b><br>" +
        "ĐT:   (84 028) 3 9 703 099 – 3 9 708 789<br>" +
        "Fax:  (84 028) 3 9 702 208<br>" +
        "Email: cnhcm@pymepharco.com<br>" +
        "pymepharco@hcm.vnn.vn<br>" +
        "<b>Quầy D5, 134/01 Tô Hiến Thành, Phường 15, Quận 10, Tp.Hồ Chí Minh.</b><br>" +
        "Điện Thoại: (028) 3866 1467 <br>" +
        "Fax              : (028) 3866 1467 <br>" +
        "Email: chq10@pymepharco.com</div>",
      color: "green",
    },
    VNM502: {
      name: "Kiên Giang",
    },
    VNM503: {
      name: "Long An",
    },
    VNM504: {
      name: "Bến Tre",
    },
    VNM505: {
      name: "Hau Giang",
    },
    VNM506: {
      name: "Bạc Liêu",
    },
    VNM507: {
      name: "CHI NHÁNH CÀ MAU",
      description:
        "<div style='text-align:left;'>40 Nguyễn Công Trứ , Phường 8, Tp. Cà Mau , Tỉnh Cà Mau.<br>" +
        "ĐT:&nbsp;&nbsp; (84 02780) 3 811 644<br>" +
        "Fax:&nbsp; (84 02780) 3 811 644<br>" +
        "Email:&nbsp;<a href='mailto:cncm@pymepharco.com'>cncm@pymepharco.com</a></div>",
      color: "green",
    },
    VNM508: {
      name: "Sóc Trăng",
    },
    VNM509: {
      name: "Trà Vinh",
    },
    VNM510: {
      name: "CHI NHÁNH VĨNH LONG",
      description:
        "<div style='text-align:left;'>101 Phạm Thái Bường, Phường 4, TP.Vĩnh Long, Tỉnh Vĩnh Long.<br>" +
        "Điện Thoại: 0270.3837777<br>" +
        "Fax : &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; 0270.3837778<br>" +
        "Email:&nbsp;<a href='mailto:cnvl@pymepharco.com'>cnvl@pymepharco.com</a></div>",
      color: "green",
    },
    VNM511: {
      name: "Cao Bằng",
    },
    VNM512: {
      name: "Hà Giang",
    },
    VNM5483: {
      name: "Lào Cai",
    },
  },
  locations: {
    0: {
      lat: "16.028167",
      lng: "111.854152",
      name: "Hoàng sa",
      color: "#3B729F",
      type: "circle",
      size: 10,
    },
    1: {
      lat: "17.028167",
      lng: "111.854152",
      name: "Hoàng sa",
      color: "#3B729F",
      type: "circle",
      size: 13,
    },
    2: {
      lat: "16.528167",
      lng: "111.554152",
      name: "Hoàng sa",
      color: "#3B729F",
      type: "circle",
      size: 12,
    },
    3: {
      lat: "16.928167",
      lng: "110.9254152",
      name: "Hoàng sa",
      color: "#3B729F",
      type: "circle",
      size: 10,
    },
    4: {
      lat: "17.028167",
      lng: "111.5254152",
      name: "Hoàng sa",
      color: "#3B729F",
      type: "circle",
      size: 10,
    },
    ///Trường sa
    // 11.416334900292282, 114.34586366641808
    5: {
      lat: "11.416334900292282",
      lng: "112.34586366641808",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size: 8,
    },
    // 10.060217100917095, 113.8495476355282
    6: {
      lat: "10.060217100917095",
      lng: "111.8495476355282",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size: 6,
    },
    // 9.626048932186235, 113.03042376407193
    7: {
      lat: "9.626048932186235",
      lng: "111.03042376407193",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size: 10,
    },
    // 8.848496561505241, 112.23302637696112
    8: {
      lat: "8.848496561505241",
      lng: "110.23302637696112",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size: 7,
    },
    // 8.843296878915131, 112.58780180436713
    9: {
      lat: "8.843296878915131",
      lng: "110.58780180436713",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size: 6,
    },
    // 8.789514059085953, 114.02688613522666
    10: {
      lat: "8.789514059085953",
      lng: "112.02688613522666",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size: 8,
    },
    // 10.674596850997661, 116.12583444137485
    11: {
      lat: "10.674596850997661",
      lng: "112.12583444137485",
      name: "Trường sa",
      color: "#3B729F",
      type: "circle",
      size:12,
    },
  },
};
