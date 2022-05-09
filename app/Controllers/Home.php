<?php

namespace App\Controllers;

class Home extends BaseController
{
    protected $auth;
    /**
     * @var Auth
     */
    protected $config;

    /**
     * @var \CodeIgniter\Session\Session
     */
    protected $session;

    public function __construct()
    {
        // Most services in this controller require
        // the session to be started - so fire it up!
        $this->session = service('session');

        $this->config = config('Auth');
        $this->auth = service('authentication');
    }

    public function index()
    {
        $this->data['title'] =  "Trang chủ" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }

    public function history()
    {
        $this->data['title'] =  "Lịch sử" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }

    public function value()
    {
        $this->data['title'] =  "Giá trị cốt lõi" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }
    public function policy()
    {
        $this->data['title'] =  "Chính sách chất lượng" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }


    public function activities()
    {
        $this->data['title'] =  "Hoạt động cộng đồng" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }

    public function healthly()
    {
        $this->data['title'] =  "Sức khỏe" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }

    public function job()
    {
        $this->data['title'] =  "Nghề nghiệp" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }
    public function supply()
    {
        $this->data['title'] =  "Hệ thống phân phối" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }

    public function manager()
    {
        $this->data['title'] =  "Đội ngũ" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }
    public function set_area($area)
    {
        helper("cookie");

        // store a cookie value
        $this->response->setCookie(array(
            'name' => 'area_current',
            'value' => $area,
            'expire' => 3600 * 30
        ));
        return redirect()->to(base_url())->withCookies();
        // print_r($area);
        // header('Location: ' . $_SERVER['HTTP_REFERER']);
        // exit();
    }

    public function agreecookies()
    {
        $_SESSION['agree_cookies'] = true;

        echo 1;
    }

    public function agreeproduct()
    {
        $_SESSION['agree_product'] = true;

        echo 1;
    }
    public function login()
    {
        // No need to show a login form if the user
        // is already logged in.
        $this->data['title'] = lang("Custom.login") . $this->data['title'];
        if ($this->auth->check()) {
            $redirectURL = session('redirect_url') ?? site_url('/');
            unset($_SESSION['redirect_url']);

            return redirect()->to($redirectURL);
        }

        // Set a return URL if none is specified
        $_SESSION['redirect_url'] = session('redirect_url') ?? previous_url() ?? site_url('/');

        return view($this->data['content'], $this->data);
    }
    /**
     * Displays the user registration page.
     */
    public function register()
    {
        helper(['form', 'reCaptcha']);
        // check if already logged in.
        if ($this->auth->check()) {
            return redirect()->back();
        }

        // Check if registration is allowed
        if (!$this->config->allowRegistration) {
            return redirect()->back()->withInput()->with('error', lang('Auth.registerDisabled'));
        }

        $language = \Config\Services::language();
        $short_lang =  $language->getLocale();
        array_push($this->data['javascript_tag'], base_url("assets/lib/jquery-validation/jquery.validate.js"));
        if ($short_lang == "vi") {
            array_push($this->data['javascript_tag'], base_url("assets/lib/jquery-validation/localization/messages_vi.js"));
        } elseif ($short_lang == "jp") {
            array_push($this->data['javascript_tag'], base_url("assets/lib/jquery-validation/localization/messages_ja.js"));
        }
        $this->data['title'] = lang("Custom.sign_up") . $this->data['title'];
        return view($this->data['content'], $this->data);
    }

    public function checkregister()
    {
        $username = $this->request->getVar('username');
        $email = $this->request->getVar('email');

        $user_model = model("UserModel");
        $check = $user_model->where(array("username" => $username))->asArray()->first();
        // account_creation_duplicate_identity
        // account_creation_duplicate_email
        // print_r($check);
        // die();
        if (!empty($check)) {
            echo json_encode(array('success' => 0, 'msg' => lang('Custom.account_creation_duplicate_identity')));
            die();
        }
        $check =  $user_model->where(array("email" => $email))->asArray()->first();
        if (!empty($check)) {
            echo json_encode(array('success' => 0, 'msg' => lang('Custom.account_creation_duplicate_email')));
            die();
        }
        echo json_encode(array('success' => 1));
    }
    public function contact()
    {
        $this->data['title'] =  "Liên hệ" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }
    public function about()
    {
        $this->data['title'] =  "Giới thiệu" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        return view($this->data['content'], $this->data);
    }
    public function submit()
    {

        // $model = new UserModel();
        // $data = array(
        //     'name' => $this->request->getVar('name'),
        //     'email' => $this->request->getVar('email'),
        //     'contact_no' => $this->request->getVar('mobile_number'),
        // );

        $recaptchaResponse = trim($this->request->getVar('g-recaptcha-response'));

        // $userIp = $this->request->ip_address();

        $secret = '6LcyUcQdAAAAAIJkEQAq70u7LbkNzCnKY1TeDjxF';

        $credential = array(
            'secret' => $secret,
            'response' => $recaptchaResponse
        );

        $verify = curl_init();
        curl_setopt($verify, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
        curl_setopt($verify, CURLOPT_POST, true);
        curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($credential));
        curl_setopt($verify, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($verify);

        $status = json_decode($response, true);
        $session = session();
        if ($status['success']) {
            // $model->save($data);
            $session->setFlashdata('errors', 'Form has been successfully submitted');
        } else {
            $session->setFlashdata('msg', 'Something goes to wrong');
        }

        return redirect()->to('home/contact');
    }
    public function library()
    {
        $this->data['title'] =  "Thư viện" . $this->data['title'];
        //echo $this->data['title'];
        //die();  

        $library_model = model("LibraryModel");
        $this->data['libraries'] = $library_model->findAll();


        $library_model->image($this->data['libraries']);
        return view($this->data['content'], $this->data);
    }
}
