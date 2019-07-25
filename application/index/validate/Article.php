<?php
namespace app\index\validate;


class Article extends Base
{
    protected $rule = [
        'title' => 'require|max:50',
        'img' => 'require',
        'note' => 'require',
        'intro' => 'require',
        'author' => 'require',
        'sort' => 'require',
    ];

    protected $field = [
        'title' => '标题',
        'img' => '图片',
        'note' => '内容',
        'intro' => '简介',
        'author' => '作者',
        'sort' => '排序',
    ];


}