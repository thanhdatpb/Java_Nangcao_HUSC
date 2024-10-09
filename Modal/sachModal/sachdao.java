package sachModal;

import java.util.ArrayList;

public class sachdao {
   public ArrayList<sach> getsach(){
	   ArrayList<sach> ds= new ArrayList<sach>();
	   //String masach, String tensach, String tacgia, Long gia, 
	   //Long soluong, String anh, String maloai
	   ds.add(new sach("s1", "Cấu trúc dữ liệu","Le lai",(long)10000, (long)2, 
			   "image_sach/b1.jpg","cntt"));
	   ds.add(new sach("s2", "Cơ sở dữ liệu","Le lai",(long)10000, (long)2, 
			   "image_sach/b2.jpg","cntt"));
	   ds.add(new sach("s3", "CTDL 3","Le lai",(long)10000, (long)2, 
			   "image_sach/b3.jpg","cntt"));
	   ds.add(new sach("s4", "Giai tich",":e lai",(long)10000, (long)2, 
			   "image_sach/b4.jpg","toan"));
	   ds.add(new sach("s5", "Dai so","Pham lai",(long)10000, (long)2, 
			   "image_sach/b5.jpg","toan"));
	   ds.add(new sach("s6", "Hinh hoc","Phan Do",(long)10000, (long)2, 
			   "image_sach/b6.jpg","toan"));
	   ds.add(new sach("s7", "Ly dai cuong","Le tien",(long)10000, (long)2, 
			   "image_sach/b7.jpg","ly"));
	   return ds;
	   
   }
}
