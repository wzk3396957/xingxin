<?php
namespace app\index\validate;


class About extends Base
{
    protected $rule = [
        'mobile' => 'require|isMobile',
        'telephone' => 'require',
        'fax' => 'require',
        'email' => 'require',
        'url' => 'require',
        'addr' => 'require',
        'note' => 'require',
        'intro'  =>  'require',
        'contact'  =>  'require',
        'QR_code'  =>  'require'
    ];

    protected $field = [
        'mobile' => '手机',
        'telephone' => '电话',
        'fax' => '传真',
        'email' => '邮箱',
        'url' => '网址',
        'addr' => '地址',
        'note' => '公司介绍',
        'intro'  =>  '关于我们',
        'contact'  =>  '联系我们',
        'QR_code'  =>  '二维码'
    ];


}