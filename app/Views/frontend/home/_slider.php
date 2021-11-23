<section id="slide">
    <div class="slide-box slider">
        <?php foreach ($sliders as $row) : ?>
            <div class="banner has-hover has-slide-effect slide-zoom-in" id="banner-<?= $row->id ?>" style="height: 100vh;">
                <div class="banner-inner fill">
                    <div class="banner-bg fill">
                        <div class="bg fill bg-fill bg-loaded" style="background-image: url(<?= base_url($row->image_url) ?>);"></div>
                    </div><!-- bg-layers -->
                    <div class="banner-layers container d-flex align-items-center">
                        <div class="col-md-5 animate animate__animated animate__fadeInDown">
                            <div class="block-info-banner" style="background: rgba(230, 230, 230, 0.9);
    padding: 20px 20px 30px 20px;
    position: relative;font-size:small;white-space:initial">
                                <?= $row->text ?>
                                <a href="<?= $row->link ?>" class="view-banner" style="    background: #009a4e;
    color: #fff;
    padding: 10px 20px;
    position: absolute;
    display: inline-block;
    bottom: -20px;">XEM CHI TIẾT <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </div><!-- .banner-layers -->
                    <button target="_self" style="position: absolute;
    bottom: 20px;
    left: calc(50% - 30px);
    background: white;
    width: 60px;
    height: 60px;
    padding:0;
    margin:0;
    border-radius: 100%;" class="next-to-about animate animate__animated animate__bounce animate__slow animate__delay-1s">
                        <i class="fas fa-chevron-down animate animate__animated animate__infinite animate__bounce animate__slow" style="font-size: 30px;"></i>
                    </button>
                </div><!-- .banner-inner -->
            </div>
        <?php endforeach ?>
    </div>

</section>

<!----
<section>
    <div class="Header">
        <div class="Header-background"></div>
        <div class="Header-content">
            <div class="Header-hero">
                <h1>The best app you've <br> ever seen</h1>
                <p>You'll be blown away with all it does</p>
                <button class="Button">Sign up</button>
            </div>
            <div class="Header-visuals">
                <div class="Iphone"></div>
            </div>
        </div>
    </div>
    <style>
        .Header {
            position: relative;
            height: 80vh;
            display: block
        }

        .Header-background {

            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(19deg, var(--color-1), var(--color-2));
            transform-origin: 0px 0px;
            transform: skewY(-10deg);
            overflow: hidden;
            z-index: -1
        }

        .Header-background::before,
        .Header-background::after {
            display: block;
            position: absolute;
            content: '';
            width: 80%;
            height: (100%/3);
            opacity: .3;
            filter: blur(15px)
        }

        .Header-background::before {
            background: var(--color-1);
            right: 0;
        }

        .Header-background::after {
            background: var(--color-2);
            bottom: 0;
        }

        .Header-content {
            text-align: center;
            padding: 4rem 4rem;
            margin: 0 auto
        }

        @media(min-width: break-large) {
            .Header-content {
                text-align: left;
                padding: 10rem 4rem;
                max-width: 54rem;
                display: flex;
                justify-content: space-between
            }
        }

        .Header-hero h1,
        .Header-hero p {
            color: white;
            text-shadow: 0 .5rem 1rem rgba(50, 0, 100, .1)
        }

        .Header-hero h1 {
            margin: 0;
            font-size: 3rem
        }

        .Header-hero p {
            font-size: 1.5rem;
            margin-bottom: 2rem
        }

        .Header-visuals {
            position: relative;
            margin-top: 5rem;
            transform: rotate(-10deg)
        }

        @media(min-width: break-large) {
            .Header-visuals {
                margin: 0;
                transform: translateY(-5rem) rotate(-10deg)
            }
        }

        .Button {
            padding: 1.5rem 2rem;
            border: 0;
            color: var(--color-3);
            font-size: 1.2rem;
            font-weight: bold;
            background: white;
            border-radius: 3px;
            transition: all .2s;
            cursor: pointer;
            box-shadow: 0 1.75rem 2rem -.4rem rgba(50, 0, 100, .15)
        }

        .Button:hover {
            color: var(--color-4);
            box-shadow: 0 1.75rem 3rem 0rem rgba(50, 0, 100, .1);
            transform: scale(1.05)
        }

        .Button:active {
            box-shadow: 0 1.75rem 2.5rem -.2rem rgba(50, 0, 100, .125);
            transform: scale(1.025)
        }

        .Iphone {
            display: inline-block;
            background: white;
            padding: 4rem .6rem 0;
            border-radius: 2rem;
            box-shadow: -1rem 1.75rem 2rem -.4rem rgba(50, 0, 100, .1), -.2rem .2rem .5rem rgba(50, 0, 100, .05), inset .5rem -.5rem .5rem -.4rem rgba(50, 0, 100, .1);
            text-align: center
        }

        .Iphone::before,
        .Iphone::after {
            content: '';
            display: block
        }

        .Iphone::before {
            background-color: var(--color-3);
            background-image: linear-gradient(0deg, var(--color-3) 0%, var(--color-4) 100%);
            width: 16rem;
            padding-top: 177.5%
        }

        .Iphone::after {
            display: inline-block;
            margin: .6rem;
            padding: 1.4rem;
            border: 1px solid #f1f1f1;
            border-radius: 2rem;
            box-shadow: inset -.05rem .05rem .5rem 0rem rgba(50, 0, 100, .05)
        }
    </style>
</section>-->