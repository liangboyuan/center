<?php
/**
 * Created by PhpStorm.
 * User: liangboyuan
 * Date: 2018/11/28
 * Time: 02:19
 */

namespace app\index\controller;
use app\index\model\Cate;

class Lst extends Common
{
    public function index(){
        /*$cate=new Cate();
        $cateRes=$cate->getchilrenid(input('cateid'));
        $cates = array_map('intval', explode(',', $cateRes));
        //dump(count($cates));die;
        if(count($cates)!=1){
            $num=count($cates)-1;
            unset($cates[$num]);
        }

        foreach ($cates as $k => $v) {
            $children=db('cate')->where('id',$v)->find();
            //artRes=$article->getListRes($v);
            $artRes=db('article')->where('cateid',$v)->limit('5')->select();*/
        /*foreach($children as $c => $d){
            $children1=db('cate')->where(array('pid'=>$d['id']))->select();
        }*/
        //dump($children);die;
        /*if($children){
            $tere[$k]['children']=$children;
            $tere[$k]['article']=$artRes;
        }else{
            $tere[$k]['children']=0;
            $tere[$k]['article']=$artRes;
        }
    }*/

        $cateid=input('cateid');
        $cate_=db('cate')->where('id',$cateid)->find();
        $cate0=db('cate')->select();

        $this->assign('cate0',$cate0);
        if($cate_['type'] == 1){
            $cateres=db('article')->where('cateid',$cateid)->paginate(15);
            $this->assign('news',$cateres);
            return view('lsttop');
        }else{
            $cateres=db('cate')->where('id',$cateid)->find();
            $child_id=db('cate')->where('pid',$cateid)->select();
            $pid=db('cate')->where('id',$cateid)->value('pid');
            if ($child_id==null && $pid==0){
                $child_id='';
                $this->assign('child_id',$child_id);
            }elseif ($child_id==null && $pid != 0){
                $child_id=db('cate')->where('pid',$pid)->select();
                $this->assign('child_id',$child_id);
            }else{
                $this->assign('child_id',$child_id);
            }
            $this->assign('cater',$cateres);
            return $this->fetch();
        }

        //dump($tere);die;
        /*$list=array();
        foreach($cates as $arr){
            $list[$arr['parentid']][]=$arr;
        }
        $this->assign("list",$list);*/

        //$this->assign('tere',$tere);

    }

    public function newlst(){
        if(intval(input('cateid')) >2){
            $id=3;
            $caten=db('cate')->where('id',input('cateid'))->find();
            $catename=$caten['catename'];
            $this->assign('catename',$catename);
            $news=db('article')->where('cateid',input('cateid'))->order('time desc')->paginate(15);
        }else{
            $id=input('cateid');
            $news=db('article')->where('type',input('cateid'))->order('time desc')->paginate(15);
        }
        //新改
        $cateid = input('cateid');
        //$this->assign('cateid',$cateid);
        $catename=db('cate')->where('id',$cateid)->value('catename');
        $this->assign('catename',$catename);
        if ($cateid == "1" || $cateid == "2"){
            $child_id[0]['id']=1;
            $child_id[0]['catename']="新闻动态";
            $child_id[1]['id']=2;
            $child_id[1]['catename']="通知公告";
            $this->assign('child_id',$child_id);
        }else{
            $child_id=db('cate')->where('pid',$cateid)->select();
            //dump($child_id);
            $pid=db('cate')->where('id',$cateid)->value('pid');
            if ($child_id==null && $pid==0){
                $child_id='';
                $this->assign('child_id',$child_id);
            }elseif ($child_id==null && $pid != 0){
                $child_id=db('cate')->where('pid',$pid)->select();
                $this->assign('child_id',$child_id);
            }else{
                $this->assign('child_id',$child_id);
            }
        }
        if ($cateid == "1"){
            $catenameRes="新闻动态";
        }elseif ($cateid == "2"){
            $catenameRes="通知公告";
        }else{
            $catenameRes="";
        }
        $this->assign('catenameRes',$catenameRes);
        //新改
        $file=db('file')->select();
        $this->assign('file',$file);
        $this->assign('news',$news);
        $this->assign('id',$id);
        return view();
    }
}