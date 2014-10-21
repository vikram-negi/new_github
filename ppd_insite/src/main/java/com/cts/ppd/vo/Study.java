package com.cts.ppd.vo;

public class Study {

	String studyId;
	String sponsorId;
	String protocolId;

	/**
	 * @return the studyId
	 */
	public String getStudyId() {
		return studyId;
	}

	/**
	 * @param studyId
	 *            the studyId to set
	 */
	public void setStudyId(String studyId) {
		this.studyId = studyId;
	}

	/**
	 * @return the sponsorId
	 */
	public String getSponsorId() {
		return sponsorId;
	}

	/**
	 * @param sponsorId
	 *            the sponsorId to set
	 */
	public void setSponsorId(String sponsorId) {
		this.sponsorId = sponsorId;
	}

	/**
	 * @return the protocolId
	 */
	public String getProtocolId() {
		return protocolId;
	}

	/**
	 * @param protocolId
	 *            the protocolId to set
	 */
	public void setProtocolId(String protocolId) {
		this.protocolId = protocolId;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Study [strudyId=");
		builder.append(studyId);
		builder.append(", sponsorId=");
		builder.append(sponsorId);
		builder.append(", protocolId=");
		builder.append(protocolId);
		builder.append("]");
		return builder.toString();
	}

}
