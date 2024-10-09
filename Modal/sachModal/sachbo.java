package sachModal;

import java.util.ArrayList;

public class sachbo {
   sachdao sdao= new sachdao();
   ArrayList<sach> ds;
   public ArrayList<sach> getsach(){
	   ds= sdao.getsach();
	   return ds;
   }
   public ArrayList<sach> TimMa(String maloai){
	   ArrayList<sach> tam= new ArrayList<sach>();
	   for(sach s: ds) {
		   if(s.getMaloai().toLowerCase().trim().equals(
				   maloai.toLowerCase().trim()))
			   tam.add(s);
	   }
	   return tam;
   }
   public ArrayList<sach> Tim(String key){
	   ArrayList<sach> tam= new ArrayList<sach>();
	   for(sach s: ds) {
		   if(s.getTensach().toLowerCase().trim().contains(
				   key.toLowerCase().trim())||
			s.getTacgia().toLowerCase().trim().contains(
						   key.toLowerCase().trim()))
			   tam.add(s);
	   }
	   return tam;
   }
}
