package carz.po;

public class StatusPO {
    private int comId;
    private String statusEngine;
    private String statusFacade;
    private String statusAc;
    private String statusInside;
    private String statusBrake;
    private String statusElectricals;
    private String statusTyre;
    private String statusCell;
    private String statusSeat;
    private String statusAll;
    
	public StatusPO() {
		super();
	}
	public StatusPO(int comId, String statusEngine, String statusFacade,
			String statusAc, String statusInside, String statusBrake,
			String statusElectricals, String statusTyre, String statusCell,
			String statusSeat, String statusAll) {
		super();
		this.comId = comId;
		this.statusEngine = statusEngine;
		this.statusFacade = statusFacade;
		this.statusAc = statusAc;
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
		return "StatusPO [comId=" + comId + ", statusEngine=" + statusEngine
				+ ", statusFacade=" + statusFacade + ", statusAc=" + statusAc
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
	public String getStatusAc() {
		return statusAc;
	}
	public void setStatusAc(String statusAc) {
		this.statusAc = statusAc;
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
