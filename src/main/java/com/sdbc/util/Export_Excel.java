package com.sdbc.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableImage;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

import org.junit.Test;

/**
 * Excel导入导出
 * 
 * 
 */
public class Export_Excel {

    /**
     * 导入(导入到内存)
     */
    @Test
    public void importExcel() {
        Workbook book = null;
        try {
            book = Workbook.getWorkbook(new File("D:/test/测试.xls"));
            // 获得第一个工作表对象
            Sheet sheet = book.getSheet(0);
            int rows=sheet.getRows();
            int columns=sheet.getColumns();
            // 遍历每行每列的单元格
            for(int i=0;i<rows;i++){
                for(int j=0;j<columns;j++){
                    Cell cell = sheet.getCell(j, i);
                    String result = cell.getContents();
                    if(j==0){
                        System.out.print("姓名："+result+" ");
                    }
                    if(j==1){
                        System.out.print("年龄："+result+" ");
                    }
                    if((j+1)%2==0){ 
                        System.out.println();
                    }
                }
            }
            System.out.println("========");
            // 得到第一列第一行的单元格
            Cell cell1 = sheet.getCell(0, 0);
            String result = cell1.getContents();
            System.out.println(result);
            System.out.println("========");
        } catch (Exception e) {
            System.out.println(e);
        }finally{
            if(book!=null){
                book.close();
            }
        }
    }

    /**
     * 导出(导出到磁盘)
     */
    @Test
    public void exportExcel() {
        WritableWorkbook book = null;
        try {
            // 打开文件
            book = Workbook.createWorkbook(new File("D:/test/测试.xls"));
            // 生成名为"学生"的工作表，参数0表示这是第一页
            WritableSheet sheet = book.createSheet("学生", 0);
            // 指定单元格位置是第一列第一行(0, 0)以及单元格内容为张三
            Label label = new Label(0, 0, "张三");
            // 将定义好的单元格添加到工作表中
            sheet.addCell(label);
            // 保存数字的单元格必须使用Number的完整包路径
            jxl.write.Number number = new jxl.write.Number(1, 0, 30);
            sheet.addCell(number);
            // 写入数据并关闭文件
            book.write();
        } catch (Exception e) {
            System.out.println(e);
        }finally{
            if(book!=null){
                try {
                    book.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } 
            }
        }
    }
    
