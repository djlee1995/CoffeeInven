package coffee;

import java.util.Date;

public class BoardDTO {
	
	private int pidx, ridx;
	private String title, content, file_img, file_mov, writer;
	private Date reg_dtime;
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public BoardDTO(int pidx, String content, String writer) {
		super();
		this.pidx = pidx;
		this.content = content;
		this.writer = writer;
	}


	public BoardDTO(String title, String content, String file_img, String file_mov, String writer) {
		super();
		this.title = title;
		this.content = content;
		this.file_img = file_img;
		this.file_mov = file_mov;
		this.writer = writer;
	}

	public int getPidx() {
		return pidx;
	}
	public void setPidx(int pidx) {
		this.pidx = pidx;
	}
	public int getRidx() {
		return ridx;
	}
	public void setRidx(int ridx) {
		this.ridx = ridx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFile_img() {
		return file_img;
	}
	public void setFile_img(String file_img) {
		this.file_img = file_img;
	}
	public String getFile_mov() {
		return file_mov;
	}
	public void setFile_mov(String file_mov) {
		this.file_mov = file_mov;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_dtime() {
		return reg_dtime;
	}
	public void setReg_dtime(Date reg_dtime) {
		this.reg_dtime = reg_dtime;
	}

}
