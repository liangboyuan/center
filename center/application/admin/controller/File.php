<?php
/**
 * Created by PhpStorm.
 * User: liangboyuan
 * Date: 2018/11/28
 * Time: 12:16
 */

namespace app\admin\controller;


class File extends Common
{
    public function add()
    {
        if(request()->isPost()) {
            $data = input('post.');
            $file = request()->file('thumb');
            // 移动到框架应用根目录/public/uploads/ 目录下
            if($file) {
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
                if($info){
                    // $thumb=ROOT_PATH . 'public' . DS . 'uploads'.'/'.$info->getExtension();
                    $thumb='/center/' . 'public' . DS . 'uploads'.'/'.$info->getSaveName();
                    $data['thumb']=$thumb;
                    $insert=db('file')->insert($data);
                    if($insert){
                        $this->success('文件上传成功',url('lst'));
                    }else{
                        $this->error('文件上传失败',url('lst'));
                    }
                }
            }
        }
        
        return view();
    }

    public function lst()
    {
        $select = db('file')->select();
        $this->assign('select',$select);
        return view();
    }

    public function del(){
        $id=input('id');
        $del=db('file')->where('id',$id)->delete();
        if($del){
            $this->success('删除文件成功',url('lst'));
        }else{
            $this->error('删除文件失败','lst');
        }
    }
}