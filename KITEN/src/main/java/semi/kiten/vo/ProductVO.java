package semi.kiten.vo;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO {
	
	private int		p_number;
	private String	p_name;
	private int		p_stock;
	private int		p_price;
	private int		p_state;
	private String	p_brand;
	private String	p_weight;
	private String	categoryname;
	private String	p_shortcontent;
	private String	p_time;
	private String	p_storage;
	private String	p_due;
	private String	p_list;
	private String	p_allergy;
	private String	p_list_fname;
	private String	p_list_realfname;
	private long	p_list_fsize;
	private String	p_detail_fname;
	private String	p_detail_realfname;
	private long	p_detail_fsize;
	private String	p_registerdate;
	

	MultipartFile p_list_image;
	MultipartFile p_detail_image;
	
	public MultipartFile getP_list_image() {
		return p_list_image;
	}
	public void setP_list_image(MultipartFile file) {
		this.p_list_image = file;
		
		this.p_list_fname = file.getOriginalFilename();
		this.p_list_fsize = file.getSize();
		
		UUID uuid = UUID.randomUUID();
		this.p_list_realfname = uuid.toString()+"_"+p_list_fname;
		
		// 업로드된 파일이 있는 경우
		if (!file.isEmpty()) {
			File f = new File("C:\\semiProject_KITEN\\KITEN\\src\\main\\webapp\\resources\\upload\\"+ p_list_realfname);
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대 경로로 수정하기
			try {
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public MultipartFile getP_detail_image() {
		return p_detail_image;
	}
	public void setP_detail_image(MultipartFile file) {
		this.p_detail_image = file;
		
		this.p_detail_fname = file.getOriginalFilename();
		this.p_detail_fsize = file.getSize();
		
		UUID uuid = UUID.randomUUID();
		this.p_detail_realfname = uuid.toString()+"_"+p_detail_fname;
		
		// 업로드된 파일이 있는 경우
		if (!file.isEmpty()) {
			File f = new File("C:\\semiProject_KITEN\\KITEN\\src\\main\\webapp\\resources\\upload\\"+ p_detail_realfname);
			// 파일 저장 위치를 추후에 서버 경로를 얻어서 상대 경로로 수정하기
			try {
				file.transferTo(f);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_stock() {
		return p_stock;
	}
	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_state() {
		return p_state;
	}
	public void setP_state(int p_state) {
		this.p_state = p_state;
	}
	public String getP_brand() {
		return p_brand;
	}
	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}
	public String getP_weight() {
		return p_weight;
	}
	public void setP_weight(String p_weight) {
		this.p_weight = p_weight;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getP_shortcontent() {
		return p_shortcontent;
	}
	public void setP_shortcontent(String p_shortcontent) {
		this.p_shortcontent = p_shortcontent;
	}
	public String getP_time() {
		return p_time;
	}
	public void setP_time(String p_time) {
		this.p_time = p_time;
	}
	public String getP_storage() {
		return p_storage;
	}
	public void setP_storage(String p_storage) {
		this.p_storage = p_storage;
	}
	public String getP_due() {
		return p_due;
	}
	public void setP_due(String p_due) {
		this.p_due = p_due;
	}
	public String getP_list() {
		return p_list;
	}
	public void setP_list(String p_list) {
		this.p_list = p_list;
	}
	public String getP_allergy() {
		return p_allergy;
	}
	public void setP_allergy(String p_allergy) {
		this.p_allergy = p_allergy;
	}
	public String getP_list_fname() {
		return p_list_fname;
	}
	public void setP_list_fname(String p_list_fname) {
		this.p_list_fname = p_list_fname;
	}
	public String getP_list_realfname() {
		return p_list_realfname;
	}
	public void setP_list_realfname(String p_list_realfname) {
		this.p_list_realfname = p_list_realfname;
	}
	public long getP_list_fsize() {
		return p_list_fsize;
	}
	public void setP_list_fsize(int p_list_fsize) {
		this.p_list_fsize = p_list_fsize;
	}
	public String getP_detail_fname() {
		return p_detail_fname;
	}
	public void setP_detail_fname(String p_detail_fname) {
		this.p_detail_fname = p_detail_fname;
	}
	public String getP_detail_realfname() {
		return p_detail_realfname;
	}
	public void setP_detail_realfname(String p_detail_realfname) {
		this.p_detail_realfname = p_detail_realfname;
	}
	public long getP_detail_fsize() {
		return p_detail_fsize;
	}
	public void setP_detail_fsize(int p_detail_fsize) {
		this.p_detail_fsize = p_detail_fsize;
	}
	public String getP_registerdate() {
		return p_registerdate;
	}
	public void setP_registerdate(String p_registerdate) {
		this.p_registerdate = p_registerdate;
	}
	

	
}
