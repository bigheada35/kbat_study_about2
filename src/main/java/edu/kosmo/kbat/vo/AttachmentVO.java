package edu.kosmo.kbat.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class AttachmentVO {
	
	private int attachment_id;
	private String attachment_name;
	private int board_id;
	
}
