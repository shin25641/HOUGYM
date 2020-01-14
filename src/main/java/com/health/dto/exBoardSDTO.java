package com.health.dto;


public class exBoardSDTO {
private String Link;
private int Part;

public String getExSLink() {
	return Link;
}
public void setExSLink(String exSLink) {
	this.Link = exSLink;
}
public int getExSPart() {
	return Part;
}
public void setExSPart(int exSPart) {
	this.Part = exSPart;
}
@Override
public String toString() {
	return "exBoardSDTO [Link=" + Link + ", Part=" + Part + "]";
}

}
