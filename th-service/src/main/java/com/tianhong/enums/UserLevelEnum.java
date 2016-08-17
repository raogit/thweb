/**  
 * @Title: UserLevelEnum.java
 * @Package com.lit.enums
 * @Description: 描述
 * @author raowenxing
 * @date 2016-6-7 下午3:24:11
 */
package com.tianhong.enums;

/**
 * ClassName: UserLevelEnum
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-6-7 下午3:24:11
 */
public enum UserLevelEnum {
	ZERO((byte) 0, (byte) 1), ONE((byte) 1, (byte) 2), TWO((byte) 2, (byte) 3), THREE((byte) 3, (byte) 4), FORE(
			(byte) 4, (byte) 5), FIRE((byte) 5, (byte) 6), SIX((byte) 6, (byte) 7), SEVEN((byte) 7, (byte) 8);
	private byte parentLevel;
	private byte userLevel;

	private UserLevelEnum(byte parentLevel, byte userLevel) {
		this.parentLevel = parentLevel;
		this.userLevel = userLevel;
	}

	public static byte getUserLevel(byte parentLevel) {
		for (UserLevelEnum level : UserLevelEnum.values()) {
			if (level.getParentLevel() == parentLevel) {
				return level.getUserLevel();
			}
		}
		return 0;
	}

	public static byte getParentLevel(byte userLevel) {
		for (UserLevelEnum level : UserLevelEnum.values()) {
			if (level.getUserLevel() == userLevel) {
				return level.getParentLevel();
			}
		}
		return -1;
	}

	public byte getParentLevel() {
		return parentLevel;
	}

	public void setParentLevel(byte parentLevel) {
		this.parentLevel = parentLevel;
	}

	public byte getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(byte userLevel) {
		this.userLevel = userLevel;
	}

}
