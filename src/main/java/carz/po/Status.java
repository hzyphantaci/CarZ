package carz.po;

public class Status {
	private int comId;
	private String statusEngine;
	private String statusFacade;
	private String statusAC;
	private String statusInside;
	private String statusBrake;
	private String statusElectricals;
	private String statusTyre;
	private String statusCell;
	private String statusSeat;
	private String statusAll;
	public Status() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Status(int comId, String statusEngine, String statusFacade,
			String statusAC, String statusInside, String statusBrake,
			String statusElectricals, String statusTyre, String statusCell,
			String statusSeat, String statusAll) {
		super();
		this.comId = comId;
		this.statusEngine = statusEngine;
		this.statusFacade = statusFacade;
		this.statusAC = statusAC;
		this.statusInside = statusInside;
		this.statusBrake = statusBrake;
		this.statusElectricals = statusElectricals;
		this.statusTyre = statusTyre;
		this.statusCell = statusCell;
		this.statusSeat = statusSeat;
		this.statusAll = statusAll;
	}
	@Override
	public String toString() {
		return "Status [comId=" + comId + ", statusEngine=" + statusEngine
				+ ", statusFacade=" + statusFacade + ", statusAC=" + statusAC
				+ ", statusInside=" + statusInside + ", statusBrake="
				+ statusBrake + ", statusElectricals=" + statusElectricals
				+ ", statusTyre=" + statusTyre + ", statusCell=" + statusCell
				+ ", statusSeat=" + statusSeat + ", statusAll=" + statusAll
				+ "]";
	}
	public int getComId() {
		return comId;
	}
	public void setComId(int comId) {
		this.comId = comId;
	}
	public String getStatusEngine() {
		return statusEngine;
	}
	public void setStatusEngine(String statusEngine) {
		this.statusEngine = statusEngine;
	}
	public String getStatusFacade() {
		return statusFacade;
	}
	public void setStatusFacade(String statusFacade) {
		this.statusFacade = statusFacade;
	}
	public String getStatusAC() {
		return statusAC;
	}
	public void setStatusAC(String statusAC) {
		this.statusAC = statusAC;
	}
	public String getStatusInside() {
		return statusInside;
	}
	public void setStatusInside(String statusInside) {
		this.statusInside = statusInside;
	}
	public String getStatusBrake() {
		return statusBrake;
	}
	public void setStatusBrake(String statusBrake) {
		this.statusBrake = statusBrake;
	}
	public String getStatusElectricals() {
		return statusElectricals;
	}
	public void setStatusElectricals(String statusElectricals) {
		this.statusElectricals = statusElectricals;
	}
	public String getStatusTyre() {
		return statusTyre;
	}
	public void setStatusTyre(String statusTyre) {
		this.statusTyre = statusTyre;
	}
	public String getStatusCell() {
		return statusCell;
	}
	public void setStatusCell(String statusCell) {
		this.statusCell = statusCell;
	}
	public String getStatusSeat() {
		return statusSeat;
	}
	public void setStatusSeat(String statusSeat) {
		this.statusSeat = statusSeat;
	}
	public String getStatusAll() {
		return statusAll;
	}
	public void setStatusAll(String statusAll) {
		this.statusAll = statusAll;
	}

}
