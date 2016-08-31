/**
 * 
 */
package com.tianhong.enums;

/**
 * @author Administrator
 *
 */
public enum StoreCategory {

	PRODUCT((byte) 0, "商品"), NEW_ACTIVITY((byte) 1, "最新活动"), NEW_PRODUCT((byte) 2, "新品上市"), PRE_BUY((byte) 3,
			"预购专区"), SERVICE((byte) 4, "便民服务"), JOIN((byte) 5, "加盟招聘"), ABOUT((byte) 6, "关于我们");
	private byte type;
	private String name;

	private StoreCategory(byte type, String name) {
		this.type = type;
		this.name = name;
	}

	public static String getName(byte type) {
		for (StoreCategory storeCategory : StoreCategory.values()) {
			if (storeCategory.getType() == type) {
				return storeCategory.getName();
			}
		}
		return "";
	}

	public byte getType() {
		return type;
	}

	public void setType(byte type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