   /* *//**
     * 
     * 导出AS机构所需要的asid,askey_factor和askey等参数
     * 
     *//*
    public void export_keyfile(List<AsKeyExport> list,HttpServletResponse response){

        WritableWorkbook book = null;
        try {
            // 打开文件
            book = Workbook.createWorkbook(new File("askey.xls"));          
            WritableSheet sheet = book.createSheet("密钥参数", 0);
            String[] columns = {"asid","askey_factor","askey"};  
            for (int i = 0; i < columns.length; i++) {     
            	sheet.addCell(new Label(i, 0, columns[i]));    
            }  
            if(list!=null && !list.isEmpty()){
                for(int i=0; i<list.size(); i++){   
                	sheet.addCell(new Label(0,i+1, list.get(i).getAsid()));
                	sheet.addCell(new Label(1, i+1, list.get(i).getAskey_factor()));
                	sheet.addCell(new Label(2, i+1, list.get(i).getAskey()));
                }
            }
            
            // 写入数据并关闭文件
            book.write();
        } catch (Exception e) {
            System.out.println(e);
        }finally{
            if(book!=null){
                try {
                    book.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } 
            }
        }
    
    
    }*/
    /**
     * 将审计信息对象数据写入到Excel
     *//*
    
    public void writeExcel(List<AuditInfo> auditlist,HttpServletResponse response) {
        WritableWorkbook book = null;
        String result="";
    	String sen = null;
        try {
            // 打开文件
            book = Workbook.createWorkbook(new File("audit.xls"));          
            WritableSheet sheet = book.createSheet("审计记录表", 0);
            String[] columns = {"序号","操作类型","用户名","请求时间","请求结果","操作敏感度","ip地址"};  
            for (int i = 0; i < columns.length; i++) {     
            	sheet.addCell(new Label(i, 0, columns[i]));    
            }  
            if(auditlist!=null && !auditlist.isEmpty()){
                for(int i=0; i<auditlist.size(); i++){   
                	sheet.addCell(new Label(0,i+1, Integer.toString(auditlist.get(i).getId())));
                	sheet.addCell(new Label(1, i+1, auditlist.get(i).getOpera_name()));
                	sheet.addCell(new Label(2, i+1, auditlist.get(i).getUsername()));
                    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
                    SimpleDateFormat sdf1=new SimpleDateFormat(" HH:mm:ss");                     
                    String date=sdf.format(auditlist.get(i).getRequest_date()); 
                    String time=sdf1.format(auditlist.get(i).getRequest_time());
                    String datetime=date+time;
                    sheet.addCell(new Label(3, i+1, datetime)); 
                    if("00".equals(auditlist.get(i).getResult())){
                    	 result="成功";
                    	 sheet.addCell(new Label(4, i+1, result));
                    }else{
                    	result="失败";
                    	sheet.addCell(new Label(4, i+1, result));
                    } 
                    if(auditlist.get(i).getSen()==1){
                     sen="低";
                     sheet.addCell(new Label(5, i+1, sen));
                    }else
                     if(auditlist.get(i).getSen()==2){
                     sen="中";
                     sheet.addCell(new Label(5, i+1, sen));
                    }else
                    {
                     sen="高";
                     sheet.addCell(new Label(5, i+1, sen));
                    }
                    	
                    if("0:0:0:0:0:0:0:1".equals(auditlist.get(i).getIp_addr())){
                    	String ip=auditlist.get(i).getIp_addr();
                    			ip="127.0.0.1";
                    	sheet.addCell(new Label(6, i+1, ip));
                    }else{
                    	sheet.addCell(new Label(6, i+1, auditlist.get(i).getIp_addr()));
                    }
                }
            }
            
            // 写入数据并关闭文件
            book.write();
        } catch (Exception e) {
            System.out.println(e);
        }finally{
            if(book!=null){
                try {
                    book.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } 
            }
        }
    
    }*/
    /*
     * 
     * @a
     */
    public void download(String path, HttpServletResponse response) {  
        try {  
            // path是指欲下载的文件的路径。  
            File file = new File(path);  
            // 取得文件名。  
            String filename = file.getName();  
            // 以流的形式下载文件。  

            InputStream fis = new BufferedInputStream(new FileInputStream(path));  
            byte[] buffer = new byte[fis.available()];  
            fis.read(buffer);  
            fis.close();
            // 清空response  
            response.reset();  
            // 设置response的Header  
            response.addHeader("Content-Disposition", "attachment;filename="  
                    + new String(filename.getBytes()));  
            response.addHeader("Content-Length", "" + file.length());  
            OutputStream toClient = new BufferedOutputStream(  
                    response.getOutputStream());  
            response.setContentType("application/vnd.ms-excel;charset=gb2312");  
            toClient.write(buffer); 
            toClient.flush();
            toClient.close();  
        } catch (IOException ex) {  
            ex.printStackTrace();  
        }  
    }  
    /**
     * 读取Excel数据到内存
     *//*
    @Test
    public void readExcel() {
        Workbook book = null;
        try {
            // 打开文件
            book = Workbook.getWorkbook(new File("D:/test/stu.xls"));
            // 获得第一个工作表对象
            Sheet sheet = book.getSheet(0);
            int rows=sheet.getRows();
            int columns=sheet.getColumns();
            List<Student> stuList=new ArrayList<Student>();
            // 遍历每行每列的单元格
            for(int i=0;i<rows;i++){
                Student stu = new Student();
                for(int j=0;j<columns;j++){
                    Cell cell = sheet.getCell(j, i);
                    String result = cell.getContents();
                    if(j==0){
                        stu.setName(result);
                    }
                    if(j==1){
                        stu.setAge(NumberUtils.toInt(result));
                    }
                    if((j+1)%2==0){
                        stuList.add(stu);
                        stu=null;
                    }
                }
            }
            
            //遍历数据
            for(Student stu : stuList){
                System.out.println(String.format("姓名：%s, 年龄：%s", 
                        stu.getName(), stu.getAge()));
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }finally{
            if(book!=null){
                try {
                    book.close();
                } catch (Exception e) {
                    e.printStackTrace();
                } 
            }
        }
    
    }*/
    
    /**
     * 图片写入Excel，只支持png图片
     */
    @Test
    public void writeImg() {
        WritableWorkbook wwb = null;
        try {
            wwb = Workbook.createWorkbook(new File("D:/test/image.xls"));
            WritableSheet ws = wwb.createSheet("图片", 0);
            File file = new File("D:\\test\\png.png");
            //前两位是起始格，后两位是图片占多少个格，并非是位置
            WritableImage image = new WritableImage(1, 4, 6, 18, file);
            ws.addImage(image);
            wwb.write();
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            if(wwb!=null){
                try {
                    wwb.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }  
            }
        }
    }
    
    private List<Student> queryStudentList(){
        List<Student> stuList=new ArrayList<Student>();
        stuList.add(new Student("zhangsan", 20));
        stuList.add(new Student("lisi", 25));
        stuList.add(new Student("wangwu", 30));
        return stuList;
    }
    
    public class Student {
        private String name;
        private int age;

        public Student() {
        }

        public Student(String name, int age) {
            super();
            this.name = name;
            this.age = age;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }
    }
}