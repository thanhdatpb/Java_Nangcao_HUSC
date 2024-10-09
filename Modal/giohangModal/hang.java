package giohangModal;

public class hang {
	public String masach;
	public String tensach;
	public Long gia;
	public Long soluong;
	public Long thanhtien;
	
	 public hang(String masach, String tensach, Long gia, Long soluong, Long thanhtien) {
	        this.masach = masach;
	        this.tensach = tensach;
	        this.gia = gia;
	        this.soluong = soluong;
	        this.thanhtien = thanhtien;
	    }

	public String getMasach() {
		return masach;
	}

	public void setMasach(String masach) {
		this.masach = masach;
	}

	public String getTensach() {
		return tensach;
	}

	public void setTensach(String tensach) {
		this.tensach = tensach;
	}

	public Long getGia() {
		return gia;
	}

	public void setGia(Long gia) {
		this.gia = gia;
	}

	public Long getSoluong() {
		return soluong;
	}

	public void setSoluong(Long soluong) {
		this.soluong = soluong;
	}

	public Long getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(Long thanhtien) {
		this.thanhtien = thanhtien;
	}
	 
}
