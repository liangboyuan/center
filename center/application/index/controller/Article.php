<?php
/**
 * Created by PhpStorm.
 * User: liangboyuan
 * Date: 2018/11/28
 * Time: 03:13
 */

namespace app\index\controller;


class Article extends Common
{
    public function index()
    {
        $id=input('id');
        $file=db('file')->where('id',$id)->find();
        $file1=db('file')->select();
        $this->assign('file',$file1);
        $this->assign('content',$file);
        return view();
    }

    public function news(){
        $catename='';
        $id=input('cateid');
        $content=db('article')->where('id',$id)->find();
        db('article')->where(array('id'=>$id))->setInc('click');
        $type=$content['type'];
        $newlist=db('article')->where('type',$type)->order('time desc')->limit(7)->select();
        if($type==1){
            $catename="新闻动态";
        }elseif ($type==2){
            $catename="通知公告";
        }else{
            $catename="菜单栏目信息";
            //$catename=db('cate')->where('id',$id)->find('catename');
            //$catename=db('cate')->where('id',$cateid)->find('catename');
        }
        $this->assign('catename',$catename);
        $this->assign('newlist',$newlist);
        $this->assign('content',$content);
        return view();
    }
}